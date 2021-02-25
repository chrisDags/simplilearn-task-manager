<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%! final private static String CURRENT_DATE = "yyyy-MM-dd"; %>
<%
    Date date = new Date();
    String currentDate = new SimpleDateFormat(CURRENT_DATE).format(date);
    pageContext.setAttribute("currentDate", currentDate);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<style>
    strong {
        text-align: center;
    }

    head {
        text-align: center;
    }

    h1 {
        text-align: center;
    }

    h2 {
        text-align: center;
    }

    div {
        text-align: center;
        font-size: large;
        padding: 10px
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
        margin-left: 0;
        margin-right: 0
    }
</style>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Create Task</title>
    <h1>Create New Task</h1>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<form method="post" action="/create">
    <div>

        <div>
            <h2>Task Name</h2><input required id="taskName" type="text" name="taskName" minlength="1" maxlength="32"
                                     required placeholder="Task Name"><br>
        </div>
        <div>
            <h2>Task Description</h2><input style="width: 1000px;" required id="taskDescription" type="text"
                                            placeholder="Description" name="description" minlength="3" maxlength="150"
                                            required><br>
        </div>


        <div>
            <h2>Severity</h2>
            <select required name="severity" id="severity">
                <option value="low">low</option>
                <option value="medium">medium</option>
                <option value="high">high</option>
            </select>
        </div>
        <div>
            <h2>Select Start Date</h2>
            <input required type="date" id="start" name="startDate"
                   value="${currentDate}"
                   min="${currentDate}">
        </div>
        <div>
            <h2>Select End Date</h2>
            <input required type="date" id="end" name="endDate"
                   value="${currentDate}"
                   min="${currentDate}">
        </div>
    </div>

    <div>
        <button type="submit" class="btn btn-primary btn-lg">Create Task</button>
        <br>
    </div>
</form>

<div>
    <c:if test="${!message.equals('') && message != null}">
        <h2 class="alert alert-danger">${message}</h2>
    </c:if>
</div>
</body>
</html>