<%--
  Created by IntelliJ IDEA.
  User: shepard
  Date: 2020/10/17 0017
  Time: 上午 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>原生ajax请求</title>
</head>
<body>
用户名：<input type="text" id="userName"/><span id="showMsg" style="color:red;"></span><br/>
<input type="button" value="原生ajax" onclick="fun()"/>
</body>
</html>

<script>
    function fun() {
        var account=document.getElementById("userName").value;
        alert("account:"+account);
        var xmlHttp;
        if(window.XMLHttpRequest){
            xmlHttp=new XMLHttpRequest();
        }

        xmlHttp.open("get","ajax/ajaxDemo?userName="+account,true);

        xmlHttp.send();

        xmlHttp.onreadystatechange=function () {
            if(xmlHttp.readyState==4&&xmlHttp.status==200){
                var result=xmlHttp.responseText;
                alert("执行了");
                document.getElementById("showMsg").innerText=result;
            }

        }

    }
</script>