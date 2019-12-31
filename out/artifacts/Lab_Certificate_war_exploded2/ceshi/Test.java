package digitalCertificate;

import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.Base64;

import javax.crypto.Cipher;
public class Test {
    public static String path=null;

    public static void main(String[] args) throws Exception{
        path="E:/JAVA/workspace/Lab_Certificate/degitalCertificate/5054.cer";
        CertificateFactory cf = CertificateFactory.getInstance("X.509");
        X509Certificate cert = (X509Certificate)cf.generateCertificate(new FileInputStream(path));
        RSAPublicKey publicKey = (RSAPublicKey) cert.getPublicKey();
        //BASE64Encoder base64Encoder=new BASE64Encoder();
        //String publicKeyString = base64Encoder.encode(publicKey.getEncoded());
        System.out.println("-----------------公钥--------------------");
        System.out.println(publicKey);
        System.out.println("-----------------公钥--------------------");


        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        RSAPublicKeySpec rsaPublicKeySpec = new RSAPublicKeySpec(publicKey.getModulus(),publicKey.getPublicExponent());
        PublicKey publicKey2 = keyFactory.generatePublic(rsaPublicKeySpec);
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.ENCRYPT_MODE,publicKey);
        String a="Crypto-meds-exchange-request:Cardnum:026918-Amount:150";
        byte[]  encryptData = cipher.doFinal(a.getBytes());
        System.out.println(new String(encryptData));

        //privateExponent="27583399231322364048887319919872469158032410372314778514498126379010291054939005706369698525040953730681258663751131196706258785561265982393540279789885054666218033289390886672408124920392918611997330700283464373127882503036725653469677956856102541981154789840280808264178035261780553926309301080506780387793";
        BigInteger privateExponent = new BigInteger("27583399231322364048887319919872469158032410372314778514498126379010291054939005706369698525040953730681258663751131196706258785561265982393540279789885054666218033289390886672408124920392918611997330700283464373127882503036725653469677956856102541981154789840280808264178035261780553926309301080506780387793",10);
        RSAPrivateKeySpec rsaPrivateKeySpec = new RSAPrivateKeySpec(publicKey.getModulus(),privateExponent);
        PrivateKey privateKey = keyFactory.generatePrivate(rsaPrivateKeySpec);
        cipher.init(Cipher.DECRYPT_MODE,privateKey);
        byte[] decryptData = cipher.doFinal(encryptData);
        System.out.println("decryptData:" + new String(decryptData));

    }
}
