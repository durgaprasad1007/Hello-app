<%@page import="java.sql.*,java.util.*,com.college.DataBase"%>
<jsp:include page="Header.html"/>
<%
 String sid=(String) session.getAttribute("sid");
try {
            Connection con = DataBase.getCon();
            String query = "select sid,cid,bus,library,tutionfee,totalfee from feedues where sid=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1,sid);
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
                    //if (i == 1) {
                       String id=rs.getString(1);
                      String cid=rs.getString(2);
                      //  String sb=rs.getString(3);
                      //  String sbus=rs.getString(4);
                      //  String slib=rs.getString(5);
                      //  String stut=rs.getString(6);
                    // String stot=rs.getString(7);
                     //   out.print("<td><a href=/FraudDetection/HowMany.jsp?itemid="+sid+"&itemname="+sn+"&cost="+sc+">" + sid + "</a></td>");
                  //  } else {
                     //   out.print("<td align=center>" + rs.getString(i) + "</td>");
                    //}
               
                 out.print("<td><a href=/CollegeFeeMgmt/ConcernCounselor.jsp?sid="+id+"&cid="+cid+">Concerns</td>");
              // out.print("<td><a href=/CollegeFeeMgmt/DeleteInstructor>Delete</td>");
                out.print("</tr>");
            }
            out.print("</table>");
            
            out.print("</div>");
           // out.print("<a href=/FraudDetection/Product.html>BACK</a>");
         rs.close();
         st.close();
         con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

%>
<a href="javascript:window.history.back()">Back</a>
<jsp:include page="Footer.html"/>