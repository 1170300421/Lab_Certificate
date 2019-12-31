<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/11/26
  Time: 13:54
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
    <title>信息输入</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color:#3F9">

<div id="head" style="width:1500px">

    <div id="header" style="width:1500px">
        <h1 style="text-align:center; font-size:50px">信息输入</h1>
    </div>

    <form action="DigitalServlet" method="post">

        <div id="container" style="font-size:20px; width:1500px">

            <div style="width:655px; float:left">
                null
            </div>

            <div style="width:600px; float:left">
                用户姓名或域名：
                <input type="text" name="CN" value="${param.CN}">
                <br />

                组织单位名称：
                <input type="text" name="OU" value="${param.OU}">
                <br />

                单位名称：
                <input type="text" name="O" value="${param.O}">
                <br />

                城市或区域
                <input type="text" name="L" value="${param.L}">
                <br />


                提交
                <input type="submit" value="提交">
                <br />
            </div>

            <div style="width:200px; float:left">

            </div>

        </div>
    </form>
</div>
</body>
</html>


