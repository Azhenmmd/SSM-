<%--
  Created by IntelliJ IDEA.
  User: gzz
  Date: 2021/9/23
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>修改书籍</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/doUpdatebook" method="post">
        <div class="form-group">
            <label>书籍id</label>
            <input type="text" class="form-control" name="bookID" value="${book.bookID}" readonly="true" required>
        </div>
        <div class="form-group">
            <label>书籍名字</label>
            <input type="text" class="form-control" name="bookName" value="${book.bookName}" required>
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" class="form-control" name="bookCounts" value="${book.bookCounts}" required>
        </div>
        <div class="form-group">
            <label>书籍详情</label>
            <input type="text" class="form-control" name="detail" value="${book.detail}" required>
        </div>
        <input type="submit" class="btn btn-default" value="修改">
    </form>
</div>
</body>
</html>
