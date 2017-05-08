package com.jutubao.util;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URLDecoder;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.SimpleHttpConnectionManager;
import org.apache.commons.httpclient.URI;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpClientParams;

import com.jutubao.configurer.CustomizedPropertyConfigurer;
public class HttpSenderUtils {
	public static String batchSend(String phone, String msg,String rd, String ex){
        HttpClient client = new HttpClient(new HttpClientParams(), new SimpleHttpConnectionManager());
        GetMethod method = new GetMethod();
        try {
            URI base = new URI(CustomizedPropertyConfigurer.getContextProperty("sms.url").toString(), false);
            method.setURI(new URI(base, "send", false));
            method.setQueryString(new NameValuePair[] {
                    new NameValuePair("un",CustomizedPropertyConfigurer.getContextProperty("sms.un").toString()),
                    new NameValuePair("pw",CustomizedPropertyConfigurer.getContextProperty("sms.pw").toString()),
                    new NameValuePair("phone", phone),
                    new NameValuePair("rd", rd),
                    new NameValuePair("msg", msg),
                    new NameValuePair("ex", ex),

            });
            int result = client.executeMethod(method);
            if (result == HttpStatus.SC_OK) {
                InputStream in = method.getResponseBodyAsStream();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                byte[] buffer = new byte[1024];
                int len = 0;
                while ((len = in.read(buffer)) != -1) {
                    baos.write(buffer, 0, len);
                }
                return URLDecoder.decode(baos.toString(), "UTF-8");
            } else {
                throw new Exception("HTTP ERROR Status: " + method.getStatusCode() + ":" + method.getStatusText());
            }
        }catch(Exception e){
        	e.printStackTrace();
        }finally {
            method.releaseConnection();
        }
        return null;
	}
	/*public static void main(String[] args) throws Exception {
        String url = "http://sms.253.com/msg/send";// 应用地址
        String un = "N3232021";// 账号
        String pw = "Tch654321";// 密码
        String phone = "15310212027";// 手机号码，多个号码使用","分割
        String msg = "测试，你的验证码是123456";// 短信内容
        String rd = "1";// 是否需要状态报告，需要1，不需要0
        String ex = null;// 扩展码
        String returnString = HttpSenderUtils.batchSend(phone, msg, rd, ex);
        System.out.println(returnString);
	}*/
}

