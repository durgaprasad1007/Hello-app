<%@page import="java.sql.*,java.util.*,com.college.DataBase"%>
<jsp:include page="Header.html"/>
<%
                   String cid=(String)session.getAttribute("cid");
                  System.out.println(cid);
                        try {

                            Connection con = DataBase.getCon();
                            String query = "select sid,totalfee, feeissues from feedues where cid=? and feeissues IS NOT NULL";

                            PreparedStatement st = con.prepareStatement(query);
                              st.setString(1, cid);
                            ResultSet rs = st.executeQuery();
                            ResultSetMetaData rsmd = rs.getMetaData();
                            int cols = rsmd.getColumnCount();
                            %>
                             
           <table align=center  bgcolor=lightgreen>
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
                        String sid=rs.getString(1);
                      
                        session.setAttribute("feeissue", rs.getString(3));
                 out.print("<td><a href=/CollegeFeeMgmt/SuggestStudent.jsp?sid="+sid+">Suggest</td>");
                 
                out.print("</tr>");
            }
            out.print("</table>");
            
          
         rs.close();
         st.close();
         con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }                         
         
                  
                %>
<a href="javascript:window.history.back()">Back</a>
<jsp:include page="Footer.html"/>