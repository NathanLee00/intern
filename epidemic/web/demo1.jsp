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
    <title>测试页面</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/bootstrap/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/respond.js"></script>
    <![endif]-->
    <style>

    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-1 col-sm-3 col-xs-6" >.col-md-1</div>
    </div>

    <div class="row">
        <div class="col-md-8 col-sm-3 col-xs-6" >.col-md-1</div>
        <div class="col-md-4 col-sm-3 col-xs-6" >.col-md-1</div>
    </div>

    <div class="row">
        <div class="col-md-4 col-md-offset-4" >.col-md-1</div>
    </div>

    <div class="row">
        <ul class="breadcrumb">
            <li><a href="main.jsp">主页</a></li>
            <li><a href="login.jsp">登录</a></li>
        </ul>
    </div>

    <div class="row">
        <table class="table table-striped table-bordered table-hover">
            <thead>
              <th>姓名</th>
              <th>年龄</th>
              <th>成绩</th>
              <th>email</th>
              <th>地址</th>
            </thead>
            <tbody>
            <tr class="active">
                <td>zhangsan</td>
                <td>32</td>
                <td>99</td>
                <td>12312412</td>
                <td>65546</td>
            </tr>
            <tr class="success">
                <td>zhangsan</td>
                <td>32</td>
                <td>99</td>
                <td>12312412</td>
                <td>65546</td>
            </tr>
            <tr class="warning">
                <td>zhangsan</td>
                <td>32</td>
                <td>99</td>
                <td>12312412</td>
                <td>65546</td>
            </tr>
            <tr class="danger">
                <td>zhangsan</td>
                <td>32</td>
                <td>99</td>
                <td>12312412</td>
                <td>65546</td>
            </tr>
            <tr>
                <td>zhangsan</td>
                <td>32</td>
                <td>99</td>
                <td>12312412</td>
                <td>65546</td>
            </tr>
            </tbody>

        </table>
    </div>

    <div class="row">
        <form action="" method="post"  >
            <div class="form-group">
                <div class="col-md-6">
                    账号： <input type="text" id="account" name="userAccount" class="form-control" placeholder="请输入账号" style="width: 10em"/><br/>
                </div>
            </div>
            <div class="form group">
                <div class="col-md-6">
                    密码: <input type="password" id="password" class="form-control" placeholder="请输入密码" name="userPassword" style="width: 10em" /><br/>
                </div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">登录</button>
            </div>
        </form>
    </div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.11.2.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
</div>
</body>
</html>
