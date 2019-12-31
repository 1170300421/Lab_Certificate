<%--
  Created by IntelliJ IDEA.
  User: 至爱LULU
  Date: 2019/12/20
  Time: 21:04
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
    <title>注册页面</title>
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
    <script type="text/javascript" src="md5.js"></script>
    <script>

        function trans(){
            //md5();
            frm.Password.value =hex_md5(frm.Password.value);
            document.getElementById("Password").value=frm.Password.value;
        }
        function submit(){
            //默认的提交处理，自定义的提交前处理方法不要用submit作为函数名
        }
        //onsubmit="pwd.value =hex_md5(pwd.value)"
    </script>
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
                            <img src="../img/solda-logo.jpg" height="47px" />
                        </div>
                        <div id="top-name">CA认证</div>
                    </td>
                    <td width="33.3%" align="center" >
                        <div id="middle-picture">

                        </div>

                        </div>
                    </td>
                    <td width="33.3%" align="right">
                        <a href="../网站登入页面/login_1.0.html"><font size="3" color="#1A42D2">登录</a>&nbsp;&nbsp;
                        <a href="../网站注册页面/regist.html"><font size="3" color="#1A42D2">注册</a>&nbsp;&nbsp;
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
            <a href="../网站首页显示页面/index.html">
                <font size="5" color="#92B923">首页</font>
            </a> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../网站生日礼物界面/present.html">
                <font size="4" color="#92B923">产品介绍</font>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../网站家居用品页面/jiaju.html">
                <font size="4" color="#92B923">关于</font>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <!--3.注册表单-->
    <form name="frm" action="CertificateServlet" method="post">
    <tr >
        <td height="600px"  align="center" background="../img/regist_bg.jpg">
            <!--嵌套一个十行二列的表格-->
            <form action="#" method="get" name="regForm" onsubmit="return checkForm()">
                <table border="0px" width="40%" height="400px" align="center" cellpadding="0px" cellspacing="0px" bgcolor="#FAFAFA">
                    <tr height="40px">
                        <td colspan="2">
                            <font color="#FF0000" size="4">注册用户</font> &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            用户名
                        </td>
                        <td>
                            <input type="text" name="Username" size="34px" id="Username" onfocus="showTips('user','请输入用户名')" onblur="check('user','用户名不能为空！')" value="${param.Username}"/><span id="userspan"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            姓名
                        </td>
                        <td>
                            <input type="text" name="username" size="34px" id="username" onfocus="showTips('username','请输入姓名')" onblur="check('username','姓名不能为空！')"/><span id="usernamespan"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            密码
                        </td>
                        <td>
                            <input type="password" name="Password" size="34px" id="Password" onfocus="showTips('password','请输入密码')" onblur="check('password','密码不能为空!')" value="${param.Password}"/><span id="passwordspan"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            确认密码
                        </td>
                        <td>
                            <input type="password" name="repassword" size="34px" id="repassword" onfocus="showTips('repassword','请再次输入密码')" onblur="check('repassword','密码不能为空!')"></input><span id="repasswordspan"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email
                        </td>
                        <td>
                            <input type="text" name="email" size="34px" id="eamil"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            性别
                        </td>
                        <td>
                            <input type="radio" name="sex" value="男"/>男
                            <input type="radio" name="sex" value="女"/>女
                        </td>
                    </tr>
                    <tr>
                        <td>
                            出生日期
                        </td>
                        <td>
                            <input type="text" name="birthday" size="34px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>籍贯</td>
                        <td>
                            <select onchange="changeCity(this.value)">
                                <option>--请选择--</option>
                                <option value="0">黑龙江</option>
                                <option value="1">湖南</option>
                                <option value="2">河北</option>
                                <option value="3">河南</option>
                            </select>
                            <select id="city">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            验证码
                        </td>
                        <td>
                            <input type="text" name="yzm" />
                            <img src="../img/yanzhengma.png" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="注册" onclick="trans()"/>
                        </td>
                    </tr>
                </table>
            </form>
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
            <a href="#">服务声明</a>
            <a href="#">广告声明</a>
            <p>
                Copyright © 2017-2018 1170300421 版权所有
            </p>
        </td>
    </tr>
</table>
</body>

<script>
    //当鼠标点击输入框后显示信息
    function showTips(id,info){
        document.getElementById(id+"span").innerHTML="<font color='gray'>"+info+"</font>";
    }

    //当鼠标点击另一个输入框后显示信息
    function check(id,info){
        //1.获取用户输入的用户名数据
        var uValue = document.getElementById(id).value;
        //2.进行校验
        if(uValue==""){
            document.getElementById(id+"span").innerHTML="<font color='red'>"+info+"</font>";
        }else{
            document.getElementById(id+"span").innerHTML="";
        }
    }

    function checkForm(){
        //alert("aa");
        /**校验用户名*/
            //1.获取用户输入的数据
        var uValue = document.getElementById("user").value;
        if(uValue==""){
            //2.给出错误提示信息
            alert("用户名不能为空!");
            return false;
        }

        /*校验密码*/
        var pValue = document.getElementById("password").value;
        if(pValue==""){
            alert("密码不能为空!");
            return false;
        }

        /**校验确认密码*/
        var rpValue = document.getElementById("repassword").value;
        if(rpValue!=pValue){
            alert("两次密码输入不一致!");
            return false;
        }

        /*校验邮箱*/
        var eValue = document.getElementById("eamil").value;
        if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(eValue)){
            alert("邮箱格式不正确!");
            return false;
        }
    }
    /*使用JS完成省市二级联动*/
    //1.创建一个二维数组用于存储省份和城市
    var cities = new Array(3);
    cities[0] = new Array("厦门市","泉州市","福州市","莆田市");
    cities[1] = new Array("长沙市","郴州市","株洲市","岳阳市");
    cities[2] = new Array("石家庄市","邯郸市","廊坊市","保定市");
    cities[3] = new Array("郑州市","洛阳市","开封市","安阳市");

    function changeCity(val){
        //7.获取第二个下拉列表
        var cityEle = document.getElementById("city");

        //9.清空第二个下拉列表的option内容
        cityEle.options.length=0;
        //2.遍历二维数组中的省份
        for(var i = 0; i < cities.length; i++){
            //注意比较的是角标
            if(val == i){
                //3.遍历用户选择的省份下的城市
                for(var j = 0; j < cities[i].length; j++){
                    //创建文本节点
                    var textNode = document.createTextNode(cities[i][j]);
                    //4.创建option元素节点
                    var opEle = document.createElement("option");
                    //5.将城市的文本节点添加到opttion元素节点
                    opEle.appendChild(textNode);
                    //6.将option元素节点添加到第二个下拉列表中
                    cityEle.appendChild(opEle);

                }
            }
        }
    }

</script>
</html>

