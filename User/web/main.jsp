<%--
  Created by IntelliJ IDEA.
  User: pc26
  Date: 2017/11/29
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
    <title>Bootstrap101Template</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.8.3.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/cs.css"/>
    <script>
        $(function(){
            $("#clear").click(function(){
                $("#username").val("").focus();
            })
            $("#select").click(function(){
               $("tbody input").attr("checked",this.checked)

            })

            $("#add").click(function(){
                location.href="add.jsp"
            })

        })



    </script>
    <script type="text/javascript">
        function cherkuser() {
            var username = document.getElementById("username").value;
            location.href = "selectUserServlet?username=" + username
        }

    </script>

</head>

<body>
<div class='container-fluid'>
    <div class='tabbable tabs-left'>
        <div id="left">
            <img src="img/95eef01f3a292df5008e353cb7315c6034a8734e.jpg" class="img-circle"/>
            <p>admin</p>



            <details id="details">
                <summary>系统管理</summary>
                <table cellpadding="0" cellspacing="0" border="0px">
                    <ul class='nav nav-tabs nav-stacked' >
                        <li class='active'>
                            <a href='#tab1' data-toggle='tab'style="color: gray;">用户管理</a>
                        </li>
                        <li>
                            <a href='#tab2' data-toggle='tab' style="color: gray;">申请管理</a>
                        </li>

                    </ul>
                </table>
            </details>

        </div>
        <!--
选项卡的内容定义
-->
        <div id="right_top">
            <p><a href="cancelServlet">注销</a></p>
            <img src="img/ico.ooopic.png" />
            <div id="message"> ${name}  <p>欢迎来到用户信息管理系统</p></div>
        </div>
        <div class='tab-content' id="right">
            <div class='tab-pane active' id='tab1'>
                <form action="deleteUserServlet" method="post">
                <div id="frame">
						<span>用户信息：<input type="text" id="username" style="height: 42px; width: 204px;"/>
						<button type="button" class="btn btn-default" style="height: 42px; width: 90px; background-color: lightskyblue;" id="check" onclick="cherkuser()">姓名查询</button>
						<button type="button" class="btn btn-default" style="height: 42px; width: 90px; background-color: orange;" id="clear">置空</button>
						</span>

                    <div id="second">           <!--第二行的按钮-->
                        <button type="button" class="btn btn-default" id="add"  style="height: 42px; width: 90px; background-color: greenyellow;">新增</button>
                        <button type="submit" class="btn btn-default" id="delete" style="height: 42px; width: 90px; background-color: pink;" >删除</button>
                    </div>

                    <table border="1" width="1430px" id="tbl">
                        <thead >
                        <tr>
                            <th><input type="checkbox" id="select"></th>
                            <th>编号</th>
                            <th>姓名</th>
                            <th>年龄</th>
                            <th>手机号码</th>
                            <th>邮箱</th>
                        </tr>
                        </thead>
                        <tbody id="tbody">
                        <c:forEach items="${allUser}" var="User" varStatus="status">
                            <tr>
                                <td><input type="checkbox" value="${User.uid}" name="check" class="selectOne"></td>
                                <td>${status.count}</td>
                                <td class="user">${User.unickname}</td>
                                <td>${User.uage}</td>
                                <td>${User.uphonenumber}</td>
                                <td>${User.uemail}</td>
                                <td><a href="updataUserServlet?uid=${User.uid}">编辑</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                 </div>
                </form>

            </div>
            <div class='tab-pane' id='tab2' >我是选项卡二的内容</div>
        </div>
    </div>

</div>

</body>

</html>
