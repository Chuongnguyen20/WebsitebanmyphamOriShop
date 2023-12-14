package controller.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BillDAO;
import dto.Bill;
import dto.User;

/**
 * Servlet implementation class BillController
 */
@WebServlet("/bill")
public class BillController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("get-page-my-bill")) {
			handleGetPageMyBill(request, response);
		}
	}

	private void handleGetPageMyBill(HttpServletRequest request, HttpServletResponse response) {
	    try {
	    	// Lấy thông tin user từ session hoặc bất kỳ nguồn nào khác
		    User loggedInUser = (User) request.getSession().getAttribute("loggedInUser");

		    if (loggedInUser != null) {
		        // Nếu người dùng đã đăng nhập, lấy danh sách hóa đơn của họ
		        BillDAO billDAO = new BillDAO();
		        ArrayList<Bill> billList = billDAO.getBillsByUserId(loggedInUser.getId());

		        // Đặt danh sách hóa đơn vào attribute của request để truyền sang JSP
		        request.setAttribute("billList", billList);

		        // Chuyển hướng đến trang hiển thị danh sách hóa đơn
		        RequestDispatcher dispatcher = request.getRequestDispatcher("/web/my-bill.jsp");
		        dispatcher.forward(request, response);
		    } else {
		        // Người dùng chưa đăng nhập, có thể chuyển hướng hoặc xử lý theo ý của bạn
		        // Ví dụ: response.sendRedirect("login.jsp");
		    	response.sendRedirect("login.jsp");
		    }
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
