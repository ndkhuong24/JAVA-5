<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Bike</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<table class="table container">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Number</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${sanPhamTrongGio}" var="sp">
        <tr>
            <td>${sp.key}</td>
            <td>${sp.value}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>