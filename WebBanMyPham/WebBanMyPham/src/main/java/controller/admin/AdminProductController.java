package controller.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import dao.ProductDAO;
import dto.Product;

/**
 * Servlet implementation class AdminProductController
 */
@WebServlet("/admin-product")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10,      // 10MB
maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AdminProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String SAVE_DIRECTORY = "img";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("get-page-add-product")) {
			handleGetPageAddProduct(request, response);
		}
		else if(action != null && action.equals("get-page-product")) {
			handleGetPageManageProduct(request, response);
		}
		else if(action != null && action.equals("get-page-edit-product")) {
			handleGetPageEditProduct(request, response);
		}
		else if (action != null && action.equals("delete-product")) {
            handleDeleteProduct(request, response);
        }
	}
	
	private void handleDeleteProduct(HttpServletRequest request, HttpServletResponse response) {
	    try {
	        String productIdStr = request.getParameter("productId");
	        int productId = Integer.parseInt(productIdStr);

	        // Lấy tên ảnh của sản phẩm trước khi xóa
	        ProductDAO productDAO = new ProductDAO();
	        Product productToDelete = productDAO.getProductById(productId);
	        String oldImageName = productToDelete.getImageName();

	        // Xóa sản phẩm từ cơ sở dữ liệu
	        boolean successDeleteProduct = productDAO.deleteProduct(productId);

	        if (successDeleteProduct) {
	            // Xóa ảnh từ thư mục lưu trữ
	            deleteImage(oldImageName);

	            handleGetPageManageProduct(request, response);
	        } else {
	            response.sendRedirect("/admin/admin-product?action=get-page-manage-product");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	private void deleteImage(String imageName) {
	    // Lấy đường dẫn đầy đủ đến thư mục lưu trữ ảnh
	    String imagePath = Paths.get(getServletContext().getRealPath(""), SAVE_DIRECTORY, imageName).toString();

	    // Xóa tệp tin ảnh
	    File imageFile = new File(imagePath);
	    if (imageFile.exists()) {
	        imageFile.delete();
	        System.out.println("xóa thành công ảnh khi chọn xóa sản phẩm");
	    }
	}

	private void handleGetPageEditProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			
			String productIdStr = request.getParameter("productId");
			int productId = Integer.parseInt(productIdStr);
			
			ProductDAO productDAO = new ProductDAO();
			Product product = productDAO.getProductById(productId);
			
			request.setAttribute("product", product);
			
			String url = "/admin/edit-product.jsp";
	        RequestDispatcher rd = request.getRequestDispatcher(url);
	        rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	private void handleGetPageManageProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
	        ProductDAO productDAO = new ProductDAO();
	        
	        // Lấy trang hiện tại từ request (mặc định là trang 1 nếu không có)
	        int page = 1;
	        String pageStr = request.getParameter("page");
	        if (pageStr != null) {
	            page = Integer.parseInt(pageStr);
	        }

	        // Số sản phẩm trên mỗi trang
	        int itemsPerPage = 5;

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
	        String url = "/admin/manage-product.jsp";
	        RequestDispatcher rd = request.getRequestDispatcher(url);
	        rd.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	private void handleGetPageAddProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			RequestDispatcher rd = request.getRequestDispatcher("/admin/add-product.jsp");
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
		if(action != null && action.equals("add-product")) {
			handleAddProduct(request, response);
		}
		else if(action != null && action.equals("edit-product")) {
			handleEditProduct(request, response);
		}
	}

	private void handleEditProduct(HttpServletRequest request, HttpServletResponse response) {
	    try {
	        request.setCharacterEncoding("UTF-8");

	        String productIdStr = request.getParameter("productId");
	        int productId = Integer.parseInt(productIdStr);

	        String productName = request.getParameter("productName");
	        String description = request.getParameter("description");
	        int originalPrice = Integer.parseInt(request.getParameter("originalPrice"));
	        int salePrice = Integer.parseInt(request.getParameter("salePrice"));
	        int isNew = Integer.parseInt(request.getParameter("isNew"));
	        int isSpecial = Integer.parseInt(request.getParameter("isSpecial"));

	        // Đọc tên ảnh cũ từ trường input hidden
	        String oldImageName = request.getParameter("oldImageName");

	        Part part = request.getPart("image");
	        String imageName = saveImage(part);

	        Product updatedProduct = new Product(productId, productName, imageName, description, originalPrice, salePrice, isNew, isSpecial);

	        ProductDAO productDAO = new ProductDAO();
	        
	        // Thực hiện cập nhật sản phẩm và xóa ảnh cũ (nếu có)
	        boolean success = productDAO.updateProduct(updatedProduct, oldImageName);

	        if (success) {
	            // Xóa ảnh cũ nếu có
	            if (oldImageName != null && !oldImageName.isEmpty()) {
	                deleteOldImage(oldImageName);
	            }

	            handleGetPageManageProduct(request, response);
	        } else {
	            response.sendRedirect("/admin-product?action=get-page-edit-product&productId=" + productId);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	private void handleAddProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			String productName = request.getParameter("productName");
	        String description = request.getParameter("description");
	        int originalPrice = Integer.parseInt(request.getParameter("originalPrice"));
	        int salePrice = Integer.parseInt(request.getParameter("salePrice"));
	        int isNew = Integer.parseInt(request.getParameter("isNew"));
	        int isSpecial = Integer.parseInt(request.getParameter("isSpecial"));

	        Part part = request.getPart("image");
	        String imageName = saveImage(part);

	        Product newProduct = new Product(productName, imageName, description, originalPrice, salePrice, isNew, isSpecial);

	        ProductDAO productDAO = new ProductDAO();
	        boolean success = productDAO.addProduct(newProduct);

	        if (success) {
	        	handleGetPageManageProduct(request, response);
	        } else {
	            response.sendRedirect("/admin-product?action=get-page-add-product");
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private String saveImage(Part part) {
	    // Path to the directory where you want to save the images
	    String savePath = getServletContext().getRealPath("/assets/img/product/");
	    
	    // Create the directory if it doesn't exist
	    File directory = new File(savePath);
	    if (!directory.exists()) {
	        directory.mkdirs();
	    }

	    // Generate a unique file name using UUID
	    String fileName = UUID.randomUUID() + "_" + Paths.get(part.getSubmittedFileName()).getFileName().toString();
	    
	    try (InputStream input = part.getInputStream();
	         OutputStream output = new FileOutputStream(Paths.get(savePath, fileName).toString())) {
	        IOUtils.copy(input, output);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }

	    return fileName;
	}
	
	private void deleteOldImage(String oldImageName) {
	    String imagePath = getServletContext().getRealPath("/assets/img/product/") + File.separator + oldImageName;
	    File oldImageFile = new File(imagePath);

	    // Xóa ảnh cũ nếu tồn tại
	    if (oldImageFile.exists()) {
	        oldImageFile.delete();
	        System.out.println("Xóa ảnh cũ thành công khi cập nhật ảnh mới");
	    }
	}


}
