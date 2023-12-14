package dao;

import dto.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDAO {
    
    // Hàm kiểm tra đăng nhập
    public User login(String email, String password) {
        User user = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Lấy kết nối từ DBConnectionManager
            connection = DBConnectionManager.getConnection();

            // Truy vấn SQL để kiểm tra đăng nhập
            String sql = "SELECT * FROM User WHERE email = ? AND password = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();

            // Nếu có kết quả, tạo đối tượng User từ bản ghi và trả về
            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fullName = resultSet.getString("full_name");
                String gender = resultSet.getString("gender");
                String address = resultSet.getString("address");
                java.util.Date birthDate = resultSet.getDate("birth_date");
                int roleId = resultSet.getInt("roleId");

                user = new User(id, email, password, fullName, gender, address, birthDate, roleId);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đảm bảo rằng các tài nguyên được đóng
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnectionManager.closeConnection(connection);
        }

        return user;
    }
    
 // Hàm đăng ký
    public boolean register(User newUser) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean success = false;

        try {
            // Lấy kết nối từ DBConnectionManager
            connection = DBConnectionManager.getConnection();

            // Truy vấn SQL để kiểm tra xem email đã tồn tại chưa
            String checkEmailQuery = "SELECT * FROM User WHERE email = ?";
            preparedStatement = connection.prepareStatement(checkEmailQuery);
            preparedStatement.setString(1, newUser.getEmail());
            ResultSet resultSet = preparedStatement.executeQuery();

            // Nếu email đã tồn tại, không thực hiện đăng ký và trả về false
            if (resultSet.next()) {
                return false;
            }

            // Nếu email chưa tồn tại, thực hiện đăng ký
            String registerQuery = "INSERT INTO User (email, password, full_name, gender, address, birth_date, roleId) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(registerQuery, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, newUser.getEmail());
            preparedStatement.setString(2, newUser.getPassword());
            preparedStatement.setString(3, newUser.getFullName());
            preparedStatement.setString(4, newUser.getGender());
            preparedStatement.setString(5, newUser.getAddress());
            preparedStatement.setDate(6, new java.sql.Date(newUser.getBirthDate().getTime()));
            preparedStatement.setInt(7, 2); // 2 là roleId mặc định

            // Thực hiện đăng ký
            int affectedRows = preparedStatement.executeUpdate();

            // Nếu có bản ghi được thêm vào, đăng ký thành công
            if (affectedRows > 0) {
                success = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đảm bảo rằng các tài nguyên được đóng
            try {
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnectionManager.closeConnection(connection);
        }

        return success;
    }
    
    public ArrayList<User> getUsersByRoleId(int roleId) {
        ArrayList<User> userList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Lấy kết nối từ DBConnectionManager
            connection = DBConnectionManager.getConnection();

            // Truy vấn SQL để lấy người dùng theo roleId
            String sql = "SELECT * FROM User WHERE roleId = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, roleId);
            resultSet = preparedStatement.executeQuery();

            // Lặp qua các bản ghi và tạo đối tượng User từ mỗi bản ghi
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String fullName = resultSet.getString("full_name");
                String gender = resultSet.getString("gender");
                String address = resultSet.getString("address");
                java.util.Date birthDate = resultSet.getDate("birth_date");

                User user = new User(id, email, password, fullName, gender, address, birthDate, roleId);
                userList.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đảm bảo rằng các tài nguyên được đóng
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnectionManager.closeConnection(connection);
        }

        return userList;
    }
}
