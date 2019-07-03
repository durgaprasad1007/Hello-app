 <%@page import="java.sql.*,com.college.Mailing,com.college.DataBase"%>
 
<%
try {
    String sid = request.getParameter("sid");
    System.out.println(sid);
    String cid =(String)session.getAttribute("cid");
    System.out.println(cid);
   String[] Status = request.getParameterValues("OkOrDeny");
   System.out.println(Status);
   String suggestion= request.getParameter("txtSuggest");

           Connection con = DataBase.getCon();
           String stat="";
           int s=Status.length;
           String query="";
           System.out.println("asdfg");
           for (int i= 1; i < s; i++) {
            System.out.println("asdfg12345");
                stat = Status[i];
                System.out.println(stat);
           if(stat.equals("Accept")){
            query = "update feedues set status=? where sid=? and cid=?";
             PreparedStatement st = con.prepareStatement(query);
        st.setString(1, stat);
        st.setString(2,sid );
       st.setString(3,cid);
      int c = st.executeUpdate();
        if (c > 0) {
            response.sendRedirect("/CollegeFeeMgmt/ViewStudentIssues.jsp");
        }
        
                       }
                               else{
                  query = "update feedues set councellorfeedback=?,status=? where sid=? and cid=?";
                  PreparedStatement st = con.prepareStatement(query);
        st.setString(1, suggestion);
        st.setString(2, stat);
       st.setString(3,sid);
       st.setString(4, cid);
       int c = st.executeUpdate();
        if (c > 0) {
          response.sendRedirect("/CollegeFeeMgmt/ViewStudentIssues.jsp");  
        }
                               }
     
                     }    
    } catch (Exception e) {
        e.printStackTrace();
    }
        %>