<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
Connection connection = null;
  try {    
	  String url = "jdbc:oracle:thin:@localhost:1521:XE";
            Class.forName("oracle.jdbc.driver.OracleDriver");//loading Driver
            connection = DriverManager.getConnection(url, "system", "vasanth");//getting connection 
}
catch(Exception e)
{
e.printStackTrace();
}


%>