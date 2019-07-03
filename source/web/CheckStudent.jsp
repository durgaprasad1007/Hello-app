<%@page import="java.sql.*,java.util.*,com.college.Mailing,com.college.DataBase"%>
   
<%
String su = request.getParameter("txtStud");
        String sp = request.getParameter("txtPwd");
        
        try {
         Connection connection=DataBase.getCon();
            String query = "select * from students where sname=? and spass=?";
              PreparedStatement st =connection.prepareStatement(query);
            st.setString(1, su);
            st.setString(2, sp);
            ResultSet rs = st.executeQuery();
           
            if (rs.next()) {
                session.setAttribute("username",su);
                session.setAttribute("sid", rs.getString("sid"));
                session.setAttribute("email", rs.getString("semail"));
                response.sendRedirect("/CollegeFeeMgmt/StudentHome.jsp");

            } else {
                out.print("Credentials are wrong.");
                out.print("Please <a href=/CollegeFeeMgmt/StudentLogin.jsp></a>");
            }
            
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
%>