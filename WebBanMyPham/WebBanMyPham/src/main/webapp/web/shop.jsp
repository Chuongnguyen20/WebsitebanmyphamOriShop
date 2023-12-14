<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>




<!-- product tab start -->
<div class="product-tab bg-white pt-10 pb-10">
  <div class="container">
    <div class="grid-nav-wraper bg-lighten2 mb-30">
      <div class="row align-items-center">
        <div class="col-12 col-md-6 mb-3 mb-md-0">
          <nav class="shop-grid-nav">
            <ul
              class="nav nav-pills align-items-center"
              id="pills-tab"
              role="tablist"
            >
              <li class="nav-item">
                <a
                  class="nav-link active"
                  id="pills-home-tab"
                  data-bs-toggle="pill"
                  href="#pills-home"
                  role="tab"
                  aria-controls="pills-home"
                  aria-selected="true"
                >
                  <i class="fa fa-th"></i>
                </a>
              </li>
              <li class="nav-item mr-0">
                <a
                  class="nav-link"
                  id="pills-profile-tab"
                  data-bs-toggle="pill"
                  href="#pills-profile"
                  role="tab"
                  aria-controls="pills-profile"
                  aria-selected="false"
                  ><i class="fa fa-list"></i
                ></a>
              </li>
              <li>
                <span class="total-products text-capitalize"
                  >There are 13 products.</span
                >
              </li>
            </ul>
          </nav>
        </div>
        <div class="col-12 col-md-6 position-relative">
          <div class="shop-grid-button d-flex align-items-center">
            <span class="sort-by">Sort by:</span>
            <select
              class="form-select custom-select"
              aria-label="Default select example"
            >
              <option selected>Open this select menu</option>
              <option value="1">One</option>
              <option value="2">Two</option>
              <option value="3">Three</option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <!-- product-tab-nav end -->
    <div class="tab-content" id="pills-tabContent">
      <!-- first tab-pane -->
      <div
        class="tab-pane fade show active"
        id="pills-home"
        role="tabpanel"
        aria-labelledby="pills-home-tab"
      >
        <div class="row grid-view theme1">
  
  		<!-- Hiển thị danh sách sản phẩm -->
        <c:forEach var="product" items="${productList}">
          <div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
            <div class="card product-card">
              <div class="card-body">
                <div class="product-thumbnail position-relative">
                  <span class="badge badge-success top-left">-10%</span>
                  <span class="badge badge-danger top-right">hot</span>
                  <a href="product?action=get-page-product-detail&productId=${product.id}">
                    <img
                      class="first-img"
                      src="assets/img/product/${product.imageName}"
                      alt="thumbnail"
                    />
                  </a>
                  <!-- product links -->
                  <ul class="actions d-flex justify-content-center">
                    <li>
                      <a class="action" href="#">
                        <span
                          data-bs-toggle="tooltip"
                          data-placement="bottom"
                          title="add to wishlist"
                          class="icon-heart"
                        >
                        </span>
                      </a>
                    </li>
                    <li>
                      <a
                        class="action"
                        href="#"
                        data-bs-toggle="modal"
                        data-bs-target="#compare"
                      >
                        <span
                          data-bs-toggle="tooltip"
                          data-placement="bottom"
                          title="Add to compare"
                          class="icon-shuffle"
                        ></span>
                      </a>
                    </li>
                    <li>
                      <a
                        class="action"
                        href="#"
                        data-bs-toggle="modal"
                        data-bs-target="#quick-view"
                      >
                        <span
                          data-bs-toggle="tooltip"
                          data-placement="bottom"
                          title="Quick view"
                          class="icon-magnifier"
                        ></span>
                      </a>
                    </li>
                  </ul>
                  <!-- product links end-->
                </div>
                <div class="product-desc py-0 px-0">
                  <h3 class="title">
                    <a href="shop-grid-4-column.html"
                      >${product.productName }</a
                    >
                  </h3>
                  <div class="star-rating">
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star de-selected"></span>
                  </div>
                  <div
                    class="d-flex align-items-center justify-content-between"
                  >
                    <span class="product-price"
                      ><del class="del">${product.originalPrice} đ</del>
                      <span class="onsale">${product.salePrice} đ</span></span
                    >
                    <a
                      class="pro-btn"
                      href="cart?action=add-cart&productId=${product.id}"
                    >
                      <i class="icon-basket"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- product-list End -->
          </div>
        </c:forEach>
        </div>
      </div>
    
    </div>
    
  	 <!-- Phân trang -->
    <div class="row">
        <div class="col-12">
            <nav class="pagination-section">
                <ul class="pagination justify-content-center">
                    <c:forEach var="i" begin="1" end="${totalPages}">
                        <c:choose>
                            <c:when test="${i eq currentPage}">
                                <li class="page-item active">
                                    <span class="page-link">${i}</span>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item">
                                    <a class="page-link" href="home?action=get-shop-page&page=${i}">${i}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
            </nav>
        </div>
    </div>
  
  </div>
</div>
<!-- product tab end -->



</body>
</html>
