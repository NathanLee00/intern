<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2020/10/13
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>疫情数据输入页面</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/datepicker/bootstrap-datepicker3.css">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3">

        </div>
        <div class="col-md-9">
            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/main.jsp">主页</a></li>
                <li>数据录入</li>
            </ul>
            <div class="row">
                <div class="col-md-4">
                    <div class="input-group date" id="datepicker">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.11.2.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/bootstrap/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/bootstrap/datepicker/bootstrap-datepicker.zh-CN.min.js"></script>
</body>
</html>