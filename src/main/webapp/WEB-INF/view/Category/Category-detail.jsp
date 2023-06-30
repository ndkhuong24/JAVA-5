<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Category</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Bike</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<br>
<form:form method="post" class="container" action="/category/update?id=${id}" modelAttribute="category">
    <div class="row">
        <div class="mb-3 mt-3 col-4">
            <form:label path="name" class="form-label">Name:</form:label>
            <form:input path="name" class="form-control"/>
        </div>
    </div>
    <form:button type="submit" class="btn btn-primary">Update</form:button>
</form:form>
</body>
</html>