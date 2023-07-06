<script setup lang="ts">
import {ref, reactive, onMounted, computed} from 'vue'
import { defineComponent } from 'vue'
const pic=ref([
  {
    // path:"/src/image/10.png"
    path:"src/image/3.1.jpg"
  },
  {
    path:"/src/image/3.2.jpg"
  },
  {
    path:"/src/image/3.3.jpg"
  },
  {
    path:"/src/image/3.4.jpg"
  }
])

import { useRouter } from 'vue-router'
const router=useRouter();

function goto(par:string){
    router.push({ name: 'cont', params: { data:JSON.stringify({"name":par}) } });
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

//从后端获取数据
import axios from 'axios';
let params = ref()
axios({
  url: 'http://localhost:8080/',
  method: 'get',
  data: {},
  headers: {'content-type': 'application/json;charset=utf-8'},
  sslmode: 'none'
}).then(res => {
  params.value = res.data
  // isLoaded.value = true
  // console.log(params.value)
})

let xs = ['"买年货":"中国的年俗文化源远流长，全国各地衍生出纷繁多样的过年习俗，南北迥异，各具特色。虽然各地习俗不尽相同，但是备年货、送年礼却是几乎全国上下的“过年必备”。置办年货，包括吃的、穿的、戴的、用的、贴的（年红）、送的（拜年）礼物等等，统名曰之“年货”，而把采购年货的过程称之为“办年货”。办年货是中国人过春节的一项重要活动。民间谚语称“腊月二十六 ，割年肉”，说的是这一天主要筹备过年的肉食。将“割年肉”放入年谣，是因为农耕社会经济不发达，人们只有在一年一度的年节中才能吃到肉，故此称为“年肉”。"',
  '"祭灶":"民间祭灶，源于古人拜火习俗。如《释名》中说：“灶。造也，创食物也。”灶神的职责就是执掌灶火，管理饮食，后来扩大为考察人间善恶，以降福祸。祭灶在中国民间有几千年历史了，灶神信仰是中国百姓对“衣食有余”梦想追求的反映."',
  '"扫尘":"在民间，新年前夕有“腊月二十四，扫尘（亦称扫屋）的习俗。民谚称“二十四，扫房子”。民间称做“扫尘日”。扫尘就是年终大扫除，家家户户都要打扫环境，清洗各种器具，拆洗被褥窗帘，洒扫六闾庭院，掸拂尘垢蛛网，疏浚明渠暗沟。到处洋溢着欢欢喜喜搞卫生、干干净净迎新春的欢乐气氛。按民间的说法：因“尘”与“陈”谐音，年前扫尘有“除陈布新”的涵义。扫尘用意是要把一切穷运、晦气统统扫出门，以祈来年清吉。"',
  '"赛龙舟":"当时楚国人因舍不得贤臣屈原死去，于是有许多人划船追赶拯救。他们争先恐后，追至洞庭湖时不见踪迹，是为龙舟竞渡之起源，后每年五月五日划龙舟以纪念之。借划龙舟驱散江中之鱼，以免鱼吃掉屈原的尸体。竞渡之习，盛行于吴、越、楚。清乾隆二十九年台湾开始有龙舟竞渡，当时台湾知府蒋元君曾在台南市法华寺半月池主持友谊赛。现代台湾每年五月五日都举行龙舟竞赛。香港有竞渡，英国人也有仿效中国人作法，组织鬼佬队，进行竞赛活动。"',
  '"香桥会":"在江苏宜兴，有七夕香桥会习俗。每年七夕，人们都赶来参与，搭制香桥。所谓香桥，是用各种粗长的裹头香（以纸包着的线香）搭成的长四五米、宽约半米的桥梁，装上栏杆，于栏杆上扎上五色线制成的花装饰。入夜，人们祭祀双星、乞求福祥，然后将香桥焚化，象征着双星已走过香桥，欢喜地相会。这香桥是由传说中的鹊桥传说衍化而来的。"',
  '"吃饺子":"在中国北方许多地区，每年冬至日，有吃饺子的习俗。中国北方地区在这天要吃饺子因为饺子有“消寒”之意，至今民间还流传着“冬至不端饺子碗，冻掉耳朵没人管”的民谚。"',
  '"游百病":"此种习俗，盛行于贵州地区的端午习俗。佩香囊：端午节小孩佩香囊，不但有避邪驱瘟之意，而且有襟头点缀之风。香囊内有朱砂、雄黄、香药，外包以丝布，清香四溢:再以五色丝线弦扣成索，作各种不同形状，结成一串，形形色色，玲珑夺目。"',
]
let ys = ['"年糕":"年糕属于农历新年的应时食品，有红、黄、白三色，象征金银。一种用黏性大的糯米或米粉蒸成的糕，在南方有过年吃年糕的习惯，甜甜的粘粘的年糕，象征新一年生活甜蜜蜜，步步高。春节吃年糕，“义取年胜年，籍以祈岁稔。”寓意万事如意年年高。年糕的种类有：北方有白糕饦、黄米糕；江南有水磨年糕；西南有糯粑粑；台湾有红龟糕。北方年糕有蒸、炸二种，南方年糕除蒸、炸外，尚有片炒、汤煮诸法。"',
  '"春卷":"春卷也叫春饼，立春吃春饼是中国一种古老风俗。晋代已有“五芋盘”即“春盘”，是将春饼与菜同置一盘之内。唐宋时立春吃春饼之风渐盛，皇帝并以之赐近臣百官，当时的春盘极为讲究：“翠缕红丝，金鸡玉燕，备极精巧，每盘直万钱”。民间也用以互相馈赠。\n春饼发展至今，形制随地而异，食用时间也因地而别。有烙制、也有蒸制；或大如团扇，或小如荷甲。"',
  '唐朝的元宵节食是面蚕。王仁裕（八八○─九五六）的《开元天宝遗事》记载：“每岁上元，都人造面蚕的习俗到宋代仍有遗留，但不同的应节食品则较唐朝更为丰”。吕原明的《岁时杂记》就提到：“京人以绿豆粉为科斗羹，煮糯为丸，糖为臛，谓之圆子盐豉。捻头杂肉煮汤，谓之盐豉汤，又如人日造蚕，皆上元节食也”。宋朝郑望之的《膳夫录》才记载了：“汴中节食，上元油锤”。油锤的制法，据《太平广记》引《卢氏杂说》中一则“尚食令”的记载，类似后代的炸元宵。也有人美其名为“油画明珠”。\n到南宋时，就有所谓“乳糖圆子”的出现，这应该就是汤圆的前身了。\n清朝康熙年间，御膳房特制的“八宝元宵”，是名闻朝野的美味。马思远则是当时北京城内制元宵的高手。他制作的滴粉元宵远近驰名。符曾（生于一六八八）的《上元竹枝词》云：“桂花香馅襄胡桃，江米如珠井水淘。见说马家滴粉好，试灯风里卖元宵”。诗中所咏的，就是鼎鼎大名的马家元宵。\n近千年来，元宵的制作日见精致。光就面皮而言，就有江米面、粘高粱面、黄米面和苞榖面。馅料的内容更是甜咸荤素、应有尽有。甜的有所谓桂花白糖、山楂白糖、什锦、豆沙、芝麻、花生等。咸的有猪油肉馅，可以作油炸炒元宵。素的有芥、蒜、韭、姜组成的五辛元宵，有表示勤劳、长久、向上的意思。\n制作的方法也南北各异。北方的元宵多用箩滚手摇的方法，南方的汤圆则多用手心揉团。元宵可以大似核桃、也有小似黄豆，煮食的方法有带汤、炒吃、油氽、蒸食等。不论有无馅料，都同样的美味可口。元宵已成了一种四时皆备的点心小吃，随时都可以来一碗解解馋。',
  '"腊八粥":"腊八节腊八粥，又称“七宝五味粥”、“佛粥”、“大家饭”等，是一种由多样食材熬制而成的粥。腊八这一天喝腊八粥这一习俗的来历，是和佛陀成佛的故事有关的。因此清代苏州文人李福曾有诗云：“腊月八日粥，传自梵王国，七宝美调和，五味香糁入。”腊八节喝腊八粥的习俗来源于佛教。十二月初八这天是佛祖释迦牟尼成道之日，古印度人为了不忘佛祖成道以前所受的苦难，也为了纪念佛祖在十二月初八悟道成佛，便在这天以吃杂拌粥作为纪念。自从佛教从古印度传入中国，各寺院都用香谷和果实做成粥来赠送给门徒和善男信女们。这天，各寺院举行法会，效法佛陀成道前牧女献乳糜的典故，用香谷和果实等煮粥供佛，名为腊八粥。也有的寺院于腊月初八以前由僧人持钵，沿街化缘，将收集的米、栗、枣、果仁等煮成腊八粥散发给穷人。大家认为吃了可以得佛陀保佑， 所以贫穷人家称它“佛粥”。一般，寺院的佛粥既美味且量多，以满足来寺院参加纪念法会的善男信女需要。有些信众专门奔“粥”而来，认为腊八供养佛陀的粥吉祥，不仅自己食用，还带回家供家人享用。年复一年，寺院做腊八粥的传统便广泛传播到民间，由此在我国北方地区逐渐形成了过“腊八节”喝腊八粥的风俗。"',
  '"腊八醋":"腊八醋，传统腊八节习俗。在腊八这天用醋泡大蒜的习俗，名“腊八醋”。腊八醋，要泡到大年初一，初一吃饺子，要吃素饺子，取一年素素净净之意，蘸腊八醋吃，别有一番滋味是。“腊八醋”不仅味道醇正，而且久放不坏。"',
  '"腊八蒜":"腊八蒜一到腊月初八，过年的气氛一天赛过一天，华北大部分地区在腊月初八这天有用醋泡蒜的习俗，叫腊八蒜。 [13] 腊八蒜就是在阴历腊月初八的这天来泡制蒜，是华北地区的一个习俗。其材料就是醋和大蒜瓣儿。泡腊八蒜是一道主要流行于华北地区的传统小吃，是腊八节的节日食俗。腊八蒜材料其实非常简单，就是醋和大蒜瓣儿。做法也是极其简单，将剥了皮的蒜瓣儿放到一个可以密封的罐子，瓶子之类的容器里面，然后倒入醋，封上口放到一个冷的地方。慢慢地，泡在醋中的蒜就会变绿，最后会变得通体碧绿的，如同翡翠碧玉。"',
  '"饺子":"饺子，是中国北方民间的主食和地方小吃，也是年节食品，过节吃饺子的习俗主要存在于北方地区。三十晚上北方人不吃饺子，会觉得没有过年的气氛。北方一些山区还有初一到初五每天早上吃饺子的习俗。 吃饺子是表达人们辞旧迎新之际祈福求吉愿望的特有方式。晚上11时到第二天凌晨1时为子时，因“饺子”与“交子”同音，所以取“更岁交子”之意，吃饺子就意味着更岁交子，过春节吃饺子被认为是大吉大利。\n饺子饺子，是中国北方民间的主食和地方小吃，也是年节食品，过节吃饺子的习俗主要存在于北方地区。三十晚上北方人不吃饺子，会觉得没有过年的气氛。北方一些山区还有初一到初五每天早上吃饺子的习俗。\n 吃饺子是表达人们辞旧迎新之际祈福求吉愿望的特有方式。晚上11时到第二天凌晨1时为子时，因“饺子”与“交子”同音，所以取“更岁交子”之意，吃饺子就意味着更岁交子，过春节吃饺子被认为是大吉大利。"',
]
let qy = ['元宵节是中国的传统节日，元宵节习俗的形成有一个较长的过程，根源于民间开灯祈福古俗。开灯祈福通常在正月十四夜便开始“试灯”，十五日夜为“正灯”，民间要点灯盏，又称“送灯盏”，以进行祭神祈福活动。 东汉佛教文化的传入，对于形成元宵节习俗也有着重要的推动意义，汉明帝永平年间，汉明帝为了弘扬佛法，下令正月十五夜在宫中和寺院“燃灯表佛”。因此正月十五夜燃灯的习俗随着佛教文化影响的扩大及后来道教文化的加入逐渐在中国扩展开来。 南北朝时，元宵张灯渐成风气。梁武帝笃信佛教，其宫中正月十五大张灯火。唐朝时，中外文化交流更为密切，佛教大兴，仕官百姓普遍在正月十五这一天“燃灯供佛”，于是佛家灯火遍布民间。从唐代起，元宵张灯即成为法定之事。 农历正月十五是元宵节，又称上元节、元夜、灯节。正月是农历的元月，古人称夜为“宵”，所以称正月十五为“元宵节”。 随着社会和时代的变迁，元宵节的风俗习惯早已有了较大的变化，但仍是中国民间传统节日。元宵在早期节庆形成过程之时，只称正月十五、正月半或月望，隋以后称元夕或元夜。唐初受了道教的影响，又称上元，唐末才偶称元宵。但自宋以后也称灯夕。到了清朝，就另称灯节。 在国外，元宵也以The Lantern Festival而为人所知。正月十五这一天晚上，中国人素有赏花灯、吃汤圆、吃元宵、猜灯谜、放烟花等一系列传统民俗活动。',
  '女娲炼石补天之日称为天穿日，众说纷纭，华人各地区正月初七、初九、初十、十九、二十、廿一、廿三、廿五日不定。宋代以后，几乎都在正月二十日。有些客家人认为是正月初九天公生之后十日，即正月十九。 明代杨慎《词品》云：“宋以前，正月二十三日为天穿日，言女娲氏以是日补天，俗以煎饼置屋上，名曰补天穿，今其俗废久。”但各地也有以正月二十为天穿日的，也有人说女娲补天，由正月二十日到正月廿三日，补了三日才补成。卢仝称：“引日月之针，五星之缕把天补。补了三日不肯归婿家。” 最早记载天穿节的资料是东晋王嘉所撰《拾遗记》，类书《渊鉴类函》卷一三〈岁时部〉记载：“补天穿。《拾遗记》云：‘江东俗称正月二十日为天穿日，以红缕系煎饼置屋上，曰补天穿。’相传女娲氏以是日补天故也。”宋代李觏《正月二十日俗号天穿日以煎饼置屋上谓之补天感而为诗》说：“娲皇没有几多年，夏伏冬愆任自然。只有人间闲妇女，一枚煎饼补天穿。” 客家人、漳州闽南人称补天之日为正月二十日。每逢“天穿日”，客家人便会放下工作，“郎不许耕田、妹不许织布”，共唱山歌。一方面给辛苦工作的自己忙里偷闲，也让大地休养生息；从现代环保概念来看，适度给予大自然修补恢复的时间，中华民国客家委员会在广征客家人士意见后，宣布将把具客家独特性的“天穿日”（农历正月二十），订为中华民国“全国客家日”[3]。 泉州三邑闽南人，如泉安、惠安、南安，与台湾的鹿港、安平都有在五月初五日吃“煎堆”，也是纪念女娲补天之意。',
  '龙抬头 农历二月初二 ，俗称青龙节，传说是龙抬头的日子，它是中国农村的一个传统节日，名曰“龙头节”。俗话说：“二月二，龙抬头，大家小户使耕牛。”此时，阳气回升，大地解冻，春耕将始，正是运粪备耕之际。传说此节起源于三皇之首伏羲氏时期。伏羲氏“重农桑，务耕田”，每年二月二这天，“皇娘送饭，御驾亲耕”，自理一亩三分地。后来黄帝、唐尧、虞舜、夏禹纷纷效法先王。到周武王，不仅沿袭了这一传统作法，而且还当作一项重要的国策来实行。于二月初二，举行重大仪式，让文武百官都亲耕一亩三分地，这便是龙头节的历史传说。又一说为武则天废唐立周称帝，惹得玉帝大怒，命令龙王三年不下雨。龙王不忍生灵涂炭，偷偷降了一场大雨。玉帝得知便将龙王打出天宫，压于大山之下，黎民百姓感龙王降雨深恩，天天向天祈祷，最后感动了玉皇大帝，于二月初二将龙王释放，于是便有了“二月二，龙抬头”之说。实际上是过去农村水利条件差，农民非常重视春雨，庆祝“龙头节”，以示敬龙祈雨，让老天保佑丰收，从其愿望来说是好的，故“龙头节”流传至今！',
  '上巳节有起源于兰汤辟邪的巫术活动之说，用兰汤以驱除邪气。兰草被用作灵物，有香气袭人的特点，古人在举行重大祭神仪式前，须先进行斋戒，其中包括当时最好的洗浴方式“兰汤沐浴”。古时代上巳节是“祓禊”的日子，有在水滨举行祓除不祥的祭礼习俗。上巳节由来久远，有历史，乏记载。“上巳”一词最早收录在汉代的文学作品里。魏晋以后，上巳节改为三月三，逐渐成为水边饮宴、郊外游春的节日。',
  '春秋时已出亡多年的晋国公子重耳回国即位[即晋文公]，封赏随其逃亡的臣子，唯独漏掉了介子推。介子推于是携老母隐居绵山[今山西省介休市东南]。晋文公得知后欲加封赏，寻至绵山，找不到他，便想烧山逼他出来。但介子推不愿当官，坚持不出，结果母子二人俱被烧死。为了纪念介子推，晋文公将绵山改为“介山”，立祠祭祀介子推，并把烧山的这一天定为寒食节，全国禁动烟火，只吃冷食。后来便形成了在这天寒食、扫墓的风俗。',
  '七夕的“牛郎织女”来源于人们对自然天象的崇拜，上古时代人们将天文星区与地理区域相互对应，这个对应关系就天文来说，称作“分星”，就地理来说，称作“分野”。相传每年七月初七，牛郎织女会于天上的鹊桥相会。 七夕节起始于上古，普及于西汉，鼎盛于宋代。在七夕的众多民俗当中，有些逐渐消失，但还有相当一部分被人们延续了下来。',
  '下元节的来历与道教有关。道门有三官大帝，天官大帝、地官大帝、水官大帝、谓天官赐福，地官赦罪，水官解厄。三官的诞生日分别为农历的正月十五日、七月十五日、十月十五日，这三天被称为“上元节”、“中元节”、“下元节”。下元节，就是“下元三品解厄水官洞阴大帝”的诞生日，亦是为解厄之辰，俗谓是日，水官根据考察，录奏天廷，为人解厄。《中华风俗志》也有记载：“十月望为下元节，俗传水宫解厄之辰，亦有持斋诵经者。”这一天，道观做道场，民间则祭祀亡灵，并祈求下元水官排忧解难，号称谢平安。古代又有朝廷是日禁屠及延缓死刑执行日期的规定。此外，在民间，下元节这一日，还有民间工匠祭炉神的习俗，民间奉祀的炉神通常是太上老君，大概源于道教用炉炼仙丹，而太上老君被视为仙丹之祖。一说水官为太上老君，老君化炁为下元水官之神，主宰水域，故加以奉祀。',
]

import { ElMessage, ElMessageBox } from 'element-plus'
import type { Action } from 'element-plus'
const open = (name, title) => {
  const a = 0; // 范围起点
  const b = 6; // 范围终点
  let randomIndex = Math.floor(Math.random() * (b - a + 1)) + a;
  let s_i = ""
  if (name == 'xs'){
    s_i = xs[randomIndex]
  }else if (name == 'ys'){
    s_i = ys[randomIndex]
  }else if (name == 'qy'){
    s_i = qy[randomIndex]
  }
  ElMessageBox.alert(s_i, title, {
    // if you want to disable its autofocus
    // autofocus: false,
    confirmButtonText: 'OK',
    callback: (action: Action) => {
      ElMessage({
        type: 'info',
        message: `action: ${action}`,
      })
    },
  })
}

function getmonthpic(mouth){
  let tmp = "/src/image/month/"+mouth+".jpg"
  console.log(tmp)
  return tmp.toString()
}
</script>

<template>
  <!-- 幻灯片 -->
  <el-row style="background-color:rgb(252,248,247);" > 
    <el-col :span="24" class="block text-center" >
      <!-- <span class="demonstration"><h1 style="color: red;">中 华 传 统 节 日 宣 传 网 站</h1></span> -->
      <el-carousel  style="height:600px;"  autoplay>
        <el-carousel-item v-for="p in pic" :key="pic" style="height: 800px;">
          <el-image :src="p.path" fit="cover" style=" width: 100vw;"/>
        </el-carousel-item>
      </el-carousel>
    </el-col>
  </el-row>
<!-- 习俗饮食起源 -->
  <!-- <el-row :gutter="0" style="padding: 20px;box-shadow: 0 4px 6px 2px rgba(0, 0, 0, 0.1), 0 -4px 6px -1px rgba(0, 0, 0, 0.1);"> -->
    <el-row style="background-color:rgb(252,248,247);">
    <el-row style="width: 100%;">
      <el-col :span="10"></el-col>
      <el-col :span="4" style="text-align: center; margin-bottom: 25px;margin-top: 30px;">
        <h3>&nbsp;今日随机签</h3>
      </el-col>
      <el-col :span="10"></el-col>
    </el-row>
    <el-row style="width: 100%;margin-bottom: 20px;">
      <el-col  :span="8" style="display: flex; justify-content: center; height: 300px; " >
        <el-card class="card-hover" @click="open('xs','习俗')" :body-style="{ padding: '20px' }"   shadow="hover" style="background-color: rgb(255,255,255);height: 300px; width: 250px; margin-left: 100px;">
          <img
            src="/src/image/14.jpg"
            class="image"
            style="width:100%;height: 230px; object-fit: cover "
          />
          <div style="display: flex; justify-content: center; margin-top: 13px;">
            <span>习俗</span>
            <!-- <div class="bottom">
              <time class="time">{{ 'currentDate' }}</time>
              <el-button text class="button">Operating</el-button>
            </div> -->
          </div>
        </el-card>
      </el-col>
      <el-col  :span="8" style=" display: flex; justify-content: center; height: 300px;">
        <el-card class="card-hover" @click="open('ys','饮食')" :body-style="{ padding: '20px' }"  shadow="hover" style="background-color: rgb(255,255,255);height: 300px; width: 250px; ">
          <img
            src="/src/image/13.jpg"
            class="image"
            style="width:100%;height: 230px; object-fit: cover "
          />
          <div style="display: flex; justify-content: center; margin-top: 13px;">
            <span>饮食</span>
            <!-- <div class="bottom">
              <time class="time">{{ 'currentDate' }}</time>
              <el-button text class="button">Operating</el-button>
            </div> -->
          </div>
        </el-card>
      </el-col>
      <el-col  :span="8" style=" display: flex; justify-content: center; height: 300px;">
        <el-card class="card-hover" @click="open('qy','起源')" :body-style="{ padding: '20px' }"  shadow="hover" style="background-color: rgb(255,255,255); height: 300px; width: 250px; margin-right: 100px;">
          <img
            src="src/image/15.jpg"
            class="image"
            style="width:100%;height: 230px; object-fit: cover "
          />
          <div style="display: flex; justify-content: center; margin-top: 13px;">
            <span>起源</span>
            <!-- <div class="bottom">
              <time class="time">{{ 'currentDate' }}</time>
              <el-button text class="button">Operating</el-button>
            </div> -->
          </div>
        </el-card>
      </el-col> 
    </el-row>
  </el-row>

      <!-- 月份 -->
<el-row v-for="(f, month) in params"  :key="month" style="background-color:rgb(252,248,247);">
  <el-col :span="24" v-if="month%2==1" style="display: flex; height: 300px; margin-top: 8%; position: relative;">
    <el-card :body-style="{ padding: '20px' }" shadow="never" indicator-position="relative" z-index="1" class="card"  >
      <el-image :src=getmonthpic(month+1) fit="fill" style="width:60%;height: 75%;"></el-image>
    </el-card>
    <el-card :body-style="{ padding: '20px' }" shadow="always" indicator-position="relative" z-index="2" class="card2" style="position: absolute;  left: 40%; top: -30px;" >
    <el-scrollbar height="260px">
      <el-timeline>
        <el-timeline-item
            v-for="p in f"
            :key="p['name']"
            :timestamp="p['date']"
            placement="top"
          >
          <el-card @click="goto(p['num'])" class="card-hover" style="height: 50px;  display: flex; align-items: center; margin-top: 5%;background-color: rgb(252,248,247);" >
            <p>{{p['name']}}</p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </el-scrollbar>
    </el-card>
  </el-col>

  <el-col :span="24" v-else style="display: flex; height: 300px; margin-top: 5%; position: relative;">
  <el-card :body-style="{ padding: '20px' }" shadow="always" indicator-position="relative" z-index="2" class="card2" style="position: absolute; left: 40%; top: 30px; height: 80%; width: 50%;">
    <el-image :src=getmonthpic(month+1) fit="fill" style="margin-left: 38%;width:60%;height: 75%;"></el-image>
  </el-card>
  <el-card :body-style="{ padding: '20px' }" shadow="never" indicator-position="relative" z-index="1" class="card" style="height: 300px; width: 50%; margin-left:150px;">
    <el-scrollbar height="260px">
      <el-timeline>
        <el-timeline-item v-for="p in f" :key="p['name']" :timestamp="p['date']" placement="top" >
          <el-card @click="goto(p['num'])" class="card-hover" style="height: 50px; display: flex; align-items: center; margin-top: 3%; background-color: rgb(252,248,247);;">
            <p>{{p['name']}}</p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </el-scrollbar>
  </el-card>
</el-col>
</el-row>




</template>

<style scoped>

.el-carousel__item h3 {
  display: flex;
  color:white;
  opacity: 0.75;
  line-height: 300px;
  margin: 0;
}
.scrollbar-demo-item {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 50px;
  margin: 10px;
  text-align: center;
  border-radius: 4px;
  background: var(--el-color-primary-light-9);
  color: var(--el-color-primary);
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}
.scrollbar-flex-content {
  display: flex;
}
.scrollbar-demo-item {
  flex-shrink: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 300px;
  height: 200px;
  margin: 10px;
  text-align: center;
  border-radius: 4px;
  background: var(--el-color-danger-light-9);
  color: var(--el-color-danger);
}

.card{
  margin-left:150px;
  /* border:double; */
  width: 50%;
  height: 80%;
}
.card2{
  margin-right:150px;
  /* border:double; */
  width: 50%;
  height: 100%;
}
.enable-background {
  enable-background: new 0 0 1440 126;
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