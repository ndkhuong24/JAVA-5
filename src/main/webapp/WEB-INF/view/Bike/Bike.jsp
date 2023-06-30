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
<br>
<div class="container">
    <form:form method="post" class="container" action="/bike/add" modelAttribute="bike">
        <div class="row">
            <div class="col">
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter name" path="name"/>
                    <form:label class="form-label" path="name">Name:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter price" path="price"/>
                    <form:label class="form-label" path="price">Price:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter frame" path="frame"/>
                    <form:label class="form-label" path="frame">Frame:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter sizeF" path="sizeF"/>
                    <form:label class="form-label" path="sizeF">Size:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter materialF" path="materialF"/>
                    <form:label class="form-label" path="materialF">Chất liệu:</form:label>
                </div>
            </div>
            <div class="col">
                <div class="form-floating mb-3 mt-3 left">
                    <form:select path="categories.id" class="form-select">
                        <form:options items="${categories}" itemValue="id" itemLabel="name"/>
                    </form:select>
                    <form:label class="form-label" path="categories.id">Category:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter quantity" path="quantity"/>
                    <form:label class="form-label" path="quantity">Quantity:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter rim" path="rim"/>
                    <form:label class="form-label" path="rim">Rim:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter sizeR" path="sizeR"/>
                    <form:label class="form-label" path="sizeR">Size:</form:label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <form:input class="form-control" placeholder="Enter materialR" path="materialR"/>
                    <form:label class="form-label" path="materialR">Material:</form:label>
                </div>
            </div>
        </div>
        <form:button type="submit" class="btn btn-primary"
                     onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;else alert('Thành công')">Add</form:button>
    </form:form>
</div>
<br>
<div class="container">
    <form>
        <div class="row">
            <div class="mb-3 mt-3 col-3">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label class="col-form-label">Name:</label>
                    </div>
                    <div class="col-auto">
                        <input class="form-control" name="name" value="${param.name}">
                    </div>
                </div>
            </div>
            <div class="mb-3 mt-3 col-3">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label class="col-form-label">Giá min:</label>
                    </div>
                    <div class="col-auto">
                        <input class="form-control" name="min" value="${param.min}">
                    </div>
                </div>
            </div>
            <div class="mb-3 mt-3 col-3">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label class="col-form-label">Giá max:</label>
                    </div>
                    <div class="col-auto">
                        <input class="form-control" name="max" value="${param.max}">
                    </div>
                </div>
            </div>
            <div class="mb-3 mt-3 col-3">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </div>
    </form>
</div>
<c:if test="${bikeList.isEmpty()}">
    <div class="container">
        <h4>Không có sản phẩm !</h4>
    </div>
</c:if>
<c:if test="${not bikeList.isEmpty()}">
    <table class="table table-bordered container text-center align-middle">
        <thead>
        <tr>
            <th scope="col" rowspan="2" class="align-middle">Name</th>
            <th scope="col" rowspan="2" class="align-middle">Price</th>
            <th scope="col" rowspan="2" class="align-middle">Quantity</th>
            <th scope="col" rowspan="2" class="align-middle">Category</th>
            <th scope="col" colspan="3">Frame</th>
            <th scope="col" colspan="3">Rim</th>
            <th scope="col" rowspan="2" class="align-middle">Action</th>
        </tr>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Size</th>
            <th scope="col">Material</th>
            <th scope="col">Name</th>
            <th scope="col">Size</th>
            <th scope="col">Material</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${bikeList.getContent()}" var="bike">
            <tr>
                <td>${bike.name}</td>
                <td>${bike.price} VND</td>
                <td>${bike.quantity}</td>
                <td>${bike.categories.name}</td>
                <td>${bike.frame}</td>
                <td>${bike.sizeF}</td>
                <td>${bike.materialF}</td>
                <td>${bike.rim}</td>
                <td>${bike.sizeR} inch</td>
                <td>${bike.materialR}</td>
                <td class="btn-group">
                    <button class="btn btn-info"><a style="color: white;text-decoration: none"
                                                    onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;else alert('Thành công')"
                                                    href="/bike/delete/${bike.id}">Delete</a></button>
                    <button class="btn btn-info"><a style="color: white;text-decoration: none"
                                                    href="/bike/update/${bike.id}">Update</a></button>
                    <button class="btn btn-info"><a style="color: white;text-decoration: none"
                                                    href="/cart/add/${bike.id}">Add to cart</a></button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <ul class="pagination container d-flex justify-content-center">
        <c:if test="${bikeList.getNumber() gt 0}">
            <li class="page-item">
                <a class="page-link" href="?name=${param.name}&min=${param.min}&max=${param.max}&page=1">First</a>
            </li>
        </c:if>

        <c:if test="${bikeList.getNumber() gt 0}">
            <li class="page-item">
                <a class="page-link"
                   href="?name=${param.name}&min=${param.min}&max=${param.max}&page=${bikeList.getNumber()}">Previous</a>
            </li>
        </c:if>

        <li class="page-item">
            <a class="page-link"> ${bikeList.getNumber() + 1} / ${bikeList.getTotalPages()} </a>
        </li>

        <c:if test="${bikeList.getNumber() lt bikeList.getTotalPages() - 1}">
            <li class="page-item">
                <a class="page-link"
                   href="?name=${param.name}&min=${param.min}&max=${param.max}&page=${bikeList.getNumber() + 2}">Next</a>
            </li>
        </c:if>

        <c:if test="${bikeList.getNumber() lt bikeList.getTotalPages() - 1}">
            <li class="page-item">
                <a class="page-link"
                   href="?name=${param.name}&min=${param.min}&max=${param.max}&page=${bikeList.getTotalPages()}">Last</a>
            </li>
        </c:if>
    </ul>
</c:if>
</body>
</html>