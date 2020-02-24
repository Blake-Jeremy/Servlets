<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 2/22/2020
  Time: 5:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        input[type=text], select, input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
        .error {
            color:crimson;
            background-color:#f1f1f1;
        }
    </style>
    <title>Title</title>
</head>
<body>
    <h3>Enter Login Information Here:</h3>
    <div>
        <form action="Servlet" method="post">
            <label for="uname">First Name</label>
            <input type="text" id="uname" name="username" placeholder="Your username..">

            <label for="pword">Password</label>
            <input type="password" id="pword" name="password" placeholder="Your password..">

            <label for="country">Server</label>
            <select id="country" name="country">
                <option value="japan">Japan</option>
                <option value="canada">Canada</option>
                <option value="usa">USA</option>
            </select>

            <input type="submit" value="Login">
        </form>
        <p class="error">${errorMessage}</p>
        <p><a href="${pageContext.request.contextPath}/index.jsp">Return Home</a></p>
    </div>
</body>
</html>
