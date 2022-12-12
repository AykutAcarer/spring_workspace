<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Student Form</title>
    <style>
    	.error {color:red}
    </style>
  </head>
  <body>
    <div class="container-sm conatiner-md container-lg container-xl">
        <div class="d-flex flex-column bd-highlight mb-3">
            <div class="p-2 bd-highlight">
                <nav class="d-flex justify-content-between navbar navbar-expand-lg navbar-light bg-light">
                    <a href="/spring_mvc_demo" class="navbar-brand">Logo</a>
                    <a href=showStudentList class="nav-link">Student List</a>                    
                </nav>
            </div>
            <div class="p-2 bd-highlight">
                <div class="d-flex flex-column  align-items-center">
                    <div>
                        <h3>Student-Form</h3>
                    </div>
                    <div class="w-25">
                        <form:form action="showStudentList" modelAttribute="student">
                          <div class="form-group">
                              <label for="firstName">First Name (*)</label>
                              <form:input type="text" class="form-control" path="firstName"/>
                              <form:errors path="firstName" class="error"/>
                              
                          </div>
                          <div class="form-group">
                              <label for="lastName">Last Name (*)</label>
                              <form:input type="text" class="form-control" path="lastName"/>
                               <form:errors path="lastName" class="error"/>
                              
                          </div>
                          <div class="form-group">
                              <label for="schoolNumber">School Number</label>
                              <form:input type="text" class="form-control" path="schoolNumber"/>
                              <form:errors path="schoolNumber" class="error"/>
                              
                          </div>
                          
                           <div class="form-group">
                              <label for="email">E-Mail Addresse</label>
                              <form:input type="text" class="form-control" path="email"/>
                              <form:errors path="email" class="error"/>
                              
                          </div>
                          
                          <div class="form-group">
                              <label for="studentCode">Student Code</label>
                              <form:input type="text" class="form-control" path="studentCode"/>
                              <form:errors path="studentCode" class="error"/>
                              
                          </div>
                          
                          <div class="form-group">
                              <label for="country">Country</label>
                              <form:select path="country">
                              			<form:options items="${student.countryOptions}"/>
                              </form:select>                             
                          </div>
                          
                          <div class="form-group">
                              
                              <form:radiobuttons path="programmingLanguage" items="${student.languageOptions}"/>                         
                          </div>
                          
                           <div class="form-group">
                              
                             	MS Windows<form:checkbox path="operatingSystems" value="MS Windows"/>
                             	Linux<form:checkbox path="operatingSystems" value="Linux"/>
                             	Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
                                                
                          </div>
                          
                          <div class="form-group">
                          		<button type="submit" name="submit" class="btn btn-primary">Submit</button>
                          </div>
                        </form:form>
                        
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