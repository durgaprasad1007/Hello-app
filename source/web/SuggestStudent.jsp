<jsp:include page="Header.html"/>
<body>
        <form action="/CollegeFeeMgmt/StoreSuggestions.jsp" method=post>
        
        <table align=center  bgcolor=lightgreen width=300>
           <tr style='background:steelblue;color:white'>
        <tr>
                            <td>StudentID</td>
                            <td><input type="text" name="sid" value="<%=request.getParameter("sid")%>"</td>
                        </tr>
                         <tr>
                            <td>Student Issue</td>
                            <td><input type="text" name="cid" value="<%=session.getAttribute("feeissue")%>"</td>
                        </tr>
      
       
       
        <tr>
        <td>Your Suggestions</td>
        <td><input type=textarea size=45 name=txtSuggest >
        </tr>
         <tr>
                    <td><b>Status</b></td>
                    <td>
                        <select name="OkOrDeny">
                            <option value="Accept">Accept</option>
                            <option value="Deny">Deny</option>
                            
                        </select>
                    </td>
                </tr>    
        <tr>
        <td colspan=2 align=center><input type=submit value=Suggest></td>
       </tr>
     
        
       
        </table>
        </form>
                    <a href="javascript:window.history.back()">Back</a>
                        <jsp:include page="Footer.html"/>
        