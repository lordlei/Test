
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆注册页面</title>
</head>
<style type="text/css">
    *{
        margin:0px;
        padding:0px;
    }
    #center-background{

        width:99%;
        height: 90%;
        background-image: url(img/timg.jpg);
        background-repeat: no-repeat;
        position:fixed;
    }
    #regist{
        width:279px;
        height:315px;
        background-color:antiquewhite;
        position:fixed;
        left:115px;
        top:150px;
    }
    #Font{
        margin-top: 30px;
        margin-left: 20px;;
    }
    #username{
        border: 1px solid gainsboro;
        margin-left: 37px;
        margin-top: 40px;
        height: 30px;
        width: 200px;
    }
    #password{
        border: 1px solid gainsboro;
        margin-left: 37px;
        margin-top: 20px;
        height: 30px;
        width: 200px;
    }
    #submit{
        border-radius:5px;
        margin-left: 37px;
        margin-top: 20px;
        height: 30px;
        width: 202px;
    }
    #username input{
        height: 26px;
        width: 197px;
    }
    #password input{
        height: 26px;
        width: 197px;
    }
    #submit input{
        border-radius:5px;
        height: 26px;
        width: 197px;
        background-color:#FF6600;
    }
    #submit input:hover{
        background-color:#FF0000;
    }
    .ssss{
        color: red;
    }
</style>
<script>
    function cherkform(){
        var name =document.getElementById("user").value;
        if(name == ""){
            alert("用户名不能为空！")
            return false;
        }
        var number =document.getElementById("pass").value;
        if(number == ""){
            alert("密码不能为空！")
            return false;
        }
    }
</script>
<body>
<div id="center-background">
    <div id="regist">
        <p id="Font"><font color="black" size="4"><strong>账户登录:</strong></font></p>
       <div class="ssss"> <%=request.getAttribute("name1")==null?"":request.getAttribute("name1")%> </div>
        <form action="loginServlet" method="post" onsubmit="return cherkform()">
            <div id="username">
                <input type="test" name="username" placeholder="用户名" id="user"/><br/>
            </div>
            <div id="password">
                <input type="password" name="password" placeholder="密码" id="pass"/><br/>
            </div>
            <div id="submit">
                <input type="submit" value="登录"/><br/>
            </div>
        </form>
    </div>

</div>
</body>
</html>

