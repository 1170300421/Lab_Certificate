<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/12/18
  Time: 16:01
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
    <title>权限不够</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color:#3F9">

<div id="head" style="width:1500px">

    <div id="header">
        <h1 style="text-align:center; font-size:50px">请先登录</h1>
    </div>

    <div id="container" style="text-align:center; font-size:20px">
        三秒钟后自动转到首页页面！！！<br>
        如果没有跳转，请点击<a href="index.jsp">这里</a>！！！
        <span style="font-size:24px;"><meta http-equiv="refresh" content="3;URL=index.jsp"> </span>
    </div>

</div>
</body>
</html>
