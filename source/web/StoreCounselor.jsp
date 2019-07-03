<%@page import="java.sql.*,java.util.*,com.college.Mail,com.college.DataBase"%>
<%
    //String sid = request.getParameter("txtSid");
    String sname = request.getParameter("txtCoun");
   // String year = request.getParameter("txtYear");
   // String sdob = request.getParameter("txtDOB");
    String sbranch = request.getParameter("txtBranch");
    String sphone = request.getParameter("txtMobile");
    String semail = request.getParameter("txtEmail");
    try {

        ArrayList pin = new ArrayList();
        String s = "cb";
        pin.add("1");
        pin.add("2");
        pin.add("3");
        pin.add("4");
        pin.add("5");
        pin.add("6");
        pin.add("7");
        pin.add("8");
        pin.add("9");
        pin.add("0");

        Collections.shuffle(pin);

        for (int i = 0; i < 6; i++) {
            s = s + pin.get(i);
            System.out.println(s);
        }
        //create table counselor(cid number(4),username varchar2(20),
         //       password varchar2(20),email varchar2(20),phone number(15),branch varchar(20));
        Connection con = DataBase.getCon();
        String query = "insert into counselor(cid,username,password,email,phone,branch) values(?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(query);
        st.setInt(1, DataBase.getMax("counselor"));
        st.setString(2, sname);
        st.setString(3, s);
       // st.setString(4, year);
       // st.setString(5, sdob);
        st.setString(4, semail);
        st.setString(5, sphone);
        st.setString(6,  sbranch);

        int c = st.executeUpdate();
        if (c > 0) {
          

            Mail.mail(semail, s, sname);
            response.sendRedirect("/CollegeFeeMgmt/AddCounselor.jsp");
        } else {
            response.sendRedirect("/CollegeFeeMgmt/AdministratorHome.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>