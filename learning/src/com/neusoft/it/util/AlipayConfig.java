package com.neusoft.it.util;

import java.io.FileWriter;
import java.io.IOException;



public class AlipayConfig {

    /* *
     *类名：AlipayConfig
     *功能：基础配置类
     *详细：设置帐户有关信息及返回路径
     *修改日期：2017-04-05
     *说明：
     *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
     *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
     */
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101400681083";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDB7ITmi0tiSw9Qi7BgaZUEBDATK8mQAhpnzreriFQRp7rQCZG1SPViUvU7GB4UphfmVZIzOOyOnMQbjTYvhVuaYsiZ1pj8+Kc1lnWdQYzwzhFFBzJmcDfweppnHsydFW3yR7qABdBVP1sucv3ACOpr5cSO+Vct5yxADr7YhB/O0ZP1+lMFIgBtQ/kThO29D2wDjx1rexjv48CHz7qWF42uc2cADLmNVhDbFg5uqxXjIewCs3IrZS+HIwYsejbCzeveX2vBztSZbnylRlbgbrJPL4UrScI2ohl4WnMgmTUim0rCiDT0n3Wm7C9/wpSuLMqmkidTJcHhuIhGqsCOMiYzAgMBAAECggEAPYkL8wwoc5xV070/zpgyTP/3MV4nq6a/MkmKRsgPxTpwMSuYLOpl0zl3z7Srduntk417wv1BM0/TetqoYxPyKV9HQGm0SjGs/XgtAiWWz6LUIA9UkuTxG0IMVMSVMRNnvAW+zHkLzsE38dlTY+hwWqSiZqwAWfSNOhZzwMjMPxf7i2WS3k/ytZycvXUpCz37nZEkfOjURO6BNFi87mMfrqHw7D4VVUGr8es7MXNat0h4npG3kjsgmCCo2btZQ54VQPNArDA0Or5injEeCpeHf0m7M+2jUaqCBybr2PNAK5YIx3uGD2124tbw2IkZGQIufyc7qDWEi8jBZXy1Fn+y4QKBgQD5SLCBSbmqfwlHfHyVpVFVeFrNvOsL8BF4KYbaysicBmeAOYb3HaS3fJBnWutAH/O/PLjt7cuzkHgcqB+OwlP8xE7hfe0KONvWLBBkJigRLou3kxDENg9+f25h3nzzF9S+bgHLfhf7xcYsgk5/B8/KiAN+eKMcoNd6cPTTldBErwKBgQDHJgL74hNiOLBZU3ObmJ3AVGP/78owYaCr5Z9Ga+3qTEq8y8ETGZV23oHyKP1iHSb8rW2dKCWWUPVzKcyDFZvAVeKg0vadMAn96sMRW9BUIV0Do9U9oRLIDlR4Es02rpIaUgKTrL+hdwNmUGY6W22y8YfH1SDxj02ECHORPtXfvQKBgQCzG/c17bLpPb19D4S0QMPflUoo6MQ5H5Rtseii63CYKkHTb4H5q+LdszJOEJVWzZ5kmUyGJ4Vkzzh93o5OFHIj+yhx+/iEj7XkfGSKkJ/ZOIhKrfAuCmm3iffVefZs84J4ELJZc4/n5oItGLMtsn8qFe/svuDzgN1RrDc8jzfFIQKBgQCYTbjQfCjI4IP1/L2YjNJwidnknbWq5K8lZ7o0+Ev++RPbaZSij9lgDHGjCrgl9hef/N6s50w/tnDQ/3GZ+segA88LoevbcSbjG0zOFMKx5MYnB4AI3wvnFhaBshdhr4arPHceC2qPCN7/u5NDJDM0PEXUjWnhc/Abfv8rYLvenQKBgG3oqMO2MQ2cz6j5kqjj+T7aA/ix9ntC6+KsVD5MXB8WWWRcS+QzlMxRJYGmyO+Lf0gLVrYNmwgNS274iSICpMK6tqUtqFntzrrreKu2BEBYPI4JyRxF/ESPfHr6AFIDP7kdPSVEytsBAbgXUc7HiDaOOcaZ+mGk6fs7Kponvk8e";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAigiXnFWbABY2O/5lhjqsHpfdQstW4odjjiA9+NbTVxT9GYoLOLEzljGBMzzn006HxX6oH1F7aqT+affwOp5Fmal0eiG1wFdyrg31ahBZls4UXt8rzE4keIF1rcIyz8ZeOfo+WSkS1lWMHyPBzAX/01FkoGG+avpB+IvTBZvvFObMI/FT5vPP2Bzh1TupZ3JUCo9zZhAnqltZR35DwS6zm+SYzJSwOOJW+LJeDkrkybA6XskSSrJGD5uqyykiI5YQQjA8W/hlzze/+bY3LBnhKvTeF3BVShPh70OZYo0qF/M7uy2Dhw7E8o9H+THDEpOxxze1pGVVwrftRDNNgmG4HQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/learning/alipay/paysuccess";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/learning/alipay/paysuccess";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";//"https://openapi.alipay.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";



//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

