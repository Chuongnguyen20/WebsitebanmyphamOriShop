package dao;

import dto.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    // Phương thức lấy toàn bộ sản phẩm từ cơ sở dữ liệu
    public List<Product> getAllProducts() {
        List<Product> productList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Lấy kết nối từ DBConnectionManager
            connection = DBConnectionManager.getConnection();

            // Truy vấn SQL để lấy toàn bộ sản phẩm
            String sql = "SELECT * FROM Product";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            // Duyệt qua kết quả và tạo đối tượng Product cho mỗi bản ghi
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String productName = resultSet.getString("product_name");
                String imageName = resultSet.getString("image_name");
                String description = resultSet.getString("description");
                int originalPrice = resultSet.getInt("original_price");
                int salePrice = resultSet.getInt("sale_price");
                int isNew = resultSet.getInt("is_new");
                int isSpecial = resultSet.getInt("is_special");

                Product product = new Product(id, productName, imageName, description, originalPrice, salePrice, isNew, isSpecial);
                productList.add(product);
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

        return productList;
    }
    
    public List<Product> getProductsByPage(int page, int itemsPerPage) {
        List<Product> products = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnectionManager.getConnection();

            // Calculate offset to retrieve the correct page
            int offset = (page - 1) * itemsPerPage;

            String query = "SELECT * FROM Product LIMIT ? OFFSET ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, itemsPerPage);
            preparedStatement.setInt(2, offset);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setProductName(resultSet.getString("product_name"));
                product.setImageName(resultSet.getString("image_name"));
                product.setDescription(resultSet.getString("description"));
                product.setOriginalPrice(resultSet.getInt("original_price"));
                product.setSalePrice(resultSet.getInt("sale_price"));
                product.setIsNew(resultSet.getInt("is_new"));
                product.setIsSpecial(resultSet.getInt("is_special"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources (resultSet, preparedStatement, connection)
        }

        return products;
    }
    
    public int getTotalProducts() throws SQLException {
        int totalProducts = 0;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnectionManager.getConnection();
            String query = "SELECT COUNT(*) FROM product";
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                totalProducts = resultSet.getInt(1);
            }
        } finally {
            // Đóng tất cả các tài nguyên (ResultSet, PreparedStatement, Connection) ở đây
        }

        return totalProducts;
    }
    
    public Product getProductById(int productId) {
        Product product = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Lấy kết nối từ DBConnectionManager
            connection = DBConnectionManager.getConnection();

            // Truy vấn SQL để lấy sản phẩm theo id
            String sql = "SELECT * FROM Product WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            resultSet = preparedStatement.executeQuery();

            // Nếu có kết quả, tạo đối tượng Product từ bản ghi và trả về
            if (resultSet.next()) {
                String productName = resultSet.getString("product_name");
                String imageName = resultSet.getString("image_name");
                String description = resultSet.getString("description");
                int originalPrice = resultSet.getInt("original_price");
                int salePrice = resultSet.getInt("sale_price");
                int isNew = resultSet.getInt("is_new");
                int isSpecial = resultSet.getInt("is_special");

                product = new Product(productId, productName, imageName, description, originalPrice, salePrice, isNew, isSpecial);
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

        return product;
    }
    
    public boolean addProduct(Product product) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        
        try {
            connection = DBConnectionManager.getConnection();
            
            String sql = "INSERT INTO Product (product_name, image_name, description, original_price, sale_price, is_new, is_special) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            
            preparedStatement.setString(1, product.getProductName());
            preparedStatement.setString(2, product.getImageName());
            preparedStatement.setString(3, product.getDescription());
            preparedStatement.setInt(4, product.getOriginalPrice());
            preparedStatement.setInt(5, product.getSalePrice());
            preparedStatement.setInt(6, product.getIsNew());
            preparedStatement.setInt(7, product.getIsSpecial());
            
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnectionManager.closeConnection(connection);
        }
        
        return false;
    }

    
    public boolean updateProduct(Product product, String oldImageName) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBConnectionManager.getConnection();

            String sql = "UPDATE Product SET product_name=?, image_name=?, description=?, " +
                         "original_price=?, sale_price=?, is_new=?, is_special=? WHERE id=?";
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, product.getProductName());
            preparedStatement.setString(2, product.getImageName());
            preparedStatement.setString(3, product.getDescription());
            preparedStatement.setInt(4, product.getOriginalPrice());
            preparedStatement.setInt(5, product.getSalePrice());
            preparedStatement.setInt(6, product.getIsNew());
            preparedStatement.setInt(7, product.getIsSpecial());
            preparedStatement.setInt(8, product.getId());

            int rowsAffected = preparedStatement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tất cả các tài nguyên (ResultSet, PreparedStatement, Connection) ở đây
        	// Đóng tài nguyên
            try {
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnectionManager.closeConnection(connection);
        }

        return false;
    }

 // Xóa sản phẩm theo ID
    public boolean deleteProduct(int productId) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBConnectionManager.getConnection();
            String sql = "DELETE FROM Product WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tài nguyên (preparedStatement, connection)
            try {
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnectionManager.closeConnection(connection);
        }

        return false;
    }
    
}
