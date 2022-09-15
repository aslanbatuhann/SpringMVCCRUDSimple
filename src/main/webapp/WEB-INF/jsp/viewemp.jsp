    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Ets tur demo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
   
  </div>
</nav>
	<h1>User List</h1>
	<table border="2" width="70%"  cellpadding="2">
	<tr><th>First Name</th><th>Last Name</th><th>Phone Number</th><th>Address</th><th>Blood Type</th></tr>
    <c:forEach var="user" items="${list}"> 
    <tr>
    <td>${user.firstName}</td>
    <td>${user.lastName}</td>
    <td>${user.phoneNumber}</td>
    <td>${user.address}</td>
    <td>${user.bloodType}</td>
    
  
    </tr>
    </c:forEach>
    </table>
    <br/>
    <button type="button" class="btn btn-dark">  <a href="empform">Add New User</a></button>
  
    
    
    <div class="container">

     <footer class="footer" padding=60px>
      <div class="container">
        <span class="text-muted">2022 Etstur Demo Spring MVC Project, Turkey</span>
      </div>
    </footer>
</div>