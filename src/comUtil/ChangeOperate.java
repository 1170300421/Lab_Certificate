package comUtil;

import comUtil.DbUtil;
import commodel.CertificateModule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ChangeOperate {
    private PreparedStatement preparedStatement;
    //private PreparedStatement preparedStatement2;
    //private ResultSet resultSet = null;
    //public List User=new ArrayList();

    /**
     * @Description: 改变数据库数据
     * @Param:
     * @return:
     * @Author: 1170300421
     * @Date: 2019/11/28
     */
    public boolean changeData(CertificateModule certificateModule) {
        String Usertemp, PassTemp;
        DbUtil dbUtil = new DbUtil();
        //private PreparedStatement preparedStatement2;
        //String sql="select * from register2";
        String Username=certificateModule.getUsername();
        String Password =certificateModule.getPassword();
        String Changeword=certificateModule.getChangword();
        String sql2="Update register2 set Password=? where Username=?";
        //DbUtil dbUtil = new DbUtil();
        if (Username == null || Password == null)
            return false;
        try {
            Connection connection=dbUtil.getCon();
            PreparedStatement preparedStatement2=connection.prepareStatement(sql2);
                        preparedStatement2.setString(1,Changeword);
                        preparedStatement2.setString(2,Username);
                        //Password=Changeword;
                        //preparedStatement2.setString(2,Changeword);
                        //int flag=preparedStatement2.executeUpdate();
                        preparedStatement2.executeUpdate();
                        System.out.println("change success");
                        //System.out.println(flag);
                        return true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("operate fail");
        }

        return false;
    }

    /**public static  void main(String [] args){
        DbUtil db=new DbUtil();
        String a;
        //PreparedStatement ps=null;
        ChangeOperate changeOperate =new ChangeOperate();
        try{

            //ChangeOperate changeOperate =new ChangeOperate();
            changeOperate.changeData("Lilan","123456","0609");

        }catch (Exception e){
            e.printStackTrace();
        }
    }**/

}
