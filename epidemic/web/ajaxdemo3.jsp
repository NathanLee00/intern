<%--
  Created by IntelliJ IDEA.
  User: shepard
  Date: 2020/10/17 0017
  Time: 下午 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>基于jQuery的ajax请求</title>
    <script src="bootstrap/js/jquery-1.11.2.js" type="application/javascript"></script>
</head>
<body>
用户名：<input type="text" id="userName"/><span id="showMsg" style="color:red;"></span><br/>
<input type="button" value="基于jQuery" id="btn"/>
<div id="showData"></div>
</body>
</html>

<script>
    $(function () {
        $("#btn").click(function () {
            var account = $("#userName").val();
            // $.get("ajax/ajaxDemo",{"userName":account},function (data) {
                $.post("ajax/ajaxDemo",{"userName":account},function (data) {
                 // $("#showMsg").html(data.msg);
                 //    alert(data);
                 var showData=$("#showData");
                 $.each(data,function (index,userInfo) {
                     var str=userInfo.userName+","+userInfo.userPassword;
                     showData.append(str+"<br/>");
                     // alert(name);
                 });
                 console.info(data)
            },"json");
        });
    });

</script>