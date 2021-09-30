<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>注册</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
    <script>
        function a1() {
            var username = $("#username").val();
            if(username==""||username==null){
                $("#usernameboolean").text("用户名不能为空")
                $("#usernameboolean").css("color","blue")
                $("#Rsubmit").attr("disabled",true)
                return
            }
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/usernameBoolean",
                data:{"username":$("#username").val()},
                success:function (result) {
                    console.log(result)
                    if(result=='ok'){
                        $("#usernameboolean").css("color","green")
                        $("#usernameboolean").text("ok")
                        $("#Rsubmit").removeAttr("disabled")
                    }else {
                        $("#usernameboolean").css("color","red")
                        $("#usernameboolean").text("用户名重复，请重新输入")
                        $("#Rsubmit").attr("disabled",true)
                    }
                }
            })
        }
    </script>
    <script>
        function a2() {
            alert("注册成功")
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>注册</small>
                </h1>
            </div>
        </div>
    </div>
<form action="${pageContext.request.contextPath}/user/userRegister" method="post">
    <div class="form-group">
        <label>用户名</label>
        <label>
            <span id="usernameboolean"></span>
        </label>
        <input type="text" class="form-control" id="username" name="username" required onblur="a1()">
    </div>
    <div class="form-group">
        <label>密码</label>
        <input type="password" class="form-control" name="password" required>
    </div>
    <input type="submit" class="btn btn-lg btn-primary" value="注册" disabled="disabled" id="Rsubmit" onclick="a2()">
</form>
    <a href="/login.jsp" class="btn btn-default">返回登录界面</a>
</div>
</body>

</html>
