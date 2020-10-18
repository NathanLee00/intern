<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>疫情数据录入</title>
    <jsp:include page="../template/bootstrap_common.jsp"></jsp:include>
    <link rel="stylesheet" href="../bootstrap/datepicker/bootstrap-datepicker3.css" type="text/css"/>
</head>
<body>
<div class="container">
    <jsp:include page="../template/top.jsp"/>
    <div class="row">
        <div class="col-md-3">
            <jsp:include page="../template/menu.jsp"/>
        </div>
        <div class="col-md-9">
            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/main.jsp">主页</a></li>
                <li>数据录入</li>
            </ul>
            <div class="row">
                <div class="col-md-4">
                    <div class="input-group date" id="datepicker" data-date-format="yyyy-mm-dd">
                        <div class="input-group-addon">数据日期：</div>
                        <input class="form-control" size="16" type="text" value="" readonly id="dataDate">
                        <div class="input-group-addon"><span class="add-on glyphicon glyphicon-calendar"></span></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <button type="button" class="btn btn-primary" id="btnSubmit">提交 <span class="glyphicon glyphicon-log-in"></span></button>
                </div>
            </div>
            <br/>
            <div class="row">
                <table class="table table-striped table-hover table-bordered table-condensed">
                    <thead>
                    <tr>
                        <th>省份</th>
                        <th>确诊人数</th>
                        <th>疑似人数</th>
                        <th>隔离人数</th>
                        <th>治愈人数</th>
                        <th>死亡人数</th>
                    </tr>
                    </thead>
                    <tbody id="body1">
                    <tr>
                        <td>湖北</td>
                        <td><input type="text" name="affirmed" size="4" maxlength="4" class="form-control"/></td>
                        <td><input type="text" name="suspected" size="4" maxlength="4" class="form-control"/></td>
                        <td><input type="text" name="isolated" size="4" maxlength="4" class="form-control"/></td>
                        <td><input type="text" name="cured" size="4" maxlength="4" class="form-control"/></td>
                        <td><input type="text" name="dead" size="4" maxlength="4" class="form-control"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div id="msg"></div>
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
<script>
    var privinces;
    $(function () {
        var datepicker=$("#datepicker");
        var current=new Date();
        var date1=new Date();
        date1.setDate(current.getDate()-7);
        datepicker.datepicker({language:'zh-CN',autoclose: 'true'});
        datepicker.datepicker("setDate",current);
        datepicker.datepicker("setStartDate",date1);
        datepicker.datepicker("setEndDate",current);

        datepicker.datepicker().on("changeDate",loadProvincesData);

        loadProvincesData();
    })

    function loadProvincesData() {
        var date=$("#dataDate").val();
        $.get("${pageContext.request.contextPath}/province/ajax/noDataList",{"date":date},function (resp) {
            console.info(resp);
        },"json");
    }
</script>
