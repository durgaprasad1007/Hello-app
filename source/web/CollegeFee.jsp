 <%@page import="java.sql.*,com.college.Mailing,com.college.DataBase"%>
 <%@include file="connect.jsp" %>
<%
try {
    int sid = Integer.parseInt(request.getParameter("sid"));
    //System.out.println(sid+"1234");
    int cid = Integer.parseInt(request.getParameter("cid"));
    
    String branch = request.getParameter("branch");
    int bus = Integer.parseInt(request.getParameter("txtBus"));
   int library = Integer.parseInt(request.getParameter("txtLib"));
    int tut = Integer.parseInt(request.getParameter("txtTut"));
    System.out.println(sid+"aaa");
    int tot=bus+library+tut;
    
           Connection con = DataBase.getCon();
            String query = "insert into feedues(sid,cid,branch,bus,library,tutionfee,totalfee) values(?,?,?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(query);
        st.setInt(1, sid);
        st.setInt(2, cid);
        st.setString(3, branch);
       st.setInt(4, bus);
        st.setInt(5, library);
        st.setInt(6, tut);
        st.setInt(7, tot);
        //st.setString(7, sphone);
       // st.setString(8, semail);

        int c = st.executeUpdate();
        if (c > 0) {
            System.out.println(sid+"BBB");
            // String query1 = "";
              PreparedStatement st1 =connection.prepareStatement("select * from students where sid=?");
            // System.out.println(sid+"query"+query1);
            st1.setInt(1, sid);
            System.out.println(sid+"zzz");
           ResultSet rs= st1.executeQuery();
           System.out.println(sid+"ccc");
            if (rs.next()) {
          //String semail=(String)session.getAttribute("semail");
//int cc=0;
                System.out.println(sid+"ddd");
            Mailing.mails(rs.getString("semail"),bus ,library, tut, tot);
            response.sendRedirect("/CollegeFeeMgmt/viewStudents.jsp");
                       }
        } else {
            response.sendRedirect("/CollegeFeeMgmt/AdministratorHome.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
        %>