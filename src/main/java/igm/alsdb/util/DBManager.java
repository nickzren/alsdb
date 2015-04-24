package igm.alsdb.util;

import java.sql.*;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.apache.tomcat.jdbc.pool.PoolProperties;

/**
 *
 * @author nick
 */
public class DBManager {

    private static DataSource dataSource;
    private static Connection connection;
    private static Statement statement;

    public static void init() throws Exception {
        if (dataSource == null) {
            PoolProperties p = new PoolProperties();
             p.setUrl("jdbc:mysql://10.73.50.60:3306/ALSdb");
//            p.setUrl("jdbc:mysql://localhost:3306/ALSdb"); // for local debug
            p.setDriverClassName("com.mysql.jdbc.Driver");
            p.setUsername("alsdb_view");
            p.setPassword("alsdb_view_pwd");
            p.setJmxEnabled(true);
            p.setTestWhileIdle(false);
            p.setTestOnBorrow(true);
            p.setValidationQuery("SELECT 1");
            p.setTestOnReturn(false);
            p.setValidationInterval(30000);
            p.setTimeBetweenEvictionRunsMillis(30000);
            p.setMaxActive(100);
            p.setInitialSize(10);
            p.setMaxWait(10000);
            p.setRemoveAbandonedTimeout(60);
            p.setMinEvictableIdleTimeMillis(30000);
            p.setMinIdle(10);
            p.setLogAbandoned(true);
            p.setRemoveAbandoned(true);
            p.setJdbcInterceptors(
                    "org.apache.tomcat.jdbc.pool.interceptor.ConnectionState;"
                    + "org.apache.tomcat.jdbc.pool.interceptor.StatementFinalizer");
            dataSource = new DataSource();
            dataSource.setPoolProperties(p);
            connection = dataSource.getConnection();
            statement = connection.createStatement();
        }

        if (connection.isClosed()) {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
        } else if (statement.isClosed()) {
            statement = connection.createStatement();
        }
    }

    public static ResultSet executeQuery(String sqlQuery) throws SQLException {
        return statement.executeQuery(sqlQuery);
    }
}
