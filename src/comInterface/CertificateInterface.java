package comInterface;


import commodel.CertificateModule;
import comUtil.DbUtil;
import log.Log;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CertificateInterface {
    public boolean addCertificate(CertificateModule certificateModule ){
        String Username=certificateModule.getUsername();
        String Password =certificateModule.getPassword();

        DbUtil db=new DbUtil();
        try{
            String sql="INSERT INTO register2(Username,Password)VALUES(?,?)";
            Connection connection =db.getCon();//获取连接
            PreparedStatement preparedStatement=connection.prepareStatement(sql);//insert data
            preparedStatement.setString(1,Username);
            preparedStatement.setString(2,Password);
            preparedStatement.executeUpdate();//对数据库中表的记录进行更新

        }catch(Exception e){
            e.printStackTrace();
        }
        new Log();
        return true;
    }
}
