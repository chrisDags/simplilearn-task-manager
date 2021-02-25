<jsp:useBean id="task" scope="request" class="com.dags.simplilearntaskmanager.entity.Task"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="message" scope="request" type="java.lang.String"/>

<c:if test="${task == null}">
    <c:redirect url="http://localhost:8080"/>
</c:if>

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

    .center {
        text-align: center;
        font-size: large;
        margin-left: auto;
        margin-right: auto;
    }
</style>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Task ${task.getId()}</title>
    <h1>Make Your Changes</h1>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<fmt:formatDate pattern="yyyy-MM-dd" value="${task.getStartDate()}" var="myStartDate"/>
<fmt:formatDate pattern="yyyy-MM-dd" value="${task.getEndDate()}" var="myEndDate"/>
<form method="post" action="/task/create/${task.getId()}">
    <div class="center">
        <div>
            <h2>Task Name</h2>

            <input id="taskName" type="text" name="taskName" minlength="1" maxlength="32" required
                   value="${task.getTaskName()}"><br></div>
        <div>
            <h2>Task Description</h2>
            <input style="width: 1000px;" id="taskDescription" type="text"
                   value="${task.getDescription()}" name="description"
                   minlength="3" maxlength="150" required><br>
        </div>
        <div>
            <h2>Severity</h2>
            <c:if test="${task.getSeverity().equals('low')}">
                <label for="severity"></label><select name="severity" id="severity">
                <option value="low" selected="selected">${task.getSeverity()}</option>
                <option value="medium">medium</option>
                <option value="high">high</option>
            </select>
            </c:if>
            <c:if test="${task.getSeverity().equals('high')}">
                <label for="severity"></label><select name="severity" id="severity">
                <option value="low">low</option>
                <option value="medium">medium</option>
                <option value="high" selected="selected">${task.getSeverity()}</option>
            </select>
            </c:if>
            <c:if test="${task.getSeverity().equals('medium')}">
                <label for="severity"></label><select name="severity" id="severity">
                <option value="low">low</option>
                <option value="medium" selected="selected">${task.getSeverity()}</option>
                <option value="high">high</option>
            </select>
            </c:if>
            <c:if test="${task.getSeverity() == null}">
                <label for="severity"></label><select name="severity" id="severity">
                <option value="low">low</option>
                <option value="medium">medium</option>
                <option value="high">high</option>
            </select>
            </c:if>
        </div>

        <div>
            <h2>Start Date</h2>
            <input type="date" id="start" name="startDate"
                   value="${myStartDate}"
                   min="${myStartDate}">
        </div>
        <div>
            <div>
                <h2>End Date</h2>
                <input type="date" id="end" name="endDate"
                       value="${myEndDate}"
                       min="${myStartDate}">
            </div>


            <div>
                <button type="submit" class="btn btn-primary">Submit Changes</button>
                <br>
            </div>
        </div>
    </div>
</form>
<div>
    <c:if test="${!message.equals('')}">
        <h2 class="alert alert-danger">${message}</h2>
    </c:if>
</div>
</body>

</html>