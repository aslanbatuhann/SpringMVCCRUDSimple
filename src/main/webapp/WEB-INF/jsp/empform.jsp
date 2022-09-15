<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Ets Tur Demo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">

  </div>
 
</nav>
 <div width="70%"  height=70%>
  

  </div>
		<h1>Add New User</h1>
       <form:form method="post" action="save">  
      	<table >  
         <tr>  
          <td>First Name : </td> 
          <td><form:input path="firstName"  /></td>
         </tr>  
         <tr>  
          <td>Last Name</td>  
          <td><form:input path="lastName" /></td>
         </tr> 
         <tr>  
          <td>Phone Number :</td>  
          <td><form:input path="phoneNumber" /></td>
         </tr> 
         <tr>  
         <tr>  
          <td>Address :</td>  
          <td><form:input path="address" /></td>
         </tr> 
         <tr>  
          <td>Blood Type :</td>  
          <td><form:input path="bloodType" /></td>
         </tr> 
         <tr> 
         <tr> 
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form:form>
       <div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 mb-0 text-muted">&copy; 2022 Etstur Demo Spring MVC Project, Turkey</p>

    <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
    </a>

 
  </footer>
</div>  
