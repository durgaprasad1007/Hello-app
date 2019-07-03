<%@page import="java.sql.*,java.util.*,com.college.DataBase"%>
<html>
    <jsp:include page="Header.html"/>
     <center><h1>Student Fee Dues</h1>
                <form action="/CollegeFeeMgmt/CollegeFee.jsp" method="get" name="frm">
                    <table border=0  bgcolor="lightgreen"> 
                        <caption>User Details</caption>
                       <tr>
                            <td>Student ID</td>
                            <td><input type="text" name="sid" value="<%=request.getParameter("sid")%>"</td>
                        </tr>
                        <%
                        String branch1=request.getParameter("branch");
                        System.out.println(branch1);
                        Connection con = DataBase.getCon();
            String query = "select * from counselor where branch=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1,branch1);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               %>
                <tr>
                            <td>Counselor ID</td>
                            <td><input type="text" name="cid" value="<%=rs.getInt(1)%>"</td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td><input type="text" name="branch" value="<%=rs.getString(6)%>"</td>
                        </tr>
                        <%
               
            }
                        %>
                        
                        

                        <tr>
                            <td>Bus Fee</td>
                            <td><input type="text" name=txtBus></td>
                        </tr>
                        <tr>
                            <td>Library Fee</td>
                            <td><input type="text" name=txtLib></td>
                        </tr>
                        <tr>
                            <td>Tution Fee</td>
                            <td><input type="text" name=txtTut></td>
                        </tr>

                        <tr>
                            <td  colspan=2 align=center><input type="submit" value=FeeDues> 
                                </td>
                        </tr>

                    </table>

                </form>
            </center>
                        <a href="javascript:window.history.back()">Back</a>
    <jsp:include page="Footer.html"/>
</html>