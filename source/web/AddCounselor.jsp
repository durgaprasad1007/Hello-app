<HTML> 
<body>
       <jsp:include page="Header.html"/>
        <!-- My login page-->		
        <form action="/CollegeFeeMgmt/StoreCounselor.jsp" method="post" name="frm">
        <table border=0 bgcolor="lightgreen" > 
            <caption>Counselor Details</caption>
             
            <tr>
                <td>Counselor Name</td>
                <td><input type="text" name=txtCoun></td>
            </tr>

           
            <tr>
                <td>Branch</td>
                <td><input type="text" name=txtBranch></td>
            </tr>
            
            <tr>
                <td>Mobile</td>
                <td><input type="text" name=txtMobile></td>
                
            </tr>
            
            <tr>
                <td>Email</td>
                <td><input type="email" name=txtEmail></td>
                
            </tr>
           
            <tr>
                <td  colspan=2 align=center>
                    <input type="submit" value=AddCounselor></td>

            </tr>

        </table>

        </form>

   <a href="javascript:window.history.back()">Back</a>
    
     <jsp:include page="Footer.html"/>
</HTML>