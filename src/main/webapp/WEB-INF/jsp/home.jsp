<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Artush
  Date: 5/15/2015
  Time: 1:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>
  <meta name="apple-mobile-web-app-capable" content="yes"/>
  <title>Business Manager</title>

</head>
<body >
<h1>Home</h1>

<div align="center">
  <h2>Hello <security:authentication property="principal.username"/> !!!</h2><a href="/logout.htm">Logout</a>
</div>

<h2>Business list</h2>
<ul>
  <c:forEach var="business" items="${businesses}">
    <li>${business.name}</li>
  </c:forEach>
</ul>

</body>
</html>


