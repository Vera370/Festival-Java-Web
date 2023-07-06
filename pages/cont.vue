<script setup lang="ts">
import {ref, reactive, onMounted, computed, watch,watchEffect} from 'vue'
import { useRoute, useRouter } from 'vue-router';
import axios from 'axios';
import CryptoJS from 'crypto-js';
const route=useRoute();
let input = JSON.parse(route.params.data)
// console.log(input)
const now_num = input['name']
console.log(typeof now_num)
let last_num = parseInt(now_num)-1
if(last_num==0){
  last_num = 1
}
let next_num = parseInt(now_num)+1
if(next_num==30){
  next_num = 29
}

const router=useRouter();

watchEffect(() => {
    const unwatch = router.afterEach(() => {
      window.location.reload()
      unwatch()
    })
  })
function goto(par:string){
    router.push({ name: 'cont', params: { data:JSON.stringify({"name":par}) }});
}
function goto_home(){
    router.push({ name: 'Home', params: { }});
}
const pic_url = "/src/image/Festival/" + input['name'] +"/1.jpg"
// console.log(pic_url)
let params = ref("0")
let url = 'http://localhost:8080/info?param='+input['name']
console.log(url)

interface Festival {
  num: string;
  month: string;
  name: string;
  date: string;
  intro: string;
  origin: string;
  custom: string;
  diet: string;

}

const KEY = 'QIQIisZHUZHU!!@@';
// 定义一个函数，用于将Base64编码的字符串解密，并转换为Festival对象
function decrypt(data: string): Festival {
  // 将Base64编码的字符串转换为二进制数据
  const bytes = CryptoJS.enc.Base64.parse(data);
  // console.log(bytes);
  // 创建一个WordArray对象，用于指定密钥
  const key = CryptoJS.enc.Utf8.parse(KEY);
  // console.log(key);
  // 使用AES算法对二进制数据进行解密，并指定密钥和输出格式
  const decrypted = CryptoJS.AES.decrypt({ ciphertext: bytes }, key, {
    mode: CryptoJS.mode.ECB,
    padding: CryptoJS.pad.Pkcs7,
  });
  // console.log(decrypted);
  const json = decrypted.toString(CryptoJS.enc.Utf8); 
  // 将JSON字符串解析为Festival对象，并返回结果 
  return JSON.parse(json) as Festival; 
}

function tostrarr(arr){
  const t = ref([])
  for (const item of arr) {
    const tmp = JSON.stringify(item).slice(1, -1)
    const tmp2 = tmp.replace("\\n", '')
    const tmp3 = tmp2.replace(/\n/g, '')
    t.value.push(tmp3)
  }
  return t.value
}

const xs = ref([])
const ys = ref([])

axios({
  url: url,
  method: 'get',
  headers: {'content-type': 'application/json;charset=utf-8'},
  sslmode: 'none'
}).then(res => {
  const data = res.data; 
  // console.log(data);
  // 调用解密函数，得到Festival对象 
  const festival = decrypt(data); 
  // 打印或处理Festival对象，可以根据需要更改
  //  console.log(festival); 
  params.value=festival;
  if ('custom' in params.value){
    // console.log(params.value['custom']);
    const arr = JSON.parse(params.value['custom'])
    xs.value = tostrarr(arr)
  }
  if ('diet' in params.value){
    const arr2 = JSON.parse(params.value['diet'])
    ys.value = tostrarr(arr2)
  }
});



</script>

<template>
  <el-row>
    <!-- <el-col :span="4"></el-col> -->
    <el-col :span="24">
      <el-image style="width: 100vw;height: 100vh" :src="pic_url" fit="fill"/>
    </el-col>
    <!-- <el-col :span="4"></el-col> -->
  </el-row>

  <el-container>
      <el-main :style="{ padding: '30px 30px' }" style="background-color:rgb(252,248,247);">
        <!-- {{ params }} -->
        <h1 style="margin-top: 20px;">{{ params['name'] }}</h1>
        <div v-if="params['date']" class="common-layout">
          <el-container>
            <el-card class="card-hover" shadow="always" style="width: 100%;"> 
            <!-- <el-header><h3>时间</h3></el-header> -->
            <h3 style="margin-bottom: 30px;">时间</h3>
            <el-main >{{ params['date'] }}</el-main>
            </el-card>
          </el-container>
        </div>
        <div v-if="params['intro']" class="common-layout">
          <el-container>
            <el-card class="card-hover" shadow="always" style="width: 100%;"> 
            <!-- <el-header><h3>简介</h3></el-header> -->
            <h3 style="margin-bottom: 30px;">简介</h3>
            <el-main >{{ params['intro'] }}</el-main>
          </el-card>
          </el-container>
        </div>
        <div v-if="params['origin']" class="common-layout">
          <el-container>
            <el-card class="card-hover" shadow="always" style="width: 100%;"> 
            <!-- <el-header><h3>起源</h3></el-header> -->
            <h3 style="margin-bottom: 30px;">起源</h3>
            <el-main>{{ params['origin'] }}</el-main>
          </el-card>
          </el-container>
        </div>
        <div v-if="params['custom']" class="common-layout">
          <el-container>
            <el-card class="card-hover" shadow="always" style="width: 100%;"> 
            <!-- <el-header><h3>习俗</h3></el-header> -->
            <!-- <el-main> {{ params['custom'] }}</el-main> -->
            <h3 style="margin-bottom: 30px;">习俗</h3>
            <el-main>
            <p v-for="i in xs">
              {{ i }}
            </p>
          </el-main>
        </el-card>
          </el-container>
        </div>
        <div v-if="params['diet']" class="common-layout">
          <el-container>
            <el-card  class="card-hover" shadow="always" style="width: 100%;"> 
            <!-- <el-header><h3>饮食</h3></el-header> -->
            <!-- <el-main> {{ params['diet'] }}</el-main> -->
            <h3 style="margin-bottom: 30px;">饮食</h3>
            <el-main>
            <p v-for="i in ys">
              {{ i }}
            </p>
          </el-main>
        </el-card>
          </el-container>
        </div> 
         
      </el-main>
      <el-aside style="width:25% ;background-color:rgb(252,248,247)" >
        <el-card style="height: auto; box-shadow:red;margin: 10px;margin-top: 150px;">
          <h3>便捷链接</h3>
          <el-card class="card-hover" @click="goto_home()" style="height: 50px; display: flex; align-items: center; margin-top: 3%;">
            <p>传统节日首页</p>
          </el-card>
          <el-card class="card-hover" @click="goto(last_num.toString())" style="height: 50px; display: flex; align-items: center; margin-top: 3%;">
            <p>上一个节日</p>
          </el-card>
          <el-card class="card-hover" @click="goto(next_num.toString())" style="height: 50px; display: flex; align-items: center; margin-top: 3%;">
            <p>下一个节日</p>
          </el-card>
        </el-card>
      </el-aside> 
    </el-container>
</template>

<style scoped>
.common-layout{
  margin-top: 50px;
}

@keyframes example {
  0%   {transform: scale(1,1);}
  25%  {transform: scale(1.01,1.01);box-shadow: 0 0 2px 1px #fcd3d3;}
  50%  {transform: scale(1.02,1.02);box-shadow: 0 0 4px 2px #fab6b6;}
  100% {transform: scale(1.03,1.03);box-shadow: 0 0 6px 3px #f89898;}
}
.card-hover:hover{
    /* transition: transform 0.6s; */
    /* transform: scale(0.95,0.95); */
    animation-name: example;
    animation-duration: 0.3s;
    /* animation-iteration-count: 1; */
    animation-fill-mode: both;
}
</style>