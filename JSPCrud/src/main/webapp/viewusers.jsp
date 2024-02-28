<%--
  Created by IntelliJ IDEA.
  User: SHEMA 01
  Date: 2/28/2024
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Users</title>
</head>
<body>
<%@ page import="Service.UserService" %>
<%@ page import="ServiceImplemention.UserServiceIMP" %>
<%@ page import="Conroller.HibernateUtil" %>
<%@ page import="Model.UserJava" %>
<%@ page import="java.util.List" %>

<%--<%@page import="Repository.UserDao,MO.*,java.util.*"%>--%>
<%--<%@ page import="Model.UserJava" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<h1>Users List</h1>

<%
    UserService service = new UserServiceIMP(HibernateUtil.getSessionFactory());

    List<UserJava> list = service.allUser();
//    request.setAttribute("list",list);
%>


<table border="1" width="90%">
    <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
        <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
    <%--  <c:forEach items="${list}" var="u">--%>
    <% for(UserJava u :list){ %>
    <tr><td><%=u.getUser_id()%></td><td><%=u.getName()%></td><td><%=u.getPassword()%></td>
        <td><%=u.getEmail()%></td><td><%=u.getSex()%></td><td><%=u.getCountry()%></td>
        <td><a href="editform.jsp?id=<%=u.getUser_id()%>">Edit</a></td>
        <td><a href="deleteuser.jsp?id=<%=u.getUser_id()%>">Delete</a></td></tr>
    <%--  </c:forEach>--%>
    <%
        }
    %>
</table>
<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html>
