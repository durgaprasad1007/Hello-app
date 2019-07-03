<html>
    <head>
        <title>Demo of tables</title>
         <style>

       </style>
        <script>
        function verify()
        {
         var us=frm.txtUsr.value
         var ps=frm.txtPwd.value
         var em=frm.txtEmail.value
         var no=frm.txtMobile.value
            if(us.length==0)
            {
               alert("User name is requiered");
                return false;
            }
            var regexp = /^[A-Za-z]+$/;// regular expressions for pattern
            if(!regexp.test(us))
            {
                alert('Invalid Name.');
                return false;
            }
	   if(ps.length==0)
            {
                alert("U should enter password");
                return false;
            }

            if(ps.length<5)
            {
                alert("password should not be lessthan 5 characters");
                return false;
            }
            if(em.indexOf("@")==-1 || em.indexOf(".")==-1)
            {
                alert("Invalid Mail Id");
                return false;
            }

            if(no.length<10 || no.length>10)
            {
                alert("phone number should be 10 digits");
                return false;
            }

            if(isNaN(no))
            {
                alert("phone number should contain digits only");
                return false;
            }
            return true;
        }
    
        </script>

    </head>
    <table align="center" border="0" width="70%">
            <tr><td colspan="2" height="125" align="center" style="background: lavender"><img height="120" width="40%" src="logo.png"></td></tr>
            <tr>       
                <td height="350" colspan="2" align="center" style="background:skyblue">
                    
    <body>
        <!-- My login page-->		
        <form action="/CollegeFeeMgmt/StoreUser.jsp" method="post" name="frm">
        <table border=0 bgcolor="lightpink" > 
            <caption>User Details</caption>
            <tr>
                <td>user name</td>
                <td><input type="text" name=txtUsr></td>
            </tr>

            <tr>
                <th><i>password</i></th>
                <td><input type="password" name=txtPwd></td>
            </tr>
             <tr>
                <th><i>mail</i></th>
                <td><input type="email" name=txtEmail></td>
            </tr>
            <tr>
                <th><i>mobile</i></th>
                <td><input type="text" name=txtMobile></td>
            </tr>
            <tr>
                
                <td><input type= hidden  name="txtRole" value='student'></td>
            </tr>

           
            <tr>
                <td  colspan=2 align=center>
                    <input type="submit" value=Register onclick="return verify()"><a href=AdminHome.html>Back</a></td>

            </tr>

        </table>

        </form>

    </body>
    </tr>
    <tr><td colspan="2" align="center" style="background:aqua;color:indigo"></td></tr>
</table>
	
</html>