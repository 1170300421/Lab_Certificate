package comWeb;

import comUtil.DbUtil;
import comUtil.DigtalOperate;
import digitalCertificate.DigitalMoudle;
import digitalCertificate.CertificateProduce;
import log.Log4j;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DigitalServlet extends HttpServlet {
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
    public DigitalServlet(){

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

    public void doPost(HttpServletRequest request ,HttpServletResponse response)
            throws ServletException,IOException{
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String CN=request.getParameter("CN");
        String OU=request.getParameter("OU");
        String O=request.getParameter("O");
        String L=request.getParameter("L");

       // CertificateModule certificateModule=new CertificateModule();
        DigitalMoudle digitalMoudle =new DigitalMoudle();
        //certificateModule.setUsername(Username);
        //certificateModule.setPassword(Password);
        digitalMoudle.setCN(CN);
        digitalMoudle.setOU(OU);
        digitalMoudle.setO(O);
        digitalMoudle.setL(L);

        //CertificateInterface certificateInterface=new CertificateInterface();
        DigtalOperate digtalOperate =new DigtalOperate();
        digtalOperate.addCertificate(digitalMoudle);
        //certificateInterface.addCertificate(certificateModule);

        CertificateProduce certificateProduce=new CertificateProduce();
        certificateProduce.generateCert(digitalMoudle);
        certificateProduce.ProduceDigital(digitalMoudle);//导出证书

        content="用户申请证书成功";
        Log4j le=new Log4j();
        le.writeEror_to_txt(path,content);
        System.out.println("用户申请证书成功");

        //String cerpath="E:/JAVA/workspace/Lab_Certificate/degitalCertificate/"+digitalMoudle.OU+".cer";
        //HttpSession session=request.getSession();
        //session.setAttribute("cerpath",cerpath);
        String ou=OU;
        request.setAttribute("ou",ou);

        request.getRequestDispatcher("gigitalsuccess.jsp").forward(request,response);//从main.jsp请求数据
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
