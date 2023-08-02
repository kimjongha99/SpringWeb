<%--
  Created by IntelliJ IDEA.
  User: 킴
  Date: 2023-08-02
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>Hello, world!</title>
</head>

<body>
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
  <div class="input-group mb-3">
    Finished: <input type="checkbox" name="finished">

  </div>
  <div class="my-4">
    <div class="float-end">
      <button type="submit" class="btn btn-primary">Submit</button>
      <button type="result" class="btn btn-secondary">Reset</button>
    </div>
  </div>
</form>
</body>
</html>