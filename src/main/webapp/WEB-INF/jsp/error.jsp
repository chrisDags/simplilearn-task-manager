<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--

    NOTE: our instructor did not specify that we needed an error page, so I opted for a redirect because I think
    this provides a better experience for the user. Some web apps that I have used have redirected the user to the
    previous page instead of displaying a traditional 404 error page, so I wanted to incorporate this in my own
    application.

    Certain errors will redirect back to to this url.

    For example:
    if a user enters jibberish in the url bar while they are on the tasklist page (such as 'localhost:8080/cats')
    they are redirected back to the welcome page. (index.jsp)

--%>
<c:redirect url="http://localhost:8080"/>
<html>
</html>