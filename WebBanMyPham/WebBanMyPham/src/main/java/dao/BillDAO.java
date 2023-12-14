package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Bill;
import dto.BillDetail;

public class BillDAO {
    // Một số mã lỗi SQL
    private static final int DUPLICATE_KEY_ERROR = 1062;

    // Lưu hóa đơn và danh sách chi tiết hóa đơn
    public boolean saveBill(Bill bill, ArrayList<BillDetail> billDetails) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        boolean success = false;

        try {
            conn = DBConnectionManager.getConnection();

            // Bắt đầu transaction
            conn.setAutoCommit(false);

            // Lưu hóa đơn
            String insertBillSQL = "INSERT INTO Bill (userId, total_amount, order_date, shipping_fee, status) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(insertBillSQL, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setInt(1, bill.getUserId());
            pstmt.setInt(2, bill.getTotalAmount());
            pstmt.setDate(3, new java.sql.Date(bill.getOrderDate().getTime()));
            pstmt.setInt(4, bill.getShippingFee());
            pstmt.setInt(5, bill.getStatus());

            int affectedRows = pstmt.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Creating bill failed, no rows affected.");
            }

            // Lấy id của hóa đơn vừa được tạo
            ResultSet generatedKeys = pstmt.getGeneratedKeys();
            if (generatedKeys.next()) {
                int billId = generatedKeys.getInt(1);

                // Lưu danh sách chi tiết hóa đơn
                String insertBillDetailSQL = "INSERT INTO BillDetail (productId, quantity, price, billId) VALUES (?, ?, ?, ?)";
                pstmt = conn.prepareStatement(insertBillDetailSQL);

                for (BillDetail billDetail : billDetails) {
                    pstmt.setInt(1, billDetail.getProductId());
                    pstmt.setInt(2, billDetail.getQuantity());
                    pstmt.setInt(3, billDetail.getPrice());
                    pstmt.setInt(4, billId);

                    pstmt.addBatch();
                }

                // Thực hiện batch lưu danh sách chi tiết hóa đơn
                int[] batchResults = pstmt.executeBatch();

                // Kiểm tra kết quả batch
                for (int result : batchResults) {
                    if (result <= 0) {
                        throw new SQLException("Creating bill detail failed, no rows affected.");
                    }
                }

                // Nếu không có lỗi xảy ra, commit transaction
                conn.commit();
                success = true;
            }
        } catch (SQLException e) {
            // Xảy ra lỗi, rollback transaction
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException rollbackException) {
                rollbackException.printStackTrace();
            }

            // Xử lý lỗi đặc biệt nếu là lỗi khóa trùng (duplicate key)
            if (e.getErrorCode() == DUPLICATE_KEY_ERROR) {
                // Xử lý lỗi do khóa trùng, ví dụ: sản phẩm đã tồn tại trong chi tiết hóa đơn
                e.printStackTrace();
            } else {
                e.printStackTrace();
            }
        } finally {
            try {
                // Đặt lại trạng thái AutoCommit trở lại true
                if (conn != null) {
                    conn.setAutoCommit(true);
                }

                // Đóng PreparedStatement và Connection
                if (pstmt != null) {
                    pstmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException closeException) {
                closeException.printStackTrace();
            }
        }

        return success;
    }
    
    public ArrayList<Bill> getBillsByUserId(int userId) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<Bill> billList = new ArrayList<>();

        try {
            conn = DBConnectionManager.getConnection();

            String query = "SELECT * FROM Bill WHERE userId = ?";
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, userId);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                int billId = rs.getInt("id");
                int totalAmount = rs.getInt("total_amount");
                Date orderDate = rs.getDate("order_date");
                int shippingFee = rs.getInt("shipping_fee");
                int status = rs.getInt("status");

                Bill bill = new Bill(billId, userId, totalAmount, orderDate, shippingFee, status);
                billList.add(bill);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }

                if (pstmt != null) {
                    pstmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException closeException) {
                closeException.printStackTrace();
            }
        }

        return billList;
    }
    
    public ArrayList<Bill> getBills() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<Bill> billList = new ArrayList<>();

        try {
            conn = DBConnectionManager.getConnection();

            String query = "SELECT * FROM Bill";
            pstmt = conn.prepareStatement(query);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                int billId = rs.getInt("id");
                int userId = rs.getInt("userId");
                int totalAmount = rs.getInt("total_amount");
                Date orderDate = rs.getDate("order_date");
                int shippingFee = rs.getInt("shipping_fee");
                int status = rs.getInt("status");

                Bill bill = new Bill(billId, userId, totalAmount, orderDate, shippingFee, status);
                billList.add(bill);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }

                if (pstmt != null) {
                    pstmt.close();
                }

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException closeException) {
                closeException.printStackTrace();
            }
        }

        return billList;
    }


}
