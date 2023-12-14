package controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dto.User;

/**
 * Servlet implementation class RegisterLoginLogoutController
 */
@WebServlet("/web")
public class RegisterLoginLogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterLoginLogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("get-page-login")) {
			handleGetPageLogin(request, response);
		}
		else if(action != null && action.equals("logout")) {
			handleLogout(request, response);
		}
		else if(action != null && action.equals("get-page-register")) {
			handleGetPageRegister(request, response);
		}
	}
	
	private void handleGetPageLogin(HttpServletRequest request, HttpServletResponse response) {
		try {
			String url = "/web/login.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private void handleLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Lấy session từ request
            HttpSession session = request.getSession(false);

            if (session != null) {
                // Xóa người dùng khỏi session
                session.removeAttribute("loggedInUser");

                // Hủy session
                session.invalidate();
            }

            // Chuyển hướng về trang chủ hoặc trang khác nếu cần
            response.sendRedirect(request.getContextPath() + "/home");
            return;

        } catch (Exception e) {
            e.printStackTrace();
            // Xử lý lỗi nếu cần
            response.sendRedirect("error.jsp");
        }
    }
	
	private void handleGetPageRegister(HttpServletRequest request, HttpServletResponse response) {
		try {
			String url = "/web/register.jsp";
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
		if(action != null && action.equals("login")) {
			handleLogin(request, response);
		}
		else if(action != null && action.equals("register")) {
			handleRegister(request, response);
		}
	}
	
	private void handleRegister(HttpServletRequest request, HttpServletResponse response) {
	    try {
	    	
	    	request.setCharacterEncoding("UTF-8");
	    	
	        // Lấy thông tin từ request
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        String fullName = request.getParameter("fullName");
	        String gender = request.getParameter("gender");
	        String address = request.getParameter("address");
	        java.util.Date birthDate = java.sql.Date.valueOf(request.getParameter("birthDate"));

	        // Tạo đối tượng User mới
	        User newUser = new User(email, password, fullName, gender, address, birthDate, 2);

	        // Gọi hàm đăng ký từ UserDAO
	        UserDAO userDAO = new UserDAO();
	        boolean registrationSuccess = userDAO.register(newUser);

	        if (registrationSuccess) {
	            // Đăng ký thành công
	            request.setAttribute("registrationMessage", "Registration successful!");
	        } else {
	            // Đăng ký thất bại, có thể do email đã tồn tại
	            request.setAttribute("registrationMessage", "Registration failed. Email may already exist.");
	        }

	        // Chuyển hướng đến trang register.jsp
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/web/register.jsp");
	        dispatcher.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	private void handleLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy thông tin từ request
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Kiểm tra xem có thiếu thông tin không
            if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
                // Trả về thông báo lỗi nếu thiếu thông tin
                request.setAttribute("errorMessage", "Vui lòng nhập đầy đủ thông tin đăng nhập.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            // Kiểm tra thông tin đăng nhập
            UserDAO userDAO = new UserDAO();
            User user = userDAO.login(email, password);

            if (user != null) {
                // Đăng nhập thành công, lưu user vào session
                HttpSession session = request.getSession();
                session.setAttribute("loggedInUser", user);

                if (user.getRoleId() == 1) {
                    // Set attribute để xác định là admin role
                    request.setAttribute("adminRole", true);

                 // Sử dụng sendRedirect để gọi tới servlet AdminHomeController
                    response.sendRedirect(request.getContextPath() + "/admin");
                    return; // Đặt return để ngăn chặn việc tiếp tục forward request
                }
                else if (user.getRoleId() == 2) {
                    response.sendRedirect(request.getContextPath() + "/home");
                    return;
                }
                
            } else {
                // Đăng nhập không thành công
                request.setAttribute("errorMessage", "Email hoặc mật khẩu không đúng.");
                request.getRequestDispatcher("web/login.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình xử lý.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
