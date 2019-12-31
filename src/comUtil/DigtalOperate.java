package comUtil;

import commodel.CertificateModule;
import digitalCertificate.DigitalMoudle;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DigtalOperate {
    public boolean addCertificate(DigitalMoudle digitalMoudle ){
        String CN=digitalMoudle.getCN();
        String OU =digitalMoudle.getOU();
        String O=digitalMoudle.getO();
        String L=digitalMoudle.getL();

        DbUtil db=new DbUtil();
        try{
            String sql="INSERT INTO register3(CN,OU,O,L)VALUES(?,?,?,?)";
            Connection connection =db.getCon();//获取连接
            PreparedStatement preparedStatement=connection.prepareStatement(sql);//insert data
            preparedStatement.setString(1,CN);
            preparedStatement.setString(2,OU);
            preparedStatement.setString(3,O);
            preparedStatement.setString(4,L);
            preparedStatement.executeUpdate();//对数据库中表的记录进行更新
        }catch(Exception e){
            e.printStackTrace();
        }
        return true;
    }
}
