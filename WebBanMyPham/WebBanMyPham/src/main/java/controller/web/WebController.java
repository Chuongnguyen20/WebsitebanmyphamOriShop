package controller.web;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import dao.UserDAO;
import dto.Product;
import dto.User;

/**
 * Servlet implementation class WebController
 */
@WebServlet("/home")
public class WebController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public WebController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("get-shop-page")) {
			handleGetPageShop(request, response);
		}
		else {
			String url = "/web/home.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}

	private void handleGetPageShop(HttpServletRequest request, HttpServletResponse response) {
	    try {
	        ProductDAO productDAO = new ProductDAO();
	        
	        // Lấy trang hiện tại từ request (mặc định là trang 1 nếu không có)
	        int page = 1;
	        String pageStr = request.getParameter("page");
	        if (pageStr != null) {
	            page = Integer.parseInt(pageStr);
	        }

	        // Số sản phẩm trên mỗi trang
	        int itemsPerPage = 4;

	        // Lấy danh sách sản phẩm cho trang hiện tại
	        List<Product> products = productDAO.getProductsByPage(page, itemsPerPage);

	        // Lưu danh sách sản phẩm vào request
	        request.setAttribute("productList", products);
	        
	        // Lưu thông tin phân trang vào request
	        int totalProducts = productDAO.getTotalProducts();
	        int totalPages = (int) Math.ceil((double) totalProducts / itemsPerPage);
	        request.setAttribute("totalPages", totalPages);
	        request.setAttribute("currentPage", page);
	        
	        // Chuyển trang
	        String url = "/web/shop.jsp";
	        RequestDispatcher rd = request.getRequestDispatcher(url);
	        rd.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
}
