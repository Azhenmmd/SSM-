
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">

    <!-- 引入 layui.js -->
    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>登录</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/user/login" method="post">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" name="username" required placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="text" class="form-control" name="password" required placeholder="请输入密码">
        </div>
        <input type="submit" class="btn btn-default" value="登录">
    </form>
    <br>
        <a href="register.jsp" class="btn btn-default">注册</a>
</div>
</body>
</html>
