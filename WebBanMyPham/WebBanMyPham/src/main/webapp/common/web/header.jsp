<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header start -->
<header>
  <!-- header top start -->
  <div class="header-top theme1 bg-dark py-15">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 col-sm-6 order-last order-sm-first">
          <div
            class="d-flex justify-content-center justify-content-sm-start align-items-center"
          >
            <div class="social-network2">
              <ul class="d-flex">
                <li>
                  <a href="https://www.facebook.com/" target="_blank"
                    ><span class="icon-social-facebook"></span
                  ></a>
                </li>
                <li>
                  <a href="https://twitter.com/" target="_blank"
                    ><span class="icon-social-twitter"></span
                  ></a>
                </li>
                <li>
                  <a href="https://www.youtube.com/" target="_blank"
                    ><span class="icon-social-youtube"></span
                  ></a>
                </li>
                <li class="mr-0">
                  <a href="https://www.instagram.com/" target="_blank"
                    ><span class="icon-social-instagram"></span
                  ></a>
                </li>
              </ul>
            </div>
            <div class="media static-media ms-4 d-flex align-items-center">
              <div class="media-body">
                <div class="phone">
                  <a href="tel:(+123)4567890" class="text-white"
                    ><i class="icon-call-out me-1"></i> (+123)4567890</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-sm-6">
          <nav class="navbar-top pb-2 pb-sm-0 position-relative">
            <ul
              class="d-flex justify-content-center justify-content-md-end align-items-center"
            >
              <li>
				    <c:if test="${empty loggedInUser}">
				        <a href="web?action=get-page-login">Đăng nhập</a>
				    </c:if>
				    <c:if test="${not empty loggedInUser}">
				        <a
				            href="#"
				            id="dropdown1"
				            data-bs-toggle="dropdown"
				            aria-haspopup="true"
				            aria-expanded="false"
				        >
				            Welcome, ${loggedInUser.fullName} <i class="ion ion-ios-arrow-down"></i>
				        </a>
				        <ul class="topnav-submenu dropdown-menu" aria-labelledby="dropdown1">
				            <li><a href="bill?action=get-page-my-bill">Đơn hàng</a></li>
				            <li><a href="web?action=logout">Đăng xuất</a></li>
				        </ul>
				    </c:if>
				</li>
	<!--  
              <li>
                <a
                  href="#"
                  id="dropdown2"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                  >USD $ <i class="ion ion-ios-arrow-down"></i>
                </a>
                <ul
                  class="topnav-submenu dropdown-menu"
                  aria-labelledby="dropdown2"
                >
                  <li class="active"><a href="#">EUR €</a></li>
                  <li><a href="#">USD $</a></li>
                </ul>
              </li>
     -->         
              <li class="english">
                <a
                  href="#"
                  id="dropdown3"
                  class="pe-0"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <img src="assets/img/logo/us-flag.jpg" alt="us flag" />
                  VN
                  <i class="ion ion-ios-arrow-down"></i>
                </a>
                <ul
                  class="topnav-submenu dropdown-menu"
                  aria-labelledby="dropdown3"
                >
                  <li class="active">
                    <a href="#"
                      ><img src="assets/img/logo/us-flag.jpg" alt="us flag" />
                      English</a
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><img
                        src="assets/img/logo/france.jpg"
                        alt="france flag"
                      />
                      Français</a
                    >
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <!-- header top end -->
  <!-- header-middle satrt -->
  <div id="sticky" class="header-middle theme1 py-15 py-lg-0">
    <div class="container position-relative">
      <div class="row align-items-center">
        <div class="col-6 col-lg-2 col-xl-2">
          <div class="logo">
            <a href="index.html"
              ><img src="assets/img/logo/logo.png" alt="logo"
            /></a>
          </div>
        </div>
        <div class="col-xl-8 col-lg-7 d-none d-lg-block">
          <ul class="main-menu d-flex justify-content-center">
            <li class="active ml-0">
              <a href="home" class="ps-0">Home</a>
            </li>
            <li class="position-static">
              <a href="home?action=get-shop-page">Shop</a>
            </li>
            <li>
              <a href="#">Pages <i class="ion-ios-arrow-down"></i></a>
              <ul class="sub-menu">
                <li><a href="about-us.html">About Page</a></li>
                <li><a href="cart.html">Cart Page</a></li>
                <li><a href="checkout.html">Checkout Page</a></li>
                <li><a href="compare.html">Compare Page</a></li>
                <li><a href="login.html">Login &amp; Register Page</a></li>
                <li><a href="myaccount.html">Account Page</a></li>
                <li><a href="wishlist.html">Wishlist Page</a></li>
              </ul>
            </li>
            <li>
              <a href="blog-grid-3-column.html"
                >Blog <i class="ion-ios-arrow-down"></i
              ></a>
              <ul class="sub-menu">
                <li>
                  <a href="blog-grid-3-column.html">Blog Grid</a>
                  <ul class="sub-menu">
                    <li>
                      <a href="blog-grid-3-column.html">Blog Grid 3 column</a>
                    </li>
                    <li>
                      <a href="blog-grid-4-column.html">Blog Grid 4 column</a>
                    </li>
                    <li>
                      <a href="blog-grid-left-sidebar.html"
                        >Blog Grid Left Sidebar</a
                      >
                    </li>
                    <li>
                      <a href="blog-grid-right-sidebar.html"
                        >Blog Grid Right Sidebar</a
                      >
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="blog-single-left-sidebar.html">Blog List</a>
                  <ul class="sub-menu">
                    <li>
                      <a href="blog-list-left-sidebar.html"
                        >Blog List Left Sidebar</a
                      >
                    </li>
                    <li>
                      <a href="blog-list-right-sidebar.html"
                        >Blog List Right Sidebar</a
                      >
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="single-blog.html">Blog Single</a>
                  <ul class="sub-menu">
                    <li><a href="single-blog.html">Single Blog</a></li>
                    <li>
                      <a href="blog-single-left-sidebar.html"
                        >Blog Single Left Sidebar</a
                      >
                    </li>
                    <li>
                      <a href="blog-single-right-sidebar.html"
                        >Blog Single Right Sidbar</a
                      >
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="contact.html">contact Us</a></li>
          </ul>
        </div>
        <div class="col-6 col-lg-3 col-xl-2">
          <!-- search-form end -->
          <div class="d-flex align-items-center justify-content-end">
            <!-- static-media end -->
            <div class="cart-block-links theme1 d-none d-sm-block">
              <ul class="d-flex">
                <li>
                  <a href="javascript:void(0)" class="search search-toggle">
                    <i class="icon-magnifier"></i>
                  </a>
                </li>
                <li>
				    <a href="cart?action=get-page-cart">
				        <span class="position-relative">
				            <i class="icon-bag"></i>
				            <c:if test="${not empty totalQuantity}">
				                <span class="badge cbdg1">${totalQuantity}</span>
				            </c:if>
				        </span>
				    </a>
				</li>
                <!-- cart block end -->
              </ul>
            </div>
            <div class="mobile-menu-toggle theme1 d-lg-none">
              <a href="#offcanvas-mobile-menu" class="offcanvas-toggle">
                <svg viewbox="0 0 700 550">
                  <path
                    d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200"
                    id="top"
                  ></path>
                  <path d="M300,320 L540,320" id="middle"></path>
                  <path
                    d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190"
                    id="bottom"
                    transform="translate(480, 320) scale(1, -1) translate(-480, -318)"
                  ></path>
                </svg>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- header-middle end -->
</header>
<!-- header end -->