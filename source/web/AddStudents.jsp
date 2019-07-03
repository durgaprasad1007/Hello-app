<html>
    <head>
        <title>Demo of tables</title>
       <style>

       </style>
        

    </head>
     <jsp:include page="Header.html"/>
        <!-- My login page-->		
        <form action="/CollegeFeeMgmt/StoreStudents.jsp" method="post" name="frm">
        <table border=0 bgcolor="lightgreen" > 
            <caption>Student Details</caption>
             
            <tr>
                <td>Student Name</td>
                <td><input type="text" name=txtStud></td>
            </tr>

           
             <tr>
                <th><i>Year</i></th>
                <td><input type="text" name=txtYear></td>
            </tr>
            <tr>
                <th><i>Date Of Birth</i></th>
                <td><input type="text" name=txtDOB></td>
            </tr>
            
            <tr>
                <th><i>Branch</i></th>
                <td><input type="text" name=txtBranch></td>
            </tr>
            
            <tr>
                <th><i>Mobile</i></th>
                <td><input type="text" name=txtMobile></td>
                
            </tr>
            
            <tr>
                <th><i>Email</i></th>
                <td><input type="email" name=txtEmail></td>
                
            </tr>
                
            
             
            
           
            <tr>
                <td  colspan=2 align=center>
                    <input type="submit" value=Add ></td>

            </tr>

        </table>

        </form>

   <center>
       <a href="javascript:window.history.back()">Back</a>
       </center>

 <jsp:include page="Footer.html"/>
</html>