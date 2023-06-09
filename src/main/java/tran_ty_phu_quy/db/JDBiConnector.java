package tran_ty_phu_quy.db;

import org.apache.commons.dbcp.BasicDataSource;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;

import java.sql.Connection;
import java.sql.SQLException;

public class JDBiConnector {
    private static Jdbi jdbi;

    private JDBiConnector() {

    }

    public static Jdbi get() {
        if (jdbi == null) create();
        jdbi.installPlugin(new SqlObjectPlugin());
        return jdbi;
    }

    public static void create() {
        try {

            BasicDataSource ds = new BasicDataSource();
            ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
            ds.setPassword("");
            ds.setUsername("root");
            ds.setMaxIdle(2);
            ds.setMinIdle(2);
            ds.setUrl("jdbc:mysql://localhost:3306/shop_phone");
            Connection cn = ds.getConnection();
            jdbi = Jdbi.create(cn);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {

    }
}
