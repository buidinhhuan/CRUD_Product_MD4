<%--
  Created by IntelliJ IDEA.
  User: buidinhhuan
  Date: 10/08/2023
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Chi tiết sản phẩm</title>
</head>
<body>
<c:forEach items="${product.imageUrls}" var="url">
    <img width="20%" height="auto" style="object-fit: cover" src="<%=request.getContextPath()%>/image/${url}" alt="url">
</c:forEach>

</body>
</html>
