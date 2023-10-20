<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="DbProperties.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
%>

<c:set var="firstName" value="<%=firstName%>"/>
<c:set var="lastName" value="<%=lastName%>"/>
<sql:update dataSource="${db}" var="table">
    INSERT INTO STUDENTS (FIRST_NAME, LAST_NAME) VALUES (?, ?)
    <sql:param value="${firstName}" />
    <sql:param value="${lastName}" />
</sql:update>

<a href="./index.jsp">Home</a>

</body>
</html>
