<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc26
  Date: 2017/11/29
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>网站注册页面</title>
    <script src="js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/messages_zh.js" type="text/javascript" charset="utf-8"></script>
    <style>
        #contanier{
            border: 0px solid white;
            width: 1300px;
            margin: auto;
        }

        #top{
            border: 0px solid white;
            width: 100%;
            height: 50px;
        }
        #menu{
            border: 0px solid white;
            height: 40px;
            background-color: black;
            padding-top: 10px;
            margin-bottom: 15px;
            margin-top: 10px;
        }
        .top{
            border: 0px solid white;
            width: 405px;
            height: 100%;
            float: left;
            padding-left: 25px;
        }
        #top1{
            padding-top: 15px;
        }
        #bottom{
            margin-top: 13px;
            text-align: center;
        }

        #form{
            height: 500px;
            padding-top: 70px;
            background-image: url(img/regist_bg.jpg);
            margin-bottom: 10px;
        }
        a{
            text-decoration: none;
        }

        label.error{
            background:url(img/unchecked.gif) no-repeat 10px 3px;
            padding-left: 30px;
            font-family:georgia;
            font-size: 15px;
            font-style: normal;
            color: red;
        }

        label.success{
            background:url(img/checked.gif) no-repeat 10px 3px;
            padding-left: 30px;
        }

        #father{
            border: 0px solid white;
            padding-left: 307px;
        }

        #form2{
            border: 5px solid gray;
            width: 660px;
            height: 450px;
        }

    </style>
    <script>
        $(function(){
            $("#registForm").validate({
                rules:{
                    user:{
                        required:true
                    }
                }
            })
        })
    </script>

</head>
<body>
<div id="contanier">
    <div id="top">
        <div class="top">
            <img src="../../img/logo2.png" height="47px"/>
        </div>
        <div class="top">
            <img src="../../img/header.png" height="45px" />
        </div>

    </div>

    <div id="form">
        <form action="updataUserServlet2" method="post" id="registForm">
            <div id="father">
                <div id="form2">
                    <table border="0px" width="100%" height="100%" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
                        <tr>
                            <td colspan="2" >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <font size="5">用户编辑</font>&nbsp;&nbsp;&nbsp;USER REGISTER
                            </td>
                        </tr>
                        <tr>
                            <td width="180px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;
                                <label for="user" >姓名</label>
                            </td>
                            <td>
                                <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" value="${usertrue.unickname}" name="unickname" size="35px" id="user"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;
                                年龄
                            </td>
                            <td>
                                <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" value="${usertrue.uage}" name="uage" size="35px" id="email"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;
                                Email
                            </td>
                            <td>
                                <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" value="${usertrue.uemail}" name="uemail" size="35px" id="email"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;
                                手机号码
                            </td>
                            <td>
                                <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" value="${usertrue.uphonenumber}" name="uphonenumber" size="35px" id="email"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;
                                性别
                            </td>
                            <c:if test="${usertrue.usex=='男'}">
                            <td>
										<span style="margin-right: 155px;">
											<em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="radio" checked="checked" name="usex" value="男"/>男
											<input type="radio" name="usex" value="女"/>女<em></em>
										</span>
                                <label for="usex" class="error" style="display: none;"></label>
                            </td>
                            </c:if>
                            <c:if test="${usertrue.usex!='男'}">
                            <td>
										<span style="margin-right: 155px;">
											<em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="radio"  name="usex" value="男"/>男
											<input type="radio" checked="checked" name="usex" value="女"/>女<em></em>
										</span>
                                <label for="usex" class="error" style="display: none;"></label>
                            </td>
                            </c:if>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="submit" value="修      该" height="50px" style="margin-left: 100px;"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </div>
    <div>
        <img src="../../img/footer.jpg"  width="100%"/>
    </div>
    <div id="bottom">

        <p>
            Copyright © 2005-2016 巢湖学院后端组 版权所有
        </p>
    </div>
</div>
</body>
</html>

