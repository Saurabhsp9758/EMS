<%@page import="com.sp.app.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

  function deleteData()
  {
	  alert("Deleting Data...!");
	  document.myForm.action="delete";
	  document.myForm.submit();
  }

   function editData()
   {
	   alert("Editing Data...!");
	   document.myForm.action="edit";
	   document.myForm.submit();
   }

</script>


</head>
<body>
     <h1 align="center">WELCOME TO SUCCESS PAGE...!</h1>
     
     <% List<Employee> empList = (List<Employee>) request.getAttribute("data"); %>     
     
     <div align="center">
        <form name="myForm">
          <table border="2px">
          
           <thead>
            <tr>
              <th>SELECT</th>
              <th>Id</th>
              <th>First Name</th>
              <th>Middle Name</th>
              <th>Last Name</th>
              <th>BirthDate</th>
              <th>EmailId</th>
              <th>Designation</th>
              <th>Age</th>
            </tr>
            </thead>
            
            <tbody>
                 <% for( Employee employee : empList  ) {%>
                 
             <tr>
               <td><input type="radio" name="id" value="<%=employee.getEid()%>"></td>
               <td><%=employee.getEid()%></td>
               <td><%=employee.getFirstName()%></td>
               <td><%=employee.getMiddleName()%></td>
               <td><%=employee.getLastName()%></td>
               <td><%=employee.getBirthDate()%></td>
               <td><%=employee.getEmailId()%></td>
               <td><%=employee.getDesignation()%></td>
               <td><%=employee.getAge()%></td>                   
             </tr>  
             
                <% } %> 
            </tbody>
          </table>
          
           <br><br>
          
           <button onclick="editData()">EDIT</button>
           <button onclick="deleteData()">DELETE</button>
           
        </form>
     </div>
 
</body>
</html>