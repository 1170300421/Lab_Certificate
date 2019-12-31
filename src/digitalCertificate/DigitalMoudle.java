package digitalCertificate;

public class DigitalMoudle {
    /** String CA_C="CN";//用户姓名或域名
     String CA_ST="BJ";
     String CA_L="BJ";
    String CA_O="SICCA";
    String CA_ROOT_ISSUER="C=CN,ST=BJ,L=BJ,O=SICCA,OU=SC,CN=SICCA";//OU：组织单位名称
    String CA_DEFAULT_SUBJECT="C=CN,ST=BJ,O=SICCA,OU=SC,CN=";//O：组织名称
    String CA_SHA="SHA256WithRSAEncryption";//**/
    //public String CA_C="CN";//用户姓名或域名
    //public String CA_ST="BJ";
    //public String CA_L="BJ";
    //public String CA_O="SICCA";
    public String CA_ROOT_ISSUER="C=CN,ST=BJ,L=BJ,O=SICCA,OU=SC,CN=SICCA";//OU：组织单位名称
    //public String CA_DEFAULT_SUBJECT="C=CN,ST=BJ,O=SICCA,OU=SC,CN=";//O：组织名称
    public String CA_SHA="SHA256WithRSAEncryption";
    public String CN;
    public String getCN(){
        return CN;
    }
    public void setCN(String cn){
        CN=cn;
    }

    public String OU;
    public String getOU(){
        return OU;
    }
    public void setOU(String ou){
        OU=ou;
    }

    public String O;
    public String  getO(){
        return O;
    }
    public void setO(String o){
        O=o;
    }

    public String L;
    public String getL(){
        return L;
    }
    public void setL(String l){
        L=l;
    }
    // //public String CA_DEFAULT_SUBJECT="C=CN,ST=BJ,O=SICCA,OU=SC,CN=";
    //public String CA_DEFAULT_SUBJECT="C=CN,CN="+CN+",OU="+OU+",O="+O+",L="+L;

    public String CA_DEFAULT_SUBJECT;
}
