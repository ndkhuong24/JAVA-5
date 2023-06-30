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
<form:form method="post" class="container" action="/category/add" modelAttribute="category">
    <div class="row">
        <div class="mb-3 mt-3 col-4">
            <form:label path="name" class="form-label">Name:</form:label>
            <form:input path="name" class="form-control"/>
        </div>
    </div>
    <form:button type="submit" class="btn btn-primary">Add</form:button>
</form:form>
<br>
<c:if test="${categoriesList.isEmpty()}">
    <div class="container">
        <h4>Trống !</h4>
    </div>
</c:if>
<c:if test="${not categoriesList.isEmpty()}">
    <table class="table table-bordered container align-middle">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${categoriesList.getContent()}" var="ct">
            <tr>
                <td>${ct.name}</td>
                <td>
                    <button class="btn btn-info"><a style="color: white;text-decoration: none"
                                                    href="/category/delete/${ct.id}">Delete</a></button>
                    <button class="btn btn-info"><a style="color: white;text-decoration: none"
                                                    href="/category/update/${ct.id}">Update</a></button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <ul class="pagination container d-flex justify-content-center">
        <c:if test="${categoriesList.getNumber() gt 0}">
            <li class="page-item">
                <a class="page-link" href="?page=1">First</a>
            </li>
        </c:if>

        <c:if test="${categoriesList.getNumber() gt 0}">
            <li class="page-item">
                <a class="page-link" href="?page=${categoriesList.getNumber()}">Previous</a>
            </li>
        </c:if>

        <li class="page-item">
            <a class="page-link"> ${categoriesList.getNumber() + 1} / ${categoriesList.getTotalPages()} </a>
        </li>

        <c:if test="${categoriesList.getNumber() lt categoriesList.getTotalPages() - 1}">
            <li class="page-item">
                <a class="page-link" href="?page=${categoriesList.getNumber() + 2}">Next</a>
            </li>
        </c:if>

        <c:if test="${categoriesList.getNumber() lt categoriesList.getTotalPages() - 1}">
            <li class="page-item">
                <a class="page-link" href="?page=${categoriesList.getTotalPages()}">Last</a>
            </li>
        </c:if>
    </ul>
</c:if>
<%--<jsp:include page="../layout/footer.jsp"></jsp:include>--%>
</body>
</html>