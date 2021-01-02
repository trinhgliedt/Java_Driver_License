<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
              
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
                        <h1><c:out value="${person.firstName} ${person.lastName}" /></h1>
                    </div>
                    <div class="row my-2">
                        <div class="col-6">License Number: </div>
                        <div class="col-6"><c:out value="${license.number}" /></div>
                    </div>
                    <div class="row my-2">
                        <div class="col-6">State: </div>
                        <div class="col-6"><c:out value="${license.state}" /></div>
                    </div>
                    <div class="row my-2">
                        <div class="col-6">Expiration Date: </div>
                        <div class="col-6"><fmt:formatDate type="date" value="${license.expirationDate}" /></div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>