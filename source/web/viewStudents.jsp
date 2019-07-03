<%@page import="java.sql.*,java.util.*,com.college.DataBase"%>
<jsp:include page="Header.html"/>
<%
 String sid=(String) session.getAttribute("sid");
try {
            Connection con = DataBase.getCon();
            String query = "select sid,sname,syear,sbranch from students";
            PreparedStatement st = con.prepareStatement(query);
           
            ResultSet rs = st.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
            int cols = rsmd.getColumnCount();  
        %>
          
           <table align=center  bgcolor=lightgreen width=300>
           <tr style='background:steelblue;color:white'>
                <%
                
            for (int i = 1; i <= cols; i++) {
               
               out.print("<th>" + rsmd.getColumnName(i) + "</th>");
            }
            %></tr><%
            while (rs.next()) {
                %><tr><%
                for (int i = 1; i <= cols; i++) {
                    out.print("<td align=center>" + rs.getString(i) + "</td>");
                     }
                   
                        String id=rs.getString(1);
                        String sn=rs.getString(2);
                        String syear=rs.getString(3);
                       String sb=rs.getString(4);
                     
                 out.print("<td><a href=/CollegeFeeMgmt/CollegeFeeDues.jsp?sid="+id+"&sname="+sn+"&syear="+syear+"&branch="+sb+">Fee</td>");
              
                out.print("</tr>");
            }
            %></table><%
            
           
           
         rs.close();
         st.close();
         con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

%>
<jsp:include page="Footer.html"/>