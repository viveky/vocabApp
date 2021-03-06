<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<head>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>
<div id="wrap">
    <div id="left">
    </div>

    <div id="right">
    </div>
    <div id="top" align="center">
        <%
            UserService userService = UserServiceFactory.getUserService();
            User user = userService.getCurrentUser();
            if (user != null) {
        %>
        <ul>
            <li><a href="/jsp/search">Search</a></li>
            <li><a href="/jsp/current">Current Words</a></li>
            <li><a href="/jsp/listall">All Words</a></li>
            <li><a href="/jsp/add">Bulk Add</a></li>
            <li><a href="<%= userService.createLogoutURL("/") %>">Sign Out</a></li>
        </ul>
        <%
        } else {
        %>
        <a href="/jsp/search">Sign In</a>
        <%
            }
        %>
    </div>

