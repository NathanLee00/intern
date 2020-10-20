
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>疫情信息</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div id="container">
    <div class="row" style="height: 500px;background-color: #fff; overflow: auto; margin-bottom: 5px; margin-top: 5px;">
        <div class="col-md-12" >
            <div class="col-md-12">
                <table class="table table-hover table-striped table-bordered" data-toggle="table">
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
                    <tbody id="tbody1">

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="row"style="height: 500px;background-color:#2b542c ">

    </div>
    <div class="row" style="height: 500px;background-color:#333333">

    </div>
    <div class="row">
        <a href="login.jsp">登录</a>
    </div>
</div>


</body>
</html>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.11.2.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

<script>
    $(function () {

         $.get("${pageContext.request.contextPath}/epidemicDate/ajax/getLastData",{},function (resp) {
            if(resp.code<0){
                alert(resp.msg);
            }else{
                console.info(resp.data);
                fillDataToTable(resp.data);
            }
         },"json");

    });

    function fillDataToTable(epidemices) {
        var tbody1=$("#tbody1");
        tbody1.empty();
        $.each(epidemices,function (index,epidemic) {
          var tr=$("<tr>");
          var td=$("<td>");
          td.text(epidemic.provinceName);
          tr.append(td);

          td=$("<td>")
          td.html(""+epidemic.affirmedTotal+"<span class='small'>"+epidemic.affirmed+"</span>");
          tr.append(td);

          td=$("<td>")
          td.html(""+epidemic.suspectedTotal+"<span class='small'>"+epidemic.suspected+"</span>");
          tr.append(td);

            td=$("<td>")
            td.html(""+epidemic.isolatedTotal+"<span class='small'>"+epidemic.isolated+"</span>");
            tr.append(td);

            td=$("<td>")
            td.html(""+epidemic.curedTotal+"<span class='small'>"+epidemic.cured+"</span>");
            tr.append(td);

            td=$("<td>")
            td.html(""+epidemic.deadTotal+"<span class='small'>"+epidemic.dead+"</span>");
            tr.append(td);

            tbody1.append(tr);
        })
    }
</script>