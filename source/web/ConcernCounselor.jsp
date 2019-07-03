<jsp:include page="Header.html"/>
<body>
        <form action="/CollegeFeeMgmt/StoreConcerns.jsp" method=post>
        
        <table align=center  bgcolor=lightgreen width=300>
           <tr style='background:steelblue;color:white'>
        <tr>
                            <td>StudentID</td>
                            <td><input type="text" name="sid" value="<%=request.getParameter("sid")%>"</td>
                        </tr>
                         <tr>
                            <td>CounselorID</td>
                            <td><input type="text" name="cid" value="<%=request.getParameter("cid")%>"</td>
                        </tr>
      
       
       
        <tr>
        <td>Comments</td>
        <td><input type=textarea size=45 name=txtComments >
        </tr>
        <tr>
        <td colspan=2 align=center><input type=submit value=Request></td>
       </tr>
        </table>
        </form>
                    <a href="javascript:window.history.back()">Back</a>
                        <jsp:include page="Footer.html"/>
        