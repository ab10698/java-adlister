<%--
  Created by IntelliJ IDEA.
  User: macuser
  Date: 2/27/20
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<form action="/login.jsp" method="POST">
    <label for="username">username</label>
    <input type="text" name="username" id="username">
    <label for="password">password</label>
    <input type="password" name="password" id="password">
    <button>Login</button>
</form>

    <%

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);

        if(username != null && username.equals("admin") &&
        password != null && password.equals("password"))
            response.sendRedirect("/profile.jsp");
//            RequestDispatcher req = request.getRequestDispatcher("/profile.jsp");
    %>

</body>
</html>
