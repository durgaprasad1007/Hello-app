<%@page import="java.sql.*,java.util.*,com.college.Mailing,com.college.DataBase"%>
   
<%
String su = request.getParameter("txtStud");
        String sp = request.getParameter("txtPwd");
        
        try {
         Connection connection=DataBase.getCon();
            String query = "select * from counselor where username=? and password=?";
              PreparedStatement st =connection.prepareStatement(query);
            st.setString(1, su);
            st.setString(2, sp);
            ResultSet rs = st.executeQuery();
           
            if (rs.next()) {
                session.setAttribute("username",su);
                session.setAttribute("cid", rs.getString("cid"));
                response.sendRedirect("/CollegeFeeMgmt/CounselorHome.jsp");

            } else {
                out.print("Credentials are wrong.");
                out.print("Please <a href=/CollegeFeeMgmt/CounselorLogin.jsp></a>");
            }
            
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
        
%>