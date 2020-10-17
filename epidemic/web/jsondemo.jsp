<%--
  Created by IntelliJ IDEA.
  User: shepard
  Date: 2020/10/17 0017
  Time: 下午 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>json</title>
    <script src="bootstrap/js/jquery-1.11.2.js" type="application/javascript"></script>
</head>
<body>
<button>运行</button>
</body>
</html>
<script>
    $(function () {
          var person={"name":"admin","age":"18","email":"2314@qq.com"};

        var json2 = {"persons":
                [
                    {"name":"旺财","age":10,"gender":true},
                    {"name":"李四","age":100,"gender":false},
                    {"name":"李四","age":20,"gender":false}
                ]
        };

          $("button").click(function () {
              for(var key in person){
                  alert("key:"+key+"----"+person[key]+"/n")
              }
              //alert(person.name);
              //  alert(json2)
              // console.info(json2)
          })
    })
</script>
