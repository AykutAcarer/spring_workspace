<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Students</title>
  </head>
  <body>
    <div class="container-sm conatiner-md container-lg container-xl">
        <div class="d-flex flex-column bd-highlight mb-3">
            <div class="p-2 bd-highlight">
                <nav class="d-flex justify-content-between navbar navbar-expand-lg navbar-light bg-light">
                    <a href="/spring_mvc_demo" class="navbar-brand">Logo</a>
                    <a href="showStudentForm" class="nav-link">Student Form</a>
                    
                </nav>
            </div>
            <div class="p-2 bd-highlight">
                <div class="d-flex flex-column  align-items-center">
                    <div>
                        <h3>Student's Informations</h3>
                    </div>
                    <div class="w-50">
                    
                    	<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">First Name</th>
						      <th scope="col">Last Name</th>
						      <th scope="col">School Number</th>
						      <th scope="col">E-Mail Addresse</th>
						      <th scope="col">Student Code</th>
						      <th scope="col">Country</th>
						      <th scope="col">Programming Language</th>
						      <th scope="col">Operating System</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">1</th>
						      <td>${student.firstName}</td>
						      <td>${student.lastName}</td>
						      <td>${student.schoolNumber}</td>
						      <td>${student.email}</td>
						      <td>${student.studentCode}</td>
						      <td>${student.country}</td>
						      <td>${student.programmingLanguage}</td>
						      <td>
						      		<ul>
						      			<c:forEach var="temp" items="${student.operatingSystems}">
						      				<li>${temp}</li>
						      			</c:forEach>
						      		</ul>
						      </td>
						    </tr>
						  </tbody>
						</table>
                 
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
  </body>
</html>