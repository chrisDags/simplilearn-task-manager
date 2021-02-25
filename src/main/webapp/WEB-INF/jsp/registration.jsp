<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        font-size: large
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

    .alert {
        display: inline-block;
    }
</style>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration Form</title>
    <h1>Create New Account</h1>
</head>
<body>
<form accept-charset="utf-8" method="post" action="/register">
    <div class="form-group">

        <div>Username: <input id="user" type="text" name="username" minlength="3" maxlength="32" required><br></div>
        <div>Password: <input id="password" type="password" name="password" minlength="3" maxlength="32" required><br>
        </div>
        <div style="padding-left: 30px">Email: <input id="email" type="email" name="email" required><br></div>
        <button type="submit" class="btn btn-success">Register</button>
        <br>
    </div>
</form>
<div style="margin-top: 10px">
    <button type="button" class="btn btn-primary" onclick="window.location='/login'">Back To Login</button>
</div>

<div>
    <c:if test="${not empty message}">
        <h2 class="alert alert-danger">${message}</h2>
    </c:if>
</div>
</body>
</html>