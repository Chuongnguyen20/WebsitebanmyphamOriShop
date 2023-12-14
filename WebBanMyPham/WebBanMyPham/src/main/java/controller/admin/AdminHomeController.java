package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BillDAO;
import dao.ProductDAO;
import dao.UserDAO;
import dto.Bill;
import dto.Product;
import dto.User;

/**
 * Servlet implementation class AdminHomeController
 */
@WebServlet("/admin")
public class AdminHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("get-page-bill")) {
			handleGetPageManageBill(request, response);
		}
		else if(action != null && action.equals("get-page-customer")) {
			handleGetPageManageCustomer(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("/admin/admin-home.jsp");
	        rd.forward(request, response);
		}
	
	}

	private void handleGetPageManageCustomer(HttpServletRequest request, HttpServletResponse response) {
        try {
            // Gọi hàm lấy danh sách user có role id = 2 từ UserDAO
            UserDAO userDAO = new UserDAO();
            ArrayList<User> customerList = userDAO.getUsersByRoleId(2);

            // Đặt danh sách user vào request để truyền cho JSP
            request.setAttribute("customerList", customerList);

            // Chuyển hướng tới trang customer-manage.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/manage-customer.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	private void handleGetPageManageBill(HttpServletRequest request, HttpServletResponse response) {
        try {
            // Retrieve the list of bills from the database
            BillDAO billDAO = new BillDAO();
            ArrayList<Bill> billList = billDAO.getBills();

            // Set the list of bills as an attribute in the request
            request.setAttribute("billList", billList);

            // Forward the request to the bill-manage.jsp page
            RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/bill-manage.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
