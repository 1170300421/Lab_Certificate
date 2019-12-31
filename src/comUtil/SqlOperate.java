package comUtil;

import comUtil.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import com.mysql.jdbc.*;
public class SqlOperate {
    private PreparedStatement preparedStatement;
    private ResultSet resultSet = null;
    public List User=new ArrayList();

/** 
* @Description: 查询数据库 
* @Param:  
* @return:  
* @Author: 1170300421 
* @Date: 2019/11/28 
*/ 
    public boolean vertify(String Username, String Password) {
        String Usertemp, PassTemp;
        String sql="select * from register2";
        DbUtil dbUtil = new DbUtil();
        if (Username == null || Password == null)
            return false;
        try {
            Connection connection=dbUtil.getCon();

            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.execute();
            resultSet = preparedStatement.executeQuery("select * from register2");
            while (resultSet.next()) {
                Usertemp = resultSet.getString(1);

                if (Usertemp.equals(Username)) {
                    PassTemp = resultSet.getString(2);
                    if (PassTemp.equals(Password))
                        return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("operate fail");
        }

        return false;
    }

}
