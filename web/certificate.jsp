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
    <meta charset="UTF-8">
    <title>证书申请页面</title>


    <!--调用登入窗口所需要引入的bootstrap框架代码-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/login_style.css" />
    <script src="js/bootstrap.js"></script>

    <style type="text/css">
        #top-name{
            font-size: 24px;
            font-family: "仿宋";
            font-weight: 700;
            color: yellowgreen;
            float: left;
            padding-top: 8px;
            height: 37px;
        }
        .top-picture{
            float: left;

        }
        #middle-picture{
            border: 1px;
            padding-bottom: 12px;
        }
        #clear{
            clear:both;
        }
    </style>
</head>
<body>
<table border="0px" align="center" width="1300px" cellpadding="0px" cellspacing="0px">
    <!--1.logo部分-->
    <tr>
        <td>
            <!--嵌套一个一行三列的表格-->
            <table border="0px" width="100%">
                <tr height="50px">
                    <td width="33.3%">
                        <div class=top-picture>
                            <img src="img/solda-logo.jpg" height="47px" />
                        </div>
                        <div id="top-name">CA认证</div>
                    </td>
                    <td width="33.3%" align="center" ></td>

                        </div>
                    </td>
                    <td width="33.3%" align="right">
                        <a href="login.jsp"><font size="3" color="#1A42D2">登录</a>&nbsp;&nbsp;
                        <a href="register.jsp"><font size="3" color="#1A42D2">注册</a>&nbsp;&nbsp;
                        <a href="../网站后台系统显示页面/网站后台系统显示页面.html"><font size="3" color="#1A42D2">后台管理系统</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!--3.导航栏-->
    <tr height="50px">
        <td bgcolor="#FFFAE8">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="index.jsp">
                <font size="5" color="#92B923">首页</font>
            </a> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="introduction.jsp">
                <font size="4" color="#92B923">产品介绍</font>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../网站家居用品页面/jiaju.html">
                <font size="4" color="#92B923">关于</font>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <form action="DigitalServlet" method="post">
    <!--3.登入表单-->
    <tr>
        <td height="600px"  align="center" background="img/regist_bg.jpg">
                <div class="mycenter">
                    <div class="mysign">
                        <div class="col-lg-11 text-center text-info">
                            <h2>请填入信息</h2>
                        </div>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="CN" name="CN" placeholder="用户姓名或域名" required autofocus value="${param.Username}"/>
                            </div>
                            <div class="col-lg-10"></div>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="OU"  name="OU" placeholder="组织单位名称" required autofocus value="${param.Password}"/>
                            </div>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="O"  name="O" placeholder="单位名称" required autofocus value="${param.Password}"/>
                            </div>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="L"  name="L" placeholder="城市或区域" required autofocus value="${param.Password}"/>
                            </div>
                            <div class="col-lg-10"></div>
                            <div class="col-lg-10 mycheckbox checkbox">
                            </div>
                            <div class="col-lg-10"></div>
                            <div class="col-lg-10">
                                <input type="submit" value="提交" onclick="trans()"/>
                            </div>
                    </div>
                </div>

        </td>
    </tr>
    </form>
    <!--4.友情链接和版权信息-->
    <tr>
        <td align="center">
            <a href="#">关于我们</a>
            <a href="#">联系我们</a>
            <a href="#">招贤纳士</a>
            <a href="#">法律声明</a>
            <a href="#">友情链接</a>
            <a href="#">支付方式</a>
            <a href="#">配送方式</a>
            <a href="#">服务声明</a>
            <a href="#">广告声明</a>
            <p>
                Copyright © 2017-2018 1170300421 版权所有
            </p>
        </td>
    </tr>
</table>
</body>

</html>




