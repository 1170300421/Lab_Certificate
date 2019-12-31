package comWeb;

import comUtil.ChangeOperate;
import comUtil.DbUtil;
import commodel.CertificateModule;
import log.Log4j;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ChangeServlet extends HttpServlet {
    DbUtil db=new DbUtil();
    String path="E:/JAVA/workspace/Lab_Certificate/log4j.txt";
    String content = null;

    private static final long serialVersionUID=1L;

    /**
     * @Description: Constructor of the object.
     * @Param:
     * @return:
     * @Author: 1170300421
     * @Date: 2019/11/18
     */
    public ChangeServlet(){

        super();
    }

    /**
     * @Description: 销毁servlet。
     * @Param:
     * @return:
     * @Author: 1170300421
     * @Date: 2019/11/18
     */
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }

    public void doGet(HttpServletRequest request , HttpServletResponse response)
            throws ServletException  , IOException {

    }

    public void doPost(HttpServletRequest request , HttpServletResponse response)
            throws ServletException,IOException{
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String Username=request.getParameter("Username");
        String Password=request.getParameter("Password");
        String Changeword=request.getParameter("Changeword");

        CertificateModule certificateModule=new CertificateModule();
        certificateModule.setUsername(Username);
        certificateModule.setPassword(Password);
        certificateModule.setChangword(Changeword);
        //System.out.println(certificateModule.getUsername());
        //CertificateInterface certificateInterface=new CertificateInterface();
        //certificateInterface.addCertificate(certificateModule);
        ChangeOperate changeOperate =new ChangeOperate();
        changeOperate.changeData(certificateModule);

        content="用户"+Username+"修改密码成功";
        Log4j le=new Log4j();
        le.writeEror_to_txt(path,content);
        System.out.println("用户"+Username+"修改密码成功");

        request.getRequestDispatcher("main.jsp").forward(request,response);//从main.jsp请求数据
    }
    /**
     * @Description: Servlet的初始化
     * @Param:
     * @return:
     * @Author: 1170300421
     * @Date: 2019/11/18
     */
    public  void init() throws ServletException {

    }
}
