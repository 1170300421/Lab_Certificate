<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/12/15
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>证书生成成功</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color:#3F9">
<%
    String deal=(String)request.getAttribute("ou");
    if(deal!=null)
        out.println(deal);
%>
<form action="DigitalServlet" method="post">
<div id="head" style="width:1500px">

    <div id="header">
        <h1 style="text-align:center; font-size:50px">证书生成成功</h1>
    </div>

    <div id="container" style="text-align:center; font-size:20px">
        <%
            String path001="mmu";
            //String deal=(String)request.getAttribute("error");
            String path002="/degitalCertificate/"+path001+".cer";
            String path003=path002;
            //out.println(path003);
            //String s = "http://www.baidu.com";
            out.print("<a href= \"" +path003+ "\" download=\"degitalCertificate\" >点击此处下载证书</a>");
        %><br>

        <%
            String path004="mmu";
            //String deal=(String)request.getAttribute("error");
            String path005="/privatekey/"+path004+".txt";
            String path006=path005;
            //String s = "http://www.baidu.com";
            out.print("<a href= \"" +path006+ "\" download=\"private\" >点击此处下载密钥</a>");
        %>
        <br>
        <%
            String path007="Test";
            //String deal=(String)request.getAttribute("error");
            String path008="/ceshi/"+path007+".txt";
            String path009=path008;
            //String s = "http://www.baidu.com";
            out.print("<a href= \"" +path009+ "\" download=\"usetest\" >点击此处下载使用方法</a>");
        %>
        <br>
        三秒钟后自动转到首页页面！！！<br>
        如果没有跳转，请点击<a href="homepagetwo.jsp">这里</a>！！！
    </div>

</div>
</form>
</body>
</html>

