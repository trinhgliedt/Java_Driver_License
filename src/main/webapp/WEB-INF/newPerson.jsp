<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
            <div class="row">
                <div class="col-6">
                    <div class="row my-2">
                        <h1>New Person</h1>
                    </div>
                    <form:form action="/persons" method="post" modelAttribute="person">
                    	<div class="row my-2">
	                        <div class="col-6">First Name: </div>
	                        <form:input path="firstName" class="col-6" name="firstName"/>
	                    </div>
	                    <div class="row my-2">
	                        <div class="col-6">Last Name: </div>
	                        <form:input path="lastName" class="col-6" name="lastName"/>
	                    </div>
	                    <div class="row my-2 justify-content-end">
	                        <div class="col-3">
	                            <Button class="btn btn-primary" type="submit">Create</Button>
	                        </div>
	                    </div>
                    </form:form>
                </div>
            </div>
        </div>
</body>
</html>