 <%@page import="java.sql.*,java.util.*,com.college.DataBase"%>
 
<%
String sid = request.getParameter("sid");

       String cid = request.getParameter("cid");
       
       String comment = request.getParameter("txtComments");
     
       try
       {
           Connection con = DataBase.getCon();
            String query = "update feedues set feeissues=? where sid=? and cid=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, comment);
            st.setString(2, sid);
            st.setString(3, cid);
          

            int c=st.executeUpdate();
            if (c>0)
            {
               response.sendRedirect("/CollegeFeeMgmt/StudentFeeDetails.jsp");
              
            }
                       }catch( Exception e){
                           e.printStackTrace();
                       }
            %>