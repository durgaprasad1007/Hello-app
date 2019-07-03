<html>
    <head>
        <script>
            function verify()
            {
                var su=frm.txtUsr.value;
                var sp=frm.txtPwd.value;
                if(su.length==0)
                {
                    alert("U should enter username");
                    return false;
                }

                if(sp.length==0)
                {
                    alert("U should enter password");
                    return false;
                }   
            
            }
            
        </script>
        <title>Login Form</title>
    </head>
    <body>
       <jsp:include page="Header.html"/>
                    <!-- Body Start-->
            <center><h1>Login Form</h1>
                <form action="/CollegeRegulations/Checkuser.jsp" method="post" name="frm">
                    <table border=0  bgcolor="lightgreen"> 
                        <caption>User Details</caption>
                        <tr>
                            <td>user name</td>
                            <td><input type="text" name=txtUsr></td>
                        </tr>

                        <tr>
                            <th>password</th>
                            <td><input type="password" name=txtPwd></td>
                        </tr>

                        <tr>
                            <td  colspan=2 align=center><input type="submit" value=LOGIN onclick="return verify()"> 
                                <a href=/CollegeRegulations/Registration.jsp>SignUp</a></td>
                        </tr>

                    </table>

                </form>
            </center>
            <!-- Body Start-->
            <jsp:include page="Footer.html"/>

</body>
</html>




