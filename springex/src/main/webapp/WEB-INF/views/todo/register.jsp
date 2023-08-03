<%--
  Created by IntelliJ IDEA.
  User: 킴
  Date: 2023-08-02
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>Hello, world!</title>
</head>

<body>
<div class="container-fluid">
  <div class="row">
    <!-- 기존의 <h1>Header</h1> -->
    <div class="row">
      <div class="col">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
                <a class="nav-link" href="#">Features</a>
                <a class="nav-link" href="#">Pricing</a>
                <a class="nav-link disabled">Disabled</a>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
<div class="card-body">
<form action="/todo/register" method="post">
  <div class="input-group mb-3">
    <span class="input-group-text">Title</span>
    <input type="text" name="title" class="form-control" placeholder="Title">
  </div>

  <div class="input-group mb-3">
    <span class="input-group-text">DueDate</span>
    <input type="date" name="dueDate" class="form-control" placeholder="Writer">
  </div>

  <div class="input-group mb-3">
    <span class="input-group-text">Writer</span>
    <input type="text" name="writer" class="form-control" placeholder="Writer">
  </div>
  <div class="my-4">
    <div class="float-end">
      <button type="submit" class="btn btn-primary">Submit</button>
      <button type="result" class="btn btn-secondary">Reset</button>
    </div>
  </div>
</form>
  <script>
    const serverValidResult ={}
    <c:forEach items ="${errors}" var ="error">
    serverValidResult['${error.getField()}'] = '${error.defaultMessage}'
    </c:forEach>
    console.log(serverValidResult)
  </script>
</div>
</body>
</html>