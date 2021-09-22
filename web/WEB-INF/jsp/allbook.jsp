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
                </tr>
                </thead>

                <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
</html>
