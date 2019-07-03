<%@page import="java.sql.*"%>
<%--<%@page import="com.college.Connect" %>--%>
<%@include file="connect.jsp" %>
   
<%
String su = request.getParameter("txtUsr");
        String sp = request.getParameter("txtPwd");
        
        try {
         
            String query = "select * from administrator where username=? and password=?";
              PreparedStatement st =connection.prepareStatement(query);
            st.setString(1, su);
            st.setString(2, sp);
            ResultSet rs = st.executeQuery();
           
            if (rs.next()) {
                session.setAttribute("username",su);
                response.sendRedirect("/CollegeRegulations/AdministratorHome.jsp");

            } else {
                out.print("Credentials are wrong.");
                out.print("Please <a href=/CollegeRegulations/Login.html></a>");
            }
            
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
%>