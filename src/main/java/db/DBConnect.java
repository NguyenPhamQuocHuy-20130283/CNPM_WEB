package db;

import java.sql.*;

public class DBConnect {
    String url = "jdbc:mysql://localhost:3306/phone_cnpm_db";
    String user = "root";
    String pass = "";
    Connection conn;
    static DBConnect install;
    public DBConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection getConn() {
        return conn;
    }
    public static DBConnect getInstall(){
        if(install == null){
            install = new DBConnect();
        }
        return install;
    }
    public Statement getUpdate(){
        if(conn == null) return  null;
        try {
            return conn.createStatement();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public Statement get(){
        if(conn == null) return  null;
        try {
            return   conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        }
        catch (SQLException e){
            return null;
        }
    }
    public static void main(String[] args) throws SQLException {
        Connection conn = DBConnect.getInstall().getConn();
        if(conn==null) {
            System.out.println("k co ket noi");
        }
    }
}
