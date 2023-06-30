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
    <title>Bike</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<br>
<form:form method="post" class="container" action="/bike/update?id=${id}" modelAttribute="bike">
    <div class="row">
        <div class="mb-3 mt-3 col-6">
            <form:label path="name" class="form-label">Name:</form:label>
            <form:input path="name" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="price" class="form-label">Price:</form:label>
            <form:input path="price" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="quantity" class="form-label">Quantity:</form:label>
            <form:input path="quantity" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="categories.id" class="form-label">Category:</form:label>
            <form:select path="categories.id" class="form-select">
                <form:options items="${categories}" itemValue="id" itemLabel="name"/>
            </form:select>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="frame" class="form-label">Frame:</form:label>
            <form:input path="frame" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="rim" class="form-label">Rim:</form:label>
            <form:input path="rim" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="sizeF" class="form-label">Size frame:</form:label>
            <form:input path="sizeF" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="sizeR" class="form-label">Size rim:</form:label>
            <form:input path="sizeR" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="materialF" class="form-label">Material frame:</form:label>
            <form:input path="materialF" class="form-control"/>
        </div>
        <div class="mb-3 mt-3 col-6">
            <form:label path="materialR" class="form-label">Material rim:</form:label>
            <form:input path="materialR" class="form-control"/>
        </div>
    </div>
    <form:button type="submit" class="btn btn-primary" onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;else alert('Thành công')">Update</form:button>
</form:form>
</body>
</html>