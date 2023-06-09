package nguyen_pham_quoc_huy.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtils {
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "";
    private static final String RDBMS_MYSQL = "mysql";
    private static final String PORT = "3306";
    private static final String DB_NAME = "phone_cnpm_db";
    private static final String MYSQL_DRIVER = "com.mysql.cj.jdbc.Driver";

    public static Connection makeConnection() {
        Connection conn = null;
        try {
            String dbURL = "jdbc:" + RDBMS_MYSQL + "://localhost:" + PORT + "/" + DB_NAME;
            Class.forName(MYSQL_DRIVER);
            conn = DriverManager.getConnection(dbURL, DB_USERNAME, DB_PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }
}

