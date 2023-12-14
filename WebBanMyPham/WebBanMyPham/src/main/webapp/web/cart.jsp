<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<body>

<%-- Check for the order message --%>
<c:if test="${not empty requestScope.thongBao}">
    <div class="container pt-3">
        <div class="row">
            <div class="col-12">
                <div class="alert alert-success" role="alert">
                    ${requestScope.thongBao}
                </div>
            </div>
        </div>
    </div>
</c:if>

<!-- Kiểm tra xem giỏ hàng có hay không -->
<c:choose>
  <c:when test="${not empty cart}">

		<section class="whish-list-section theme1 pt-40 pb-40">
		  <div class="container">
		    <div class="row">
		      <div class="col-12">
		        <h3 class="title mb-30 pb-25 text-capitalize">Your cart items</h3>
		        <div class="table-responsive">
		          <table class="table">
		            <thead class="thead-light">
		              <tr>
		                <th class="text-center" scope="col">Product Image</th>
		                <th class="text-center" scope="col">Product Name</th>
		                <th class="text-center" scope="col">Qty</th>
		                <th class="text-center" scope="col">Price</th>
		                <th class="text-center" scope="col">Action</th>
		              </tr>
		            </thead>
		            <tbody>
		              <!-- Lặp qua danh sách sản phẩm trong giỏ hàng -->
		              <c:forEach var="cartItem" items="${cart.values()}">
		                <tr>
		                  <th class="text-center" scope="row">
		                    <img style="width: 70px; height: 70px" src="assets/img/product/${cartItem.product.imageName}" alt="img" />
		                  </th>
		                  <td class="text-center">
		                    <span class="whish-title">${cartItem.product.productName}</span>
		                  </td>
		                  <td class="text-center">
		                    <div class="product-count style">
		                      <div class="count d-flex justify-content-center">
		                        
		                         <form id="form_${cartItem.product.id}" action="cart" method="post">
						            <input type="hidden" name="action" value="edit-cart">
						            <input type="hidden" name="productId" value="${cartItem.product.id}">
						            <div style="display: flex; gap: 1px align-items: center;">
						              <button type="button" onclick="updateQuantity(${cartItem.product.id}, ${cartItem.quanty - 1})">
						                <i class="fas fa-minus"></i>
						              </button>
						              <input type="number" style="width: 60px; height: 35px; margin: 0 5px;" min="1" max="100" step="1"
						                     value="${cartItem.quanty}" name="quantity" class="form-control"/>
						              <button type="button" onclick="updateQuantity(${cartItem.product.id}, ${cartItem.quanty + 1})">
						                <i class="fas fa-plus"></i>
						              </button>
						            </div>
						          </form>
		                        
		                      </div>
		                    </div>
		                  </td>
		                  <td class="text-center">
		                    <span class="whish-list-price">${cartItem.totalPrice} VNĐ</span>
		                  </td>
		                  <td class="text-center">
		                    <a href="cart?action=delete-cart&productId=${cartItem.product.id}">
		                      <span class="trash"><i class="fas fa-trash-alt"></i></span>
		                    </a>
		                  </td>
		                </tr>
		              </c:forEach>
		              <!-- Kết thúc vòng lặp -->
		            </tbody>
		          </table>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>
		<!-- product tab end -->
			
		
		<div class="check-out-section pb-80">
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-7">
		      </div>
		      <div class="col-lg-5 mt-4 mt-lg-0">
		        <div class="your-order-area">
		          <div class="your-order-wrap gray-bg-4">
		            <div class="your-order-product-info">
		            
		            <!--  
		              <div class="your-order-top">
		                <ul>
		                  <li>Product</li>
		                  <li>Total</li>
		                </ul>
		              </div>
					-->
		              <div class="your-order-bottom">
		                <ul>
		                  <li class="your-order-shipping">Shipping</li>
		                  <li>Free shipping</li>
		                </ul>
		              </div>
		              <div class="your-order-total mb-0">
		                <ul>
		                  <li class="order-total">Total</li>
		                  <li>${totalPrice} VNĐ</li>
		                </ul>
		              </div>
		            </div>
		          </div>
		          <div class="Place-order mt-25">
		            <a class="btn btn--lg btn-primary my-2 my-sm-0" href="cart?action=order">Đặt hàng</a>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
	</c:when>
  <c:otherwise>
    <!-- Nếu không có giỏ hàng, hiển thị thông báo giỏ hàng trống -->
    <div class="container pt-80 pb-80" style="min-height: 400px">
      <div class="row">
        <div class="col-12">
          <h3 class="title mb-30 pb-25 text-capitalize" style="text-align: center">Your cart is empty</h3>
        </div>
      </div>
    </div>
  </c:otherwise>
</c:choose>



<script>
  // JavaScript function to handle quantity change
  function updateQuantity(productId, newQuantity) {
    // Find the form with the corresponding productId
    var form = document.getElementById("form_" + productId);
    
    // Set the new quantity value
    form.querySelector("input[name='quantity']").value = newQuantity;
    
    // Submit the form
    form.submit();
  }
</script>

</body>
</html>
