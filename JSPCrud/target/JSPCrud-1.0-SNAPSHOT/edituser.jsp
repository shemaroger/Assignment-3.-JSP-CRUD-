<%--
  Created by IntelliJ IDEA.
  User: SHEMA 01
  Date: 2/28/2024
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="Repository.UserDao"%>
<%@ page import="Service.UserService" %>
<%@ page import="ServiceImplemention.UserServiceIMP" %>
<%@ page import="Model.UserJava" %>
<%@ page import="Conroller.HibernateUtil" %>
<jsp:useBean id="u" class="Model.UserJava"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
  UserService service = new UserServiceIMP(HibernateUtil.getSessionFactory());
  UserJava theUser = service.editUser(u);
  response.sendRedirect("viewusers.jsp");
%>