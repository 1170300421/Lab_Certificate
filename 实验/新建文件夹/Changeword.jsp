<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/12/15
  Time: 11:21
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
    <title>用户密码修改</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <script type="text/javascript" src="md5.js"></script>
    <script>

        function trans(){
            //md5();
            frm.Password.value =hex_md5(frm.Password.value);
            document.getElementById("Password").value=frm.Password.value;
            frm.Changeword.value =hex_md5(frm.Changeword.value);
            document.getElementById("Changeword").value=frm.Changeword.value;
        }
        function submit(){
            //默认的提交处理，自定义的提交前处理方法不要用submit作为函数名
        }
        //onsubmit="pwd.value =hex_md5(pwd.value)"
    </script>
</head>

<body style="background-color:#3F9">

<div id="head" style="width:1500px">

    <div id="header">
        <h1 style="text-align:center; font-size:50px">用户密码修改</h1>
    </div>
    <form name="frm" action="ChangeServlet" method="post">

        <div id="container" style="text-align:center; font-size:20px">
            用户：
            <input type="text" name="Username" value="${param.Username}"/>
            <br />

            旧密码：
            <input type="password" id="Password" name="Password" value="${param.Password}"/>
            <br />

            新密码：
            <input type="text" id="Changeword" name="Changeword" value="${param.Changeword}"/>
            <br />

            提交
            <input type="submit" value="提交" onclick="trans()"/>
            <br />

        </div>

    </form>
</div>
</body>
</html>

