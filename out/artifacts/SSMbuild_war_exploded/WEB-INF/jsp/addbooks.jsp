<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>添加书籍</title>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>新增书籍</small>
                    </h1>
                </div>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/book/addbook" method="post">
            <div class="form-group">
                <label>书籍名字</label>
                <input type="text" class="form-control" name="bookName" required>
            </div>
            <div class="form-group">
                <label>书籍数量</label>
                <input type="text" class="form-control" name="bookCounts" required>
            </div>
            <div class="form-group">
                <label>书籍详情</label>
                <input type="text" class="form-control" name="detail" required>
            </div>
                <input type="submit" class="btn btn-default" value="添加">
        </form>
    </div>
</body>
</html>
