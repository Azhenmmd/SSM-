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
</head>
<body>
查询书籍<br>
<tr>
    <th>书籍id</th>
    <th>书籍名字</th>
    <th>书籍数量</th>
    <th>书籍内容</th>
</tr>
<c:forEach var="book" items="${books}">
    <tr>
        <td>${book.bookID}</td>
        <td>${book.bookName}</td>
        <td>${book.bookCounts}</td>
        <td>${book.detail}</td>
    </tr>
</c:forEach>
</body>
</html>
