<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<style>
    strong {
        text-align: center;
    }

    head {
        text-align: center;
    }

    div {
        text-align: center;
        font-size: large;
        padding: 15px
    }

    br {
        text-align: center;
    }

    body {
        text-align: center;
    }

    span, input {
        margin: 5px;
    }

    button {
        display: inline-block;
    }

    .jumbotron {
        padding-top: 10px !important;
        padding-bottom: 10px !important;
    }
</style>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Form</title>
    <sec:authentication var="principal" property="principal"/>

</head>

<body>
<div class="jumbotron">
    <h1>Hello ${principal.username}</h1>
    <h3>Welcome To Task Manager</h3>
</div>
<div>
    <form method="get" action="/all">
        <button class="btn btn-primary btn-lg" type="submit">See All Tasks</button>
    </form>
</div>
<div>
    <button type="button" class="btn btn-danger wrapper" onclick="window.location='/logout'">Logout</button>
</div>

</body>

</html>