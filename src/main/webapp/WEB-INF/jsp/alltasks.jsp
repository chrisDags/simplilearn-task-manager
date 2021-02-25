<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        font-size: large;
    }

    br {
        text-align: center;
    }

    body {
        text-align: center;
    }

    table {
        text-align: center;
        margin-left: auto;
        margin-right: auto;
        overflow-y: auto
    }

    span, input {
        margin: 5px;
    }

    .test {
        width: 18rem;
        display: flex;
        justify-content: space-between;
        overflow: auto;
        white-space: nowrap;
        margin: 0px auto;
    }
</style>


<head>
    <sec:authentication var="principal" property="principal"/>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Tasks</title>
    <h1>${principal.username}'s Task List</h1>
</head>

<body>


<div style="margin-bottom: 30px">
    <table class="table" width="80%">
        <thead>
        <tr>
            <th>Task Name</th>
            <th>Task Description</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Severity</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <jsp:useBean id="tasks" type="java.util.List" scope="request"/>
        <c:forEach items="${tasks}" var="task">
            <tr>
                <td>${task.getTaskName()}</td>
                <td>${task.getDescription()}</td>
                <td><fmt:formatDate pattern="MM/dd/yyyy" value="${task.getStartDate()}"/></td>
                <td><fmt:formatDate pattern="MM/dd/yyyy" value="${task.getEndDate()}"/></td>
                <td>${task.getSeverity()}</td>
                <td>
                    <button type="button" style="padding-left: 20px; padding-right: 20px; float: left;"
                            class="btn btn-primary" onclick="window.location='/task/${task.getId()}'">Edit
                    </button>

                    <form method="post" action="/task/delete/${task.getId()}">
                        <button class="btn btn-danger" type="submit">Remove</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div class="test">
    <button type="button" class="btn btn-primary wrapper" onclick="window.location='/'">Back to index</button>

    <form method="get" action="/create">
        <button class="btn btn-success" type="submit">Add New Task</button>
    </form>
</div>

<div style="padding: 30px">
    <form method="post" action="/logout">
        <button class="btn btn-danger" type="submit">Logout</button>
    </form>
</div>


</body>

</html>