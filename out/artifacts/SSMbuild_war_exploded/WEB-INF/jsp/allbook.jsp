<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询所有</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表---查询所有</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a href="${pageContext.request.contextPath}/book/goaddbook" class="btn btn-primary btn-lg">新增书籍</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <div class="form-inline">
                <form action="${pageContext.request.contextPath}/book/queryBooksEvery" method="post" style="float:right">
                    <input type="text" name="bookName" class="form-control" placeholder="请输入查询的内容...">
                    <input type="submit" value="查询" class="btn btn-primary btn-sm">
                </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍id</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍内容</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/updatebook?bookID=${book.bookID}" class="btn btn-warning">修改书籍</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/book/deletebook?bookID=${book.bookID}" class="btn btn-danger">删除书籍</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<span style="color: brown;font-size: 100px">${error}</span>
</body>
</html>
