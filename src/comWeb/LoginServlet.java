package comWeb;

import comUtil.DbUtil;
import comUtil.SqlOperate;
import log.Log4j;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LoginServlet extends HttpServlet {

    DbUtil dbUtil=new DbUtil();
    String path="E:/JAVA/workspace/Lab_Certificate/log4j.txt";
    String content = null;
    //Log log1=new Log();
    private static final long serialVersionUID=1L;

    //public void destroy(){
       // super.destroy();
    //}
    public LoginServlet(){

        super();
    }

    public void doGet(HttpServletRequest request , HttpServletResponse response)
            throws ServletException  , IOException {

    }

    public void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String Username=request.getParameter("Username");
        String Password=request.getParameter("Password");
        SqlOperate sqlOperate=new SqlOperate();

        boolean x= sqlOperate.vertify(Username,Password);
        String error;
        if(x==false){
            content="用户登录失败";
            Log4j le=new Log4j();
            le.writeEror_to_txt(path,content);
            System.out.println("用户登录失败");

            error="用户名或密码错误";
            request.setAttribute("error",error);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else{
            content="用户 "+Username+"登录成功";
            Log4j le=new Log4j();
            le.writeEror_to_txt(path,content);
            System.out.println("用户 "+Username+"登录成功");
            //new log1();
            request.getRequestDispatcher("homepagetwo.jsp").forward(request,response);
        }
    }
}
