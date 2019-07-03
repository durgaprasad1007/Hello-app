<%@page import="java.sql.*,java.util.*,com.college.Mailing,com.college.DataBase"%>
   
<%
String su = request.getParameter("txtUsr");
        String sp = request.getParameter("txtPwd");
        
        try {
         Connection connection=DataBase.getCon();
            String query = "select * from administrator where username=? and password=?";
              PreparedStatement st =connection.prepareStatement(query);
            st.setString(1, su);
            st.setString(2, sp);
            ResultSet rs = st.executeQuery();
           
            if (rs.next()) {
                session.setAttribute("username",su);
                response.sendRedirect("/CollegeFeeMgmt/AdministratorHome.jsp");

            } else {
                out.print("Credentials are wrong.");
                out.print("Please <a href=/CollegeFeeMgmt/AdminLogin.html></a>");
            }
            
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
%>