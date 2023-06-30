<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg container">
    <div class="container-fluid">
        <a class="navbar-brand" href="/bike">Bike shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/bike">Bike</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/category">Category</a>
                </li>
            </ul>
            <div class="d-flex">
                <button class="btn btn-secondary" type="submit" style="margin-right: 10px">
                    <a href="/cart" style="color: white;text-decoration: none">Cart</a>
                </button>
                <button class="btn btn-secondary" type="submit">Log out</button>
            </div>
        </div>
    </div>
</nav>