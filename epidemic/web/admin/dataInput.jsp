<%--
  Created by IntelliJ IDEA.
  User: shepard
  Date: 2020/10/16 0016
  Time: 下午 5:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>疫情数据录入</title>
    <jsp:include page=""></jsp:include>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/datepicker/bootstrap-datepicker3.css">
</head>
<body>
<div class="container">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.11.2.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/datepicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/datepicker/bootstrap-datepicker.zh-CN.min.js"></script>
</div>
</body>
</html>

