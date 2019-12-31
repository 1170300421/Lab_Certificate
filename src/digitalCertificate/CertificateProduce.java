package digitalCertificate;



import log.Log4j;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.x509.X509V3CertificateGenerator;
import digitalCertificate.DigitalMoudle;


import javax.security.auth.x500.X500Principal;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.*;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.security.interfaces.RSAPublicKey;

public class CertificateProduce {
    X509Certificate cert = null;
    //String path="E:/JAVA/workspace/Lab_Certificate/log4j.txt";
    String  content = null;
    //DigitalMoudle digitalMoudle=new DigitalMoudle();

    static{
        Security.addProvider(new BouncyCastleProvider());
    }

    protected  static KeyPairGenerator kpg=null;

    public  CertificateProduce(){
      try{
          //采用 RSA 非对称算法加密
          kpg =KeyPairGenerator.getInstance("RSA");
          kpg.initialize(1024);
      }catch(NoSuchAlgorithmException e){
          e.printStackTrace();
      }
    }

    /** 
    * @Description: 生成证书 
    * @Param:  
    * @return:
    * @Author: 1170300421 
    * @Date: 2019/12/12 
    */
    @SuppressWarnings("all")
    public X509Certificate generateCert(DigitalMoudle digitalMoudle){
        X509V3CertificateGenerator certificateGenerator =new X509V3CertificateGenerator();

        String path="E:/JAVA/workspace/Lab_Certificate/web/privatekey/"+digitalMoudle.OU+".txt";
        try{
            //BaseCert();
            KeyPair keyPair =kpg.generateKeyPair();
            PublicKey publicKey=keyPair.getPublic();//公钥
            PrivateKey privateKey=keyPair.getPrivate();//私钥

            //RSAPublicKey privateKey2 = (RSAPublicKey)privateKey;
            content =String.valueOf(privateKey);
            Log4j le=new Log4j();
            le.writeEror_to_txt(path,content);
            System.out.println(content);

            System.out.println("private\n");
            System.out.println(privateKey);
            //X509V3CertificateGenerator certificateGenerator =new X509V3CertificateGenerator();
            // 设置序列号
            certificateGenerator.setSerialNumber(BigInteger.valueOf(System.currentTimeMillis()));
            //颁发者
            certificateGenerator.setIssuerDN(new X509Principal(digitalMoudle.CA_ROOT_ISSUER));
            // 设置有效期
            certificateGenerator.setNotBefore(new Date(System.currentTimeMillis() - 50000));
            certificateGenerator.setNotAfter(new Date(System.currentTimeMillis() + 50000));
            //使用者
             digitalMoudle.CA_DEFAULT_SUBJECT="C=CN,CN="+digitalMoudle.CN+",OU="+digitalMoudle.OU+",O="+digitalMoudle.O+",L="+digitalMoudle.L;
            certificateGenerator.setSubjectDN(new X500Principal(digitalMoudle.CA_DEFAULT_SUBJECT));
            //公钥
            certificateGenerator.setPublicKey(publicKey);
            System.out.println("pubic\n");
            System.out.println(publicKey);
            //签名算法
            certificateGenerator.setSignatureAlgorithm(digitalMoudle.CA_SHA);
            cert=certificateGenerator.generateX509Certificate(privateKey,"BC");
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getClass()+e.getMessage());
        }
        System.out.println(digitalMoudle.CA_SHA);
        System.out.println(cert);
        return cert;
        //System.out.println(cert);
    }
    //private  static String certPath ="E:/JAVA/workspace/Lab_Certificate/degitalCertificate/lee.cer";
    /**
    * @Description:  导出证书
    * @Param:
    * @return:
    * @Author: 1170300421
    * @Date: 2019/12/15
    */
    public void ProduceDigital(DigitalMoudle digitalMoudle){
        String certPath ="E:/JAVA/workspace/Lab_Certificate/web/degitalCertificate/"+digitalMoudle.OU+".cer";
        System.out.println(certPath);
        CertificateProduce certificateProduce=new CertificateProduce();
        X509Certificate x509Certificate =certificateProduce.generateCert(digitalMoudle);
        System.out.println(x509Certificate.toString());

        //导出
        try {
            FileOutputStream fileOutputStream =new FileOutputStream(certPath);
            fileOutputStream.write(x509Certificate.getEncoded());
            fileOutputStream.close();
        }catch(FileNotFoundException e){
            e.printStackTrace();
        }catch(CertificateEncodingException e){
            e.printStackTrace();
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}

