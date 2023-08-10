<%--
  Created by IntelliJ IDEA.
  User: buidinhhuan
  Date: 08/08/2023
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>New Product</h1>
<form action="<%=request.getContextPath()%>/ProductController" method="post">
    <label for="id">ID</label>
    <input type="text" id="id" disabled value="${product.id}">
    <input type="hidden" name="id" value="${product.id}">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" value="${product.name}" >
    <label for="des">Description</label>
    <textarea type="text" id="des" name="des">${product.descriptions}</textarea>
    <br>
    <label for="price">Price</label>
    <input type="number" id="price" name="price"value="${product.price}" >
    <label for="stock">Stock</label>
    <input type="number" id="stock" name="stock" value="${product.stock}">
    <br>
    <label >imageUrl</label>
    <textarea name="img" cols="30" rows="10">${product.imageUrl}</textarea>
    <label >Status</label>
    <input type="radio" name="status" checked="${product.status}" value="true"><span>Còn hàng</span>
    <input type="radio" name="status" checked="${!product.status}" value="false"><span>Hết hàng</span>
     <input type="submit" value="UPDATE" name="action"/>
</form>
</body>
</html>
