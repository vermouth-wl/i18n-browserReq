<%--
  Created by IntelliJ IDEA.
  User: q1591
  Date: 2020-05-12
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
    <h3><spring:message code="title"/></h3>
    <!-- 通过<\spring:message/>标签输出国际化信息 -->
    <fm:form modelAttribute="user" action="register" method="post">
        <spring:message code="username"/>
        <fm:input path="username"/><br>
        <spring:message code="password"/>
        <fm:password path="password"/><br>
        <spring:message code="age"/>
        <fm:input path="age"/><br>
        <spring:message code="email"/>
        <fm:input path="email"/><br>
        <spring:message code="phone"/>
        <fm:input path="phone"/><br>
        <input type="submit" value="<spring:message code="submit"/>"/><br>
    </fm:form>
</body>
</html>
