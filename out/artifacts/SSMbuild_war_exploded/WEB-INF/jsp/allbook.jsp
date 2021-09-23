<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gzz
  Date: 2021/9/22
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                            <a href="${pageContext.request.contextPath}/book/updatebook" class="btn btn-warning">修改书籍</a>
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
</body>
</html>
