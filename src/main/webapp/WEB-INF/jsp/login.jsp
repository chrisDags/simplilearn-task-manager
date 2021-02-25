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
</style>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Form</title>
    <h1>Please Sign In</h1>
</head>
<body>
<form accept-charset="utf-8" method="post" action="/login">
    <div>
        Username: <input id="user" type="text" name="username" minlength="3" maxlength="32" required><br>
        Password: <input id="password" type="password" name="password" minlength="3" maxlength="32" required><br>
        <button type="submit" class="btn btn-primary">Login</button>
        <br>
    </div>
    &nbsp;
    <div>
        <button type="button" class="btn btn-success" onclick="window.location='/registration'">Create New Account
        </button>
    </div>
</form>
</body>
</html>