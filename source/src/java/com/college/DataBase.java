package com.college;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class DataBase {

    public static Connection getCon() {
        Connection con = null;
        try {
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            Class.forName("oracle.jdbc.driver.OracleDriver");//loading Driver
            con = DriverManager.getConnection(url, "college", "college");//getting connection 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static int getMax(String table) {
        int max = 1;
        try {
            Connection con = getCon();
            String query = "";
            if (table.equals("students")) {
                query = "SELECT max(sid) from students";
            } else {
                query = "SELECT max(cid) from counselor";
            }
            PreparedStatement st = con.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                max = rs.getInt(1) + 1;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return max;
    }
}
