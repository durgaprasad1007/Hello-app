<%@page import="java.sql.*,java.util.*,com.college.Mail,com.college.DataBase"%>
<%
   // String sid = request.getParameter("txtSid");
    String sname = request.getParameter("txtStud");
    String year = request.getParameter("txtYear");
    String sdob = request.getParameter("txtDOB");
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
        //pin.add("0");

        Collections.shuffle(pin);

        for (int i = 0; i < 6; i++) {
            s = s + pin.get(i);
            System.out.println(s);
        }
        //create table students(sId varchar2(20),sname varchar2(40),spass varchar2(40),syear int,
        //      sdob date,sbranch varchar2(20),sphone varchar2(20),semail varchar2(30),role varchar2(20));
        Connection con = DataBase.getCon();
        String query = "insert into students(sid,sname,spass,syear,sdob,sbranch,sphone,semail) values(?,?,?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(query);
        st.setInt(1, DataBase.getMax("students"));
        st.setString(2, sname);
        st.setString(3, s);
        st.setString(4, year);
        st.setString(5, sdob);
        st.setString(6, sbranch);
        st.setString(7, sphone);
        st.setString(8, semail);

        int c = st.executeUpdate();
        if (c > 0) {
int cc=0;
            Mail.mail(semail, s, sname);
            response.sendRedirect("/CollegeFeeMgmt/AddStudents.jsp");
        } else {
            response.sendRedirect("/CollegeFeeMgmt/AdministratorHome.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>