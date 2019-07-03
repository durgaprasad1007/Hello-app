
<html>
    <head>
        <title>College Fee Management</title>
    </head>
    <jsp:include page="Header.html"/>
                    
    Welcome to : <%=session.getAttribute("username")%><br><br>
    
   <br><br>
    
       
        <br><a href=/CollegeFeeMgmt/AddStudents.jsp>Add Student</a>
        <br><a href=/CollegeFeeMgmt/AddCounselor.jsp>Add Counselor</a>
        
        <br><a href=/CollegeFeeMgmt/viewStudents.jsp>View Students</a>      
      
   
   <jsp:include page="Footer.html"/>

</html>