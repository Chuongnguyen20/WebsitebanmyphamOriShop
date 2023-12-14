package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionManager {
	private static final String URL = "jdbc:mysql://localhost:3306/dbWebBanMyPham?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";
    private static final String USER = "root";
    private static final String PASSWORD = "01673968769";

    // Phương thức này sẽ trả về một kết nối đến cơ sở dữ liệu
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found", e);
        }
    }

    // Phương thức này sẽ đóng kết nối
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

