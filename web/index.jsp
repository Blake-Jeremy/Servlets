<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 2/22/2020
  Time: 5:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <style>
      div {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
      }
    </style>
    <title>$Title$</title>
  </head>
  <body>
    <h3>Servlet Pages</h3>
    <div>
    <ul style="list-style-type:none;">
      <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
      <li><a href="${pageContext.request.contextPath}/Servlet">Servlet</a></li>
    </ul>
    </div>
  </body>
</html>
