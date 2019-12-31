package commodel;

/**
 * 所需要的对象
 */
public class CertificateModule {
    private String Username;
    private String Password;
    private String Changword;
    public String getUsername(){

        return Username;
    }
    public void setUsername(String username){
        Username=username;
    }
   public String getPassword(){
        return Password;
   }
   public void setPassword(String password){
        this.Password =password;
   }
    public String getChangword(){
        return Changword;
    }
    public void setChangword(String changword){
        this.Changword =changword;
    }
}
