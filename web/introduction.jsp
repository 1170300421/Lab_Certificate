<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/12/1
  Time: 11:04
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
    <title>产品介绍</title>
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
        <h1 style="text-align:center; font-size:50px">产品介绍</h1>
    </div>

    <div id="container" style="text-align:center; font-size:20px">
        该网站用于申请创建证书，请申请者先登录网站（没有账号先进行注册），后点击认证中心，输入相关信息，审核通过后即可签发证书，如有问题可根据首页下方联系方式联系客服询问相关问题
        <br>
        返回首页，请点击<a href="index.jsp">这里</a>！！！

    </div>

</div>
</body>
</html>

