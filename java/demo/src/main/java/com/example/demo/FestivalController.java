package com.example.demo.controller;

import com.example.demo.model.Festival;
import com.example.demo.Response.FestivalResponse;
import com.example.demo.repository.FestivalRepository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestBody;
import com.google.gson.Gson;

import java.util.Map;
import java.util.List;
import java.util.Base64;
import java.nio.charset.Charset;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.crypto.Cipher; import javax.crypto.spec.IvParameterSpec; import javax.crypto.spec.SecretKeySpec;

@CrossOrigin(origins = "*")
@RestController
public class FestivalController {

    private Festival[] addFestival(Festival[] array, Festival festival) {
        Festival[] newArray = new Festival[array.length + 1];
        System.arraycopy(array, 0, newArray, 0, array.length);
        newArray[array.length] = festival;
        return newArray;
    }

    private static final String KEY = "QIQIisZHUZHU!!@@";

    private String toJson(Festival festival) {
        // 这里可以使用任何JSON库，如Gson或Jackson
        // 为了简单起见，我直接拼接字符串
        // return "{\"name\":\"" + festival.getName() + "\",\"date\":\"" + festival.getDate() + "\"}";
        Gson gson = new Gson();
        return gson.toJson(festival);
    }

    private String encrypt(String json) throws Exception {
        // 创建一个SecretKeySpec对象，用于指定密钥
        SecretKeySpec secretKeySpec = new SecretKeySpec(KEY.getBytes(), "AES");
        // 创建一个Cipher对象，用于指定加密算法
        Cipher cipher = Cipher.getInstance("AES");
        // 初始化Cipher对象，设置为加密模式，并传入密钥
        cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);
        // 对JSON字符串进行加密，得到二进制数据
        byte[] encrypted = cipher.doFinal(json.getBytes());
        // 将二进制数据转换为Base64编码，并返回字符串
        return Base64.getEncoder().encodeToString(encrypted);
    }

    // private byte[] encrypt(Festival data, byte[] key) throws Exception {
    //     ByteArrayOutputStream bos = new ByteArrayOutputStream();
    //     ObjectOutputStream oos = new ObjectOutputStream(bos);
    //     oos.writeObject(data);
    //     oos.flush();
    //     byte[] dataBytes = bos.toByteArray();
    //     SecretKeySpec secretKeySpec = new SecretKeySpec(key, "AES");
    //     Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    //     cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);
    //     return cipher.doFinal(dataBytes);
    // }

    @Autowired
    FestivalRepository festivalRepository;

    @GetMapping("/")
    public Festival[][] getAllFestivals() {
        System.out.println("[INFO] route='/', request='get all data'\n");
        List<Festival> data = festivalRepository.findAll();
        Festival[][] festivals = new Festival[12][];
        for (int i = 0; i < 12; i++) {
            festivals[i] = new Festival[0];
        }
        for (Festival d : data) {
            int monthIndex = d.getMouth().intValue() - 1;
            festivals[monthIndex] = addFestival(festivals[monthIndex], d);
        }
        // for (int i = 0; i < 12; i++) {  // 外层循环遍历所有月份
        //     System.out.println(i + ":");  // 输出月份名称
        //     Festival[] festivalsInMonth = festivals[i];  // 获取对应月份的节日数组
        //     for (Festival festival : festivalsInMonth) {  // 内层循环遍历节日数组
        //         System.out.println("- " + festival.getName() + " (" + festival.getDate() + ")");  // 输出节日名称和日期
        //     }
        // }
        return festivals;
    }

    @GetMapping("/info")
    public String getOneFestival(@RequestParam("param") String input) {
        System.out.println(input);
        System.out.println("[INFO] route='/info', request='get one data'\n");
        Festival data = festivalRepository.findByNum(Long.valueOf(input));
        String json = toJson(data);
        // 将JSON字符串加密，并返回结果
        try{
            String res=encrypt(json);
            // System.out.println(res);
            return res;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}