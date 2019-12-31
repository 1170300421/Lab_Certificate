package comUtil;

//import java.io.InputStream;
//import java.io.Reader;
//import java.math.BigDecimal;
//import java.net.URL;
import java.sql.*;
import java.sql.Connection;
//import java.util.Calendar;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DbUtil {
    Connection con=null;
    private String url="jdbc:mysql://localhost:3306/sqltest ?serverTimezone=UTC&userUnicode=true&characterEncoding=utf-8";
    private String user="root";
    private String password="124088he";
    private String driver="com.mysql.cj.jdbc.Driver";
/** 
* @Description: connect  database
* @Param:  
* @return:  
* @Author: 1170300421 
* @Date: 2019/11/17 
*/ 
    public Connection getCon() {
       //Connection con=null;
        try{
            Class.forName(driver);//注册驱动
            //System.out.println("connect ok") ;
        }catch(ClassNotFoundException e){
            System.out .println("connect null");
            e.printStackTrace();
        }
        //Class.forName(driver);//注册驱动
        System.out.println("connect ok") ;
        try{
            //Connection con=DriverManager.getConnection(url, user, password);
            con=DriverManager.getConnection(url, user, password);
        }catch (SQLException e){
            System.out.println("not connect");
            e.printStackTrace();
        }
        //Connection con=DriverManager.getConnection(url, user, password);
        System.out.println("connect");
        return con;
    }

    //public Connection getCon() throws Exception{
      //  Class.forName(driver);
        //Connection con=DriverManager.getConnection(url, user, password);
        //return con;
    //}


    public static void getClose(Connection con) throws SQLException{
        if(con!=null){
            con.close();
       }

    }

    //public ResultSet exeQuery( ){
       // DbUtil db=new DbUtil();
     //   Connection con=db.getCon();//connect
        
   // }
   /** public static  void main(String [] args){
        DbUtil db=new DbUtil();
        PreparedStatement ps=null;
        try{
            Connection con= db.getCon();
            String sql="INSERT INTO register2(Username,Password)value(?,?)";
            //String sql="select Username,Password from register where Username=? Password=?";
            //PreparedStatement ps=null;
            if(con==null){
                System.out.println("con is null");
            }
            ps=con.prepareStatement(sql);

            ps.setString(1,"Hui");
            ps.setString(2,"0609");
            ps.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            try{
                if(null!=ps) {
                    ps.close();
                }
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
        }**/
}

