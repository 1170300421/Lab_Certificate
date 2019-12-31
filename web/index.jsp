<%--
Created by IntelliJ IDEA.
User: 至爱LULU
Date: 2019/11/9
Time: 21:53
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
    <!--引入bootstrap框架的头部模版-->
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>CA认证系统</title>

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- 引入jQuery核心js文件 -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="js/bootstrap.js"></script>

    <!--引入首页轮播图css代码-->
    <link rel="stylesheet" href="css/lunbo.css" />

    <!--输写div+css所需的css样式-->
    <style>
        /*div+css设计logo部分*/
        #top-name{
            font-size: 28px;
            font-family: "仿宋";
            font-weight: 700;
            color: #105F42;
            float: left;
            padding-top: 14px;
            height: 37px;
        }
        .logo-picture{
            float: left;

        }
        #middle-picture{
            border: 1px;
            padding-bottom: 12px;
        }
        #clear{
            clear:both;
        }

        /*div+css设计家居用品窗口布局*/
        #product{
            border: 0px solid red;
            width: 1300px;
            height: 558px;
        }
        #product_top{
            border: 0px solid blue;
            width: 100%;
            height: 45px;
            padding-top: 8px;
        }
        #product_bottom{
            border: 0px solid green;
            width: 1300px;
            height: 740px;
        }
        #product_bottom_left{
            border: 0px solid blue;
            width: 387px;
            height: 736px;
            float: left;
        }
        #product_bottom_right{
            border: 0px solid blue;
            width: 909px;
            height: 736px;
            float: left;
        }
        .big{
            border: 0px solid red;
            width: 602px;
            height: 368px;
            float: left;
            /*让里面的内容居中*/
            text-align: center;
        }
        .small{
            border: 0px solid blue;
            width: 301px;
            height: 368px;
            float: left;
            /*让里面的内容居中*/
            text-align: center;
        }

        #bottom{
            text-align: center;
        }

        a{
            text-decoration: none;
        }
    </style>
</head>

<body >
<!--1.创建一个六行一列的表格-->
<table border="0px" width="1300px" align="center" cellpadding="0px" cellspacing="0px">
    <!--2.logo部分-->
    <tr>
        <td>
            <!--嵌套一个一行三列的表格-->
            <table border="0px" width="100%">
                <tr height="50px">
                    <td width="33.3%">
                        <div class=logo-picture>
                            <img src="img/solda-logo.jpg" height="47px" />
                        </div>
                        <div id="top-name">CA认证</div>
                    </td>
                    <td width="33.3%" align="center" >
                        <div id="middle-picture">

                        </div>

                        </div>
                    </td>
                    <td width="33.3%" align="right">
                        <a href="login.jsp"><font size="3" color="#1A42D2">登录</a>&nbsp;&nbsp;
                        <a href="register.jsp"><font size="3" color="#1A42D2">注册</a>&nbsp;&nbsp;
                        <a href="notfond.jsp"><font size="3" color="#1A42D2">后台管理系统</a>
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
            <a href="notfond.jsp">
                <font size="4" color="#92B923">认证申请</font>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="introduction.jsp">
                <font size="4" color="#92B923">产品介绍</font>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <!--
        作者：zengsiyongwork@foxmail.com
        时间：2017-06-21
        描述：添加手风琴轮播图效果
    -->
    <tr>
        <td>
            <ul id="demo">
                <li class="active"> <a href="register.jsp"><img src="img/lunbotu/pag1.jpg"  /></a>
                    <div><a href="register.jsp">注册</a></div>
                </li>
                <li> <a href="login.jsp"><img src="img/lunbotu/pag2.jpg"  /></a>
                    <div><a href="login.jsp">登录</a></div>
                </li>
                <li > <a href="introduction.jsp"><img src="img/lunbotu/pag3.jpg"  /></a>
                    <div><a href="introduction.jsp">产品介绍</a></div>
                </li>
                <li> <a href="http://www.quwan.com/goods_2013-48717.html?fm=searchlist2"><img src="img/lunbotu/pag4.jpg"  /></a>
                    <div><a href="http://www.quwan.com/goods_2013-48717.html?fm=searchlist2">关于</a></div>
                </li>
            </ul>
        </td>
    </tr>


    <!--5.生日礼物-->
    <tr>
        <td>
            <!--嵌套一个三行四列的表格-->
            <table border="0px" width="100%">
                <tr height="50px">
                    <td colspan="6">
                        &nbsp;&nbsp;

                    </td>
            </table>

        </td>
    </tr>
    <!--6.家居用品-->
    <tr>
        <td>
            <!--</div>-->
        </td>
    </tr>
    <!--7.友情链接和版权信息-->
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
                Copyright © 2017-2018 1170300421 版权所有。如有问题，请联系：QQ：1240889970
            </p>
        </td>
    </tr>
</table>
</body>
<!--引入首页轮播图js代码-->
<script src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.indexSlidePattern.js"></script>

<script language="javascript">
    $(document).ready(function(e){
        var opt	=	{
            "speed"	:	"slow"		,	//变换速度,三速度可选 slow,normal,fast;
            "by"	:	"mouseover"		,	//触发事件,click或者mouseover;
            "auto"	:	true		,	//是否自动播放;
            "sec"	:	3000	 		//自动播放间隔;
        };
        $("#demo").IMGDEMO(opt);
    });
</script>
</html>
</body>
</html>