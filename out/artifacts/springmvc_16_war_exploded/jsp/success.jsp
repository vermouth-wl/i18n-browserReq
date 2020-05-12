<%--
  Created by IntelliJ IDEA.
  User: q1591
  Date: 2020-05-12
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>注册成功</title>
</head>
<body>
<font color="#1e90ff">
    <h4><spring:message code="welcome" arguments="${requestScope.user.username}"/></h4>
    <spring:message code="info"/><br>
    <spring:message code="password"/>${requestScope.user.password}<br>
    <spring:message code="age"/>${requestScope.user.age}<br>
    <spring:message code="email"/>${requestScope.user.email}<br>
    <spring:message code="phone"/>${requestScope.user.phone}<br>
</font>
</body>
</html>
