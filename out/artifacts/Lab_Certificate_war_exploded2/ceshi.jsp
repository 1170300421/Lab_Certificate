<%@ page import="javax.print.attribute.standard.RequestingUserName" %>
<%@ page import="com.sun.jdi.Value" %><%--
Created by IntelliJ IDEA.
User: 至爱LULU
Date: 2019/11/9
Time: 21:53
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!

%><%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
<form name="frm" action="CertificateServlet" method="post">
    <table>
        <tr>
            <td>Username：</td>
            <td><input type="text" id="Username" name="Username" value="${param.Username}"></td>
        </tr>
        <tr>
            <td>Password：</td>
            <td><input type="password" name="Password" value="${param.Password}"></td>
        </tr>

        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
        <script>
             a=document.getElementById("Username").value;
            out.print(a);

        </script>
    </table>

</form>
</body>
</html>
