package controller.web;

import java.io.IOException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BillDAO;
import dao.ProductDAO;
import dto.Bill;
import dto.BillDetail;
import dto.Cart;
import dto.Product;
import dto.User;


/**
 * Servlet implementation class CartController
 */
@WebServlet("/cart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("get-page-cart")) {
			handleGetPageCart(request, response);
		}
		else if (action != null && action.equals("add-cart")) {
			handleAddCart(request, response);
		}
		else if(action != null && action.equals("delete-cart")) {
			handleDeleteCart(request, response);
		}
		else if (action != null && action.equals("order")) {
			handleOrder(request, response);
		}
	}
	
	private void handleOrder(HttpServletRequest request, HttpServletResponse response) {
	    try {
	    	HttpSession session = request.getSession();
	    	
	    	User user = (User) session.getAttribute("loggedInUser");
	    	
	    	// Check if the user is logged in
	    	if (user == null) {
	    	    request.getRequestDispatcher("/web/login.jsp").forward(request, response);
	    	    return;
	    	}

	        
	        HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("cart");
	        

	        String thongBao = "";

	        if (user != null && cart != null && !cart.isEmpty()) {
	            try {
	                Bill bill = new Bill();
	                bill.setUserId(user.getId());
	                bill.setTotalAmount(totalPrice(cart));
	                bill.setStatus(1);
	                
	                bill.setShippingFee(200000);
	                

	                // Get the current date and time
	                LocalDateTime currentDateTime = LocalDateTime.now();

	                // Convert to java.sql.Date
	                Instant instant = currentDateTime.atZone(ZoneId.systemDefault()).toInstant();
	                bill.setOrderDate(new java.sql.Date(instant.toEpochMilli()));

	                ArrayList<BillDetail> listBillDetails = new ArrayList<>();

	                for (Map.Entry<Integer, Cart> entry : cart.entrySet()) {
	                    int quanty = entry.getValue().getQuanty();
	                    int totalPrice = entry.getValue().getTotalPrice();
	                    Product product = entry.getValue().getProduct();

	                    BillDetail billDetail = new BillDetail();
	                    billDetail.setPrice(product.getSalePrice());
	                    billDetail.setQuantity(quanty);
	                    billDetail.setProductId(product.getId());

	                    listBillDetails.add(billDetail);
	                }

	                // lưu hóa đơn ở đây
	                
	                BillDAO billDAO = new BillDAO();
	                boolean saveSuccess = billDAO.saveBill(bill, listBillDetails);

	                if (saveSuccess) {
	                    thongBao = "Đặt hàng thành công!";
	                } else {
	                    thongBao = "Đã gặp lỗi khi đặt hàng. Vui lòng thử lại hoặc liên hệ với bộ phận hỗ trợ!";
	                }
	                
	                // Clear the cart information from the session
	                session.removeAttribute("cart");
	                session.removeAttribute("totalQuantity");
	                session.removeAttribute("totalPrice");

	            } catch (Exception e) {
	                thongBao = "Đã gặp lỗi khi đặt hàng. Vui lòng thử lại hoặc liên hệ với bộ phận hỗ trợ!";
	                e.printStackTrace();
	            }
	        } else {
	            thongBao = "Không có người dùng đăng nhập hoặc giỏ hàng trống!";
	        }

	        request.setAttribute("thongBao", thongBao);
	        String url = "/web/cart.jsp";
	        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	        rd.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	private void handleDeleteCart(HttpServletRequest request, HttpServletResponse response) {
		try {
			String productIdStr = request.getParameter("productId");
			int productId = Integer.parseInt(productIdStr);
			HttpSession	session = request.getSession();
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("cart");
			if(cart == null) {
				cart = new HashMap();
			}
			cart = deleteCart(productId, cart);
			session.setAttribute("cart", cart);
			session.setAttribute("totalQuantity", totalQuantity(cart));
			session.setAttribute("totalPrice", totalPrice(cart));
			String url = "/web/cart.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private void handleAddCart(HttpServletRequest request, HttpServletResponse response) {
		try {
			String productIdStr = request.getParameter("productId");
			int productId = Integer.parseInt(productIdStr);
			HttpSession	session = request.getSession();
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("cart");
			if(cart == null) {
				cart = new HashMap();
			}
			cart = addCart(productId, cart);
			session.setAttribute("cart", cart);
			session.setAttribute("totalQuantity", totalQuantity(cart));
			session.setAttribute("totalPrice", totalPrice(cart));
 	        
			response.sendRedirect(request.getHeader("referer"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public HashMap<Integer, Cart> deleteCart(int productId, HashMap<Integer, Cart> cart) {
		if(cart == null) {
			return cart;
		}
		if(cart.containsKey(productId)) {
			cart.remove(productId);
		}
		return cart;
	}
	
	public HashMap<Integer, Cart> addCart(int productId, HashMap<Integer, Cart> cart) {
		Cart itemCart = new Cart();
		
		ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductById(productId);
        
		if(product != null && cart.containsKey(productId)) {
			itemCart = cart.get(productId);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getProduct().getSalePrice());
		}
		else {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(product.getSalePrice());
		}
		cart.put(productId, itemCart);
		return cart;
	}
	
	public int totalQuantity(HashMap<Integer, Cart> cart) {
		int totalQuanty = 0;
		for(Map.Entry<Integer, Cart> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();	
		}
		return totalQuanty;
	}
	
	public int totalPrice(HashMap<Integer, Cart> cart) {
		int totalPrice = 0;
		for(Map.Entry<Integer, Cart> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();	
		}
		return totalPrice;
	}

	private void handleGetPageCart(HttpServletRequest request, HttpServletResponse response) {
		try {
			String url = "/web/cart.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("edit-cart")) {
			handleEditCart(request, response);
		}
	}
	
	private void handleEditCart(HttpServletRequest request, HttpServletResponse response) {
		try {
			String productIdStr = request.getParameter("productId");
			int productId = Integer.parseInt(productIdStr);
			String quantityStr = request.getParameter("quantity");
			int quantity = Integer.parseInt(quantityStr);
			HttpSession	session = request.getSession();
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("cart");
			if(cart == null) {
				cart = new HashMap();
			}
			cart = editCart(productId, quantity, cart);
			session.setAttribute("cart", cart);
			session.setAttribute("totalQuantity", totalQuantity(cart));
			session.setAttribute("totalPrice", totalPrice(cart));
			String url = "/web/cart.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public HashMap<Integer, Cart> editCart(int productId, int quanty, HashMap<Integer, Cart> cart) {
		if(cart == null) {
			return cart;
		}
		Cart itemCart = new Cart();
		if(cart.containsKey(productId)) {
			itemCart = cart.get(productId);
			itemCart.setQuanty(quanty);
			int totalPrice = quanty * itemCart.getProduct().getSalePrice();
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(productId, itemCart);
		return cart;
	}

}
