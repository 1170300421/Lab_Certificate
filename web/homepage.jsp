<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/12/1
  Time: 10:37
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
    <title>CertificateSystem</title>
</head>

<body style="background-color:#3F9">
<div id="container" style="width:1500px">

    <div id="header">
        <h1 style="text-align:center; font-size:50px"> 认证系统</h1></div>

    <div id="register">
        <p style="text-align:end">
            <a href="login.jsp" target="_blank"> 登录</a>
            |
            <a href="index.jsp" target="_blank">注册</a>
            <input type="" name="" value="" /><button>搜索</button>
        </p></div>

    <div id="menu" style="height:200px; font-size:30px">
        <div style="width:300px; float:left"> <a href="homepage.jsp" target="_blank">首页</a></div>
        <div style="width:300px; float:left"><a href="notfond.jsp" target="_blank" style="width:300px">认证中心</a></div>
        <div style="width:300px; float:left"><a href="notfond.jsp" target="_blank" style="width:300px; float:left">认证管理</a></div>
        <div style="width:300px; float:left"><a href="notfond.jsp" target="_blank" style="width:300px">用户密码修改</a></div>
        <div style="width:300px; float:left"><a href="introduction.jsp" target="_blank" style="width:300px">产品介绍</a></div>
    </div>

    <div style="height:280px">

    </div>

    <div style="height:150px;" class="box">
        <p style="text-align:center;font-size:18px">
            <img src="Page/zhiai.png" style="width:110px; height:110px" />
            联系方式</p>
    </div>
    <style>
        .box{width:120px; text-align:center; font-szie:18px;}
        .box img {width:100%;}
    </style>

    <div style="height:40px">
        <p style="text-align:center; font-size:10px">@Copyright Marshall 2019版权所有。如有问题，请联系：QQ：1240889970</p>
    </div>
</div>
</body>
</html>
