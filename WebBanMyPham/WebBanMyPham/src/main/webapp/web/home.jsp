<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

    
    


<!-- offcanvas-overlay start -->
<div class="offcanvas-overlay"></div>
<!-- offcanvas-overlay end -->
<!-- offcanvas-mobile-menu start -->
<div id="offcanvas-mobile-menu" class="offcanvas theme1 offcanvas-mobile-menu">
  <div class="inner">
    <div class="border-bottom mb-4 pb-4 text-end">
      <button class="offcanvas-close">×</button>
    </div>
    <div class="offcanvas-head mb-4">
      <nav class="offcanvas-top-nav">
        <ul class="d-flex flex-wrap">
          <li class="my-2 mx-2">
            <a href="wishlist.html">
              <i class="icon-bag"></i> Wishlist <span>(0)</span></a
            >
          </li>
          <li class="my-2 mx-2">
            <a href="wishlist.html">
              <i class="ion-android-favorite-outline"></i> Wishlist
              <span>(3)</span></a
            >
          </li>
          <li class="my-2 mx-2">
            <a href="compare.html"
              ><i class="ion-ios-loop-strong"></i> Compare <span>(2)</span>
            </a>
          </li>
          <li class="my-2 mx-2">
            <a class="search search-toggle" href="javascript:void(0)">
              <i class="icon-magnifier"></i> Search</a
            >
          </li>
        </ul>
      </nav>
    </div>
    <nav class="offcanvas-menu">
      <ul>
        <li>
          <a href="#"><span class="menu-text">Home</span></a>
          <ul class="offcanvas-submenu">
            <li><a href="index.html">Home 1</a></li>
            <li><a href="index-2.html">Home 2</a></li>
          </ul>
        </li>
        <li>
          <a href="#"><span class="menu-text">Shop</span></a>
          <ul class="offcanvas-submenu">
            <li>
              <a href="#"><span class="menu-text">Shop Grid</span></a>
              <ul class="offcanvas-submenu">
                <li>
                  <a href="shop-grid-3-column.html">Shop Grid 3 Column</a>
                </li>
                <li>
                  <a href="shop-grid-4-column.html">Shop Grid 4 Column</a>
                </li>
                <li>
                  <a href="shop-grid-left-sidebar.html"
                    >Shop Grid Left Sidebar</a
                  >
                </li>
                <li>
                  <a href="shop-grid-right-sidebar.html"
                    >Shop Grid Right Sidebar</a
                  >
                </li>
              </ul>
            </li>
            <li>
              <a href="#"><span class="menu-text">Shop List</span></a>
              <ul class="offcanvas-submenu">
                <li><a href="shop-grid-list.html">Shop List</a></li>
                <li>
                  <a href="shop-grid-list-left-sidebar.html"
                    >Shop List Left Sidebar</a
                  >
                </li>
                <li>
                  <a href="shop-grid-list-right-sidebar.html"
                    >Shop List Right Sidebar</a
                  >
                </li>
              </ul>
            </li>
            <li>
              <a href="#"><span class="menu-text">Shop Single</span></a>
              <ul class="offcanvas-submenu">
                <li><a href="single-product.html">Shop Single</a></li>
                <li>
                  <a href="single-product-configurable.html">Shop Variable</a>
                </li>
                <li>
                  <a href="single-product-affiliate.html">Shop Affiliate</a>
                </li>
                <li><a href="single-product-group.html">Shop Group</a></li>
              </ul>
            </li>
            <li>
              <a href="#"><span class="menu-text">other pages</span></a>
              <ul class="offcanvas-submenu">
                <li><a href="about-us.html">About Page</a></li>
                <li><a href="cart.html">Cart Page</a></li>
                <li><a href="checkout.html">Checkout Page</a></li>
                <li><a href="compare.html">Compare Page</a></li>
                <li><a href="login.html">Login &amp; Register Page</a></li>
                <li><a href="myaccount.html">Account Page</a></li>
                <li><a href="wishlist.html">Wishlist Page</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li>
          <a href="#"><span class="menu-text">Pages</span></a>
          <ul class="offcanvas-submenu">
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
            ><span class="menu-text">Blog</span></a
          >
          <ul class="offcanvas-submenu">
            <li>
              <a href="#"><span class="menu-text">Blog Grid</span></a>
              <ul class="offcanvas-submenu">
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
              <a href="#"><span class="menu-text">Blog List</span></a>
              <ul class="offcanvas-submenu">
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
              <a href="#"><span class="menu-text">Blog Single</span></a>
              <ul class="offcanvas-submenu">
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
        <li><a href="contact.html">Contact Us</a></li>
      </ul>
    </nav>
    <div class="offcanvas-social py-30">
      <ul>
        <li>
          <a href="#"><i class="icon-social-facebook"></i></a>
        </li>
        <li>
          <a href="#"><i class="icon-social-twitter"></i></a>
        </li>
        <li>
          <a href="#"><i class="icon-social-instagram"></i></a>
        </li>
        <li>
          <a href="#"><i class="icon-social-google"></i></a>
        </li>
        <li>
          <a href="#"><i class="icon-social-instagram"></i></a>
        </li>
      </ul>
    </div>
  </div>
</div>
<!-- offcanvas-mobile-menu end -->
<!-- OffCanvas Wishlist Start -->
<div id="offcanvas-wishlist" class="offcanvas offcanvas-wishlist theme1">
  <div class="inner">
    <div class="head d-flex flex-wrap justify-content-between">
      <span class="title">Wishlist</span>
      <button class="offcanvas-close">×</button>
    </div>
    <ul class="minicart-product-list">
      <li>
        <a href="single-product.html" class="image"
          ><img src="assets/img/mini-cart/4.png" alt="Cart product Image"
        /></a>
        <div class="content">
          <a href="single-product.html" class="title"
            >orginal Age Defying Cosmetics Makeup</a
          >
          <span class="quantity-price"
            >1 x <span class="amount">$100.00</span></span
          >
          <a href="#" class="remove">×</a>
        </div>
      </li>
      <li>
        <a href="single-product.html" class="image"
          ><img src="assets/img/mini-cart/5.png" alt="Cart product Image"
        /></a>
        <div class="content">
          <a href="single-product.html" class="title"
            >On Trend Makeup and Beauty Cosmetics</a
          >
          <span class="quantity-price"
            >1 x <span class="amount">$35.00</span></span
          >
          <a href="#" class="remove">×</a>
        </div>
      </li>
      <li>
        <a href="single-product.html" class="image"
          ><img src="assets/img/mini-cart/6.png" alt="Cart product Image"
        /></a>
        <div class="content">
          <a href="single-product.html" class="title"
            >orginal Age Defying Cosmetics Makeup</a
          >
          <span class="quantity-price"
            >1 x <span class="amount">$9.00</span></span
          >
          <a href="#" class="remove">×</a>
        </div>
      </li>
    </ul>
    <a
      href="wishlist.html"
      class="btn btn-secondary btn--lg d-block d-sm-inline-block mt-30"
      >view wishlist</a
    >
  </div>
</div>
<!-- OffCanvas Wishlist End -->

<!-- OffCanvas Cart Start -->
<div id="offcanvas-cart" class="offcanvas offcanvas-cart theme1">
  <div class="inner">
    <div class="head d-flex flex-wrap justify-content-between">
      <span class="title">Cart</span>
      <button class="offcanvas-close">×</button>
    </div>
    <ul class="minicart-product-list">
      <li>
        <a href="single-product.html" class="image"
          ><img src="assets/img/mini-cart/1.png" alt="Cart product Image"
        /></a>
        <div class="content">
          <a href="single-product.html" class="title"
            >orginal Age Defying Cosmetics Makeup</a
          >
          <span class="quantity-price"
            >1 x <span class="amount">$100.00</span></span
          >
          <a href="#" class="remove">×</a>
        </div>
      </li>
      <li>
        <a href="single-product.html" class="image"
          ><img src="assets/img/mini-cart/2.png" alt="Cart product Image"
        /></a>
        <div class="content">
          <a href="single-product.html" class="title"
            >On Trend Makeup and Beauty Cosmetics</a
          >
          <span class="quantity-price"
            >1 x <span class="amount">$35.00</span></span
          >
          <a href="#" class="remove">×</a>
        </div>
      </li>
      <li>
        <a href="single-product.html" class="image"
          ><img src="assets/img/mini-cart/3.png" alt="Cart product Image"
        /></a>
        <div class="content">
          <a href="single-product.html" class="title"
            >orginal Age Defying Cosmetics Makeup</a
          >
          <span class="quantity-price"
            >1 x <span class="amount">$9.00</span></span
          >
          <a href="#" class="remove">×</a>
        </div>
      </li>
    </ul>
    <div class="sub-total d-flex flex-wrap justify-content-between">
      <strong>Subtotal :</strong>
      <span class="amount">$144.00</span>
    </div>
    <a
      href="cart.html"
      class="btn btn-secondary btn--lg d-block d-sm-inline-block me-sm-2"
      >view cart</a
    >
    <a
      href="checkout.html"
      class="btn btn-dark btn--lg d-block d-sm-inline-block mt-4 mt-sm-0"
      >checkout</a
    >
    <p class="minicart-message">Free Shipping on All Orders Over $100!</p>
  </div>
</div>
<!-- OffCanvas Cart End -->



<!-- main slider start -->
<section class="bg-light">
  <div class="main-slider dots-style theme1">
    <div class="slider-item bg-img bg-img1">
      <div class="container">
        <div class="row align-items-center slider-height">
          <div class="col-12">
            <div class="slider-content">
              <p
                class="text animated"
                data-animation-in="fadeInDown"
                data-delay-in=".300"
              >
                Face Makeup Brush
              </p>
              <h2 class="title animated">
                <span
                  class="animated d-block"
                  data-animation-in="fadeInLeft"
                  data-delay-in=".800"
                  >Skincare Brush Set</span
                >
                <span
                  class="animated font-weight-bold"
                  data-animation-in="fadeInRight"
                  data-delay-in="1.5"
                  >Sale 30% Off</span
                >
              </h2>
              <a
                href="shop-grid-4-column.html"
                class="btn btn-outline-primary btn--lg animated mt-45 mt-sm-25"
                data-animation-in="fadeInLeft"
                data-delay-in="1.9"
                >Shop now</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- slider-item end -->
    <div class="slider-item bg-img bg-img2">
      <div class="container">
        <div class="row align-items-center slider-height">
          <div class="col-12">
            <div class="slider-content">
              <p
                class="text animated"
                data-animation-in="fadeInLeft"
                data-delay-in=".300"
              >
                Morneva Shampoo
              </p>

              <h2 class="title">
                <span
                  class="animated d-block"
                  data-animation-in="fadeInRight"
                  data-delay-in=".800"
                  >scalpcare Shampoo</span
                >
                <span
                  class="animated font-weight-bold"
                  data-animation-in="fadeInUp"
                  data-delay-in="1.5"
                  >Sale 40% Off</span
                >
              </h2>
              <a
                href="shop-grid-4-column.html"
                class="btn btn-outline-primary btn--lg animated mt-45 mt-sm-25"
                data-animation-in="fadeInLeft"
                data-delay-in="1.9"
                >Shop now</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- slider-item end -->
    <div class="slider-item bg-img bg-img3">
      <div class="container">
        <div class="row align-items-center slider-height">
          <div class="col-12">
            <div class="slider-content">
              <p
                class="text animated"
                data-animation-in="fadeInLeft"
                data-delay-in=".300"
              >
                Runway Lip Palette red
              </p>
              <h2 class="title">
                <span
                  class="animated d-block"
                  data-animation-in="fadeInRight"
                  data-delay-in=".800"
                  >Lipscare Lipsticks</span
                >
                <span
                  class="animated font-weight-bold"
                  data-animation-in="fadeInUp"
                  data-delay-in="1.5"
                  >Sale 60% Off</span
                >
              </h2>
              <a
                href="shop-grid-4-column.html"
                class="btn btn-outline-primary btn--lg animated mt-45 mt-sm-25"
                data-animation-in="fadeInLeft"
                data-delay-in="1.9"
                >Shop now</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- slider-item end -->
  </div>
</section>
<!-- main slider end -->
<!-- staic media start -->
<section class="static-media-section py-80 bg-white">
  <div class="container">
    <div class="static-media-wrap theme-bg">
      <div class="row">
        <div class="col-lg-3 col-sm-6 py-3">
          <div class="d-flex static-media2 flex-column flex-sm-row">
            <img
              class="align-self-center mb-2 mb-sm-0 me-auto me-sm-3"
              src="assets/img/icon/2.png"
              alt="icon"
            />
            <div class="media-body">
              <h4 class="title">Free Shipping</h4>
              <p class="text">On all orders over $75.00</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 py-3">
          <div class="d-flex static-media2 flex-column flex-sm-row">
            <img
              class="align-self-center mb-2 mb-sm-0 me-auto me-sm-3"
              src="assets/img/icon/3.png"
              alt="icon"
            />
            <div class="media-body">
              <h4 class="title">Free Returns</h4>
              <p class="text">Returns are free within 9 days</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 py-3">
          <div class="d-flex static-media2 flex-column flex-sm-row">
            <img
              class="align-self-center mb-2 mb-sm-0 me-auto me-sm-3"
              src="assets/img/icon/4.png"
              alt="icon"
            />
            <div class="media-body">
              <h4 class="title">100% Payment Secure</h4>
              <p class="text">Your payment are safe with us.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 py-3">
          <div class="d-flex static-media2 flex-column flex-sm-row">
            <img
              class="align-self-center mb-2 mb-sm-0 me-auto me-sm-3"
              src="assets/img/icon/5.png"
              alt="icon"
            />
            <div class="media-body">
              <h4 class="title">Support 24/7</h4>
              <p class="text">Contact us 24 hours a day</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- staic media end -->
<!-- common banner  start -->
<div class="common-banner bg-white">
  <div class="container">
    <div class="row">
      <div class="col-md-6 mb-30">
        <div class="banner-thumb">
          <a
            href="shop-grid-4-column.html"
            class="zoom-in d-block overflow-hidden"
          >
            <img src="assets/img/banner/1.jpg" alt="banner-thumb-naile" />
          </a>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 mb-30">
        <div class="banner-thumb">
          <a
            href="shop-grid-4-column.html"
            class="zoom-in d-block overflow-hidden"
          >
            <img src="assets/img/banner/2.jpg" alt="banner-thumb-naile" />
          </a>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 mb-30">
        <div class="banner-thumb">
          <a
            href="shop-grid-4-column.html"
            class="zoom-in d-block overflow-hidden"
          >
            <img src="assets/img/banner/3.jpg" alt="banner-thumb-naile" />
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- common banner  end -->

<!-- product tab start -->
<section class="product-tab bg-white pt-50 pb-80">
  <div class="container">
    <div class="product-tab-nav mb-50">
      <div class="row align-items-center">
        <div class="col-12">
          <div class="section-title text-center">
            <h2 class="title pb-3 mb-3">Our products</h2>
            <p class="text">
              Lorem ipsum dolor sit amet consectetur, adipisicing elit.
              Perspiciatis, culpa?
            </p>
          </div>
        </div>
        <div class="col-12">
          <nav class="product-tab-menu theme1">
            <ul
              class="nav nav-pills justify-content-center"
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
                  >new products</a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="pills-profile-tab"
                  data-bs-toggle="pill"
                  href="#pills-profile"
                  role="tab"
                  aria-controls="pills-profile"
                  aria-selected="false"
                  >onsale</a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="pills-contact-tab"
                  data-bs-toggle="pill"
                  href="#pills-contact"
                  role="tab"
                  aria-controls="pills-contact"
                  aria-selected="false"
                  >upcoming products</a
                >
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <!-- product-tab-nav end -->
    <div class="row">
      <div class="col-12">
        <div class="tab-content" id="pills-tabContent">
          <!-- first tab-pane -->
          <div
            class="tab-pane fade show active"
            id="pills-home"
            role="tabpanel"
            aria-labelledby="pills-home-tab"
          >
            <div class="product-slider-init theme1 slick-nav">
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/1.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >All Natural Makeup Beauty Cosmetics</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/2.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >On Trend Makeup and Beauty Cosmetics</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/3.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >The Cosmetics and Beauty brand Shoppe</a
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
                            <span class="product-price">$21.51</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/4.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >orginal Age Defying Cosmetics Makeup</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/5.png"
                            alt="thumbnail"
                          />
                          <img
                            class="second-img"
                            src="assets/img/product/6.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >orginal Clear Water Cosmetics On Trend</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
            </div>
          </div>
          <!-- second tab-pane -->
          <div
            class="tab-pane fade"
            id="pills-profile"
            role="tabpanel"
            aria-labelledby="pills-profile-tab"
          >
            <div class="product-slider-init theme1 slick-nav">
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/1.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >All Natural Makeup Beauty Cosmetics</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/2.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >On Trend Makeup and Beauty Cosmetics</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/3.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >The Cosmetics and Beauty brand Shoppe</a
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
                            <span class="product-price">$21.51</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/4.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >orginal Age Defying Cosmetics Makeup</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/5.png"
                            alt="thumbnail"
                          />
                          <img
                            class="second-img"
                            src="assets/img/product/6.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >orginal Clear Water Cosmetics On Trend</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
            </div>
          </div>
          <!-- third tab-pane -->
          <div
            class="tab-pane fade"
            id="pills-contact"
            role="tabpanel"
            aria-labelledby="pills-contact-tab"
          >
            <div class="product-slider-init theme1 slick-nav">
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/1.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >All Natural Makeup Beauty Cosmetics</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/2.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >On Trend Makeup and Beauty Cosmetics</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/3.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >The Cosmetics and Beauty brand Shoppe</a
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
                            <span class="product-price">$21.51</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/4.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >orginal Age Defying Cosmetics Makeup</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
              <div class="slider-item">
                <div class="card product-card">
                  <div class="card-body p-0">
                    <div class="media flex-column">
                      <div class="product-thumbnail position-relative">
                        <span class="badge badge-danger top-right">New</span>
                        <a href="single-product.html">
                          <img
                            class="first-img"
                            src="assets/img/product/5.png"
                            alt="thumbnail"
                          />
                          <img
                            class="second-img"
                            src="assets/img/product/6.png"
                            alt="thumbnail"
                          />
                        </a>
                        <!-- product links -->
                        <ul class="actions d-flex justify-content-center">
                          <li>
                            <a class="action" href="wishlist.html">
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
                      <div class="media-body">
                        <div class="product-desc">
                          <h3 class="title">
                            <a href="shop-grid-4-column.html"
                              >orginal Clear Water Cosmetics On Trend</a
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
                            <span class="product-price">$11.90</span>
                            <button
                              class="pro-btn"
                              data-bs-toggle="modal"
                              data-bs-target="#add-to-cart"
                            >
                              <i class="icon-basket"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- slider-item end -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- product tab end -->
<!-- common banner  start -->
<div class="common-banner bg-white pb-50">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6 mb-30">
        <div class="banner-thumb">
          <a
            class="zoom-in d-block overflow-hidden position-relative"
            href="shop-grid-4-column.html"
            ><img src="assets/img/banner/5.jpg" alt="banner-thumb-naile"
          /></a>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-30">
        <div class="banner-thumb">
          <a
            class="zoom-in d-block overflow-hidden position-relative"
            href="shop-grid-4-column.html"
          >
            <img src="assets/img/banner/6.jpg" alt="banner-thumb-naile"
          /></a>
        </div>
      </div>
      <div class="col-lg-6 col-md-12 mb-30">
        <div class="banner-thumb">
          <a
            class="zoom-in d-block overflow-hidden position-relative"
            href="shop-grid-4-column.html"
          >
            <img src="assets/img/banner/4.jpg" alt="banner-thumb-naile"
          /></a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- common banner  end -->
<!-- product tab repetation start -->
<section class="bg-white theme1 pb-80">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <!-- section-title start -->
        <div class="section-title text-center">
          <h2 class="title pb-3 mb-3">New Arrival products</h2>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit.
            Dignissimos, repellat.
          </p>
        </div>
        <!-- section-title end -->
        <div class="product-slider-init theme1 slick-nav">
          <div class="slider-item">
            <div class="card product-card">
              <div class="card-body p-0">
                <div class="media flex-column">
                  <div class="product-thumbnail position-relative">
                    <span class="badge badge-danger top-right">New</span>
                    <a href="single-product.html">
                      <img
                        class="first-img"
                        src="assets/img/product/8.png"
                        alt="thumbnail"
                      />
                    </a>
                    <!-- product links -->
                    <ul class="actions d-flex justify-content-center">
                      <li>
                        <a class="action" href="wishlist.html">
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
                  <div class="media-body">
                    <div class="product-desc">
                      <h3 class="title">
                        <a href="shop-grid-4-column.html"
                          >All Natural Makeup Beauty Cosmetics</a
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
                        <span class="product-price">$11.90</span>
                        <button
                          class="pro-btn"
                          data-bs-toggle="modal"
                          data-bs-target="#add-to-cart"
                        >
                          <i class="icon-basket"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="card product-card">
              <div class="card-body p-0">
                <div class="media flex-column">
                  <div class="product-thumbnail position-relative">
                    <span class="badge badge-danger top-right">New</span>
                    <a href="single-product.html">
                      <img
                        class="first-img"
                        src="assets/img/product/9.png"
                        alt="thumbnail"
                      />
                    </a>
                    <!-- product links -->
                    <ul class="actions d-flex justify-content-center">
                      <li>
                        <a class="action" href="wishlist.html">
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
                  <div class="media-body">
                    <div class="product-desc">
                      <h3 class="title">
                        <a href="shop-grid-4-column.html"
                          >On Trend Makeup and Beauty Cosmetics</a
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
                        <span class="product-price">$11.90</span>
                        <button
                          class="pro-btn"
                          data-bs-toggle="modal"
                          data-bs-target="#add-to-cart"
                        >
                          <i class="icon-basket"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="card product-card">
              <div class="card-body p-0">
                <div class="media flex-column">
                  <div class="product-thumbnail position-relative">
                    <span class="badge badge-danger top-right">New</span>
                    <a href="single-product.html">
                      <img
                        class="first-img"
                        src="assets/img/product/10.png"
                        alt="thumbnail"
                      />
                    </a>
                    <!-- product links -->
                    <ul class="actions d-flex justify-content-center">
                      <li>
                        <a class="action" href="wishlist.html">
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
                  <div class="media-body">
                    <div class="product-desc">
                      <h3 class="title">
                        <a href="shop-grid-4-column.html"
                          >The Cosmetics and Beauty brand Shoppe</a
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
                        <span class="product-price">$21.51</span>
                        <button
                          class="pro-btn"
                          data-bs-toggle="modal"
                          data-bs-target="#add-to-cart"
                        >
                          <i class="icon-basket"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="card product-card">
              <div class="card-body p-0">
                <div class="media flex-column">
                  <div class="product-thumbnail position-relative">
                    <span class="badge badge-danger top-right">New</span>
                    <a href="single-product.html">
                      <img
                        class="first-img"
                        src="assets/img/product/11.png"
                        alt="thumbnail"
                      />
                    </a>
                    <!-- product links -->
                    <ul class="actions d-flex justify-content-center">
                      <li>
                        <a class="action" href="wishlist.html">
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
                  <div class="media-body">
                    <div class="product-desc">
                      <h3 class="title">
                        <a href="shop-grid-4-column.html"
                          >orginal Age Defying Cosmetics Makeup</a
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
                        <span class="product-price">$11.90</span>
                        <button
                          class="pro-btn"
                          data-bs-toggle="modal"
                          data-bs-target="#add-to-cart"
                        >
                          <i class="icon-basket"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="card product-card">
              <div class="card-body p-0">
                <div class="media flex-column">
                  <div class="product-thumbnail position-relative">
                    <span class="badge badge-danger top-right">New</span>
                    <a href="single-product.html">
                      <img
                        class="first-img"
                        src="assets/img/product/12.png"
                        alt="thumbnail"
                      />
                      <img
                        class="second-img"
                        src="assets/img/product/13.png"
                        alt="thumbnail"
                      />
                    </a>
                    <!-- product links -->
                    <ul class="actions d-flex justify-content-center">
                      <li>
                        <a class="action" href="wishlist.html">
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
                  <div class="media-body">
                    <div class="product-desc">
                      <h3 class="title">
                        <a href="shop-grid-4-column.html"
                          >orginal Clear Water Cosmetics On Trend</a
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
                        <span class="product-price">$11.90</span>
                        <button
                          class="pro-btn"
                          data-bs-toggle="modal"
                          data-bs-target="#add-to-cart"
                        >
                          <i class="icon-basket"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <!-- New women's Fresh Faced Trendy cream -->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- product tab repetation end -->

<!-- blog-section start -->
<section class="blog-section theme1 pb-65">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="section-title text-center">
          <h2 class="title pb-3 mb-3">from our Latest Blogs</h2>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit.
          </p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <div class="blog-init slick-nav">
          <div class="slider-item">
            <div class="single-blog">
              <a
                class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                href="blog-grid-left-sidebar.html"
              >
                <img src="assets/img/blog-post/1.png" alt="blog-thumb-naile" />
              </a>
              <div class="blog-post-content">
                <a
                  class="blog-link theme-color d-inline-block mb-10 text-uppercase"
                  href="https://themeforest.net/user/hastech"
                  >Fashion</a
                >
                <h3 class="title mb-15">
                  <a href="single-blog.html">This is first Post For Blog</a>
                </h3>
                <p class="sub-title">
                  Posted by
                  <a
                    class="theme-color d-inline-block mx-1"
                    href="https://themeforest.net/user/hastech"
                    >HasTech</a
                  >
                  12TH Nov 2023
                </p>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-blog">
              <a
                class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                href="blog-grid-left-sidebar.html"
              >
                <img src="assets/img/blog-post/2.png" alt="blog-thumb-naile" />
              </a>
              <div class="blog-post-content">
                <a
                  class="blog-link theme-color d-inline-block mb-10 text-uppercase"
                  href="https://themeforest.net/user/hastech"
                  >Fashion</a
                >
                <h3 class="title mb-15">
                  <a href="single-blog.html">This is Secound Post For Blog</a>
                </h3>
                <p class="sub-title">
                  Posted by
                  <a
                    class="theme-color d-inline-block mx-1"
                    href="https://themeforest.net/user/hastech"
                    >HasTech</a
                  >
                  12TH Nov 2023
                </p>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-blog">
              <a
                class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                href="blog-grid-left-sidebar.html"
              >
                <img src="assets/img/blog-post/3.png" alt="blog-thumb-naile" />
              </a>
              <div class="blog-post-content">
                <a
                  class="blog-link theme-color d-inline-block mb-10 text-uppercase"
                  href="https://themeforest.net/user/hastech"
                  >Fashion</a
                >
                <h3 class="title mb-15">
                  <a href="single-blog.html">This is third Post For Blog</a>
                </h3>
                <p class="sub-title">
                  Posted by
                  <a
                    class="theme-color d-inline-block mx-1"
                    href="https://themeforest.net/user/hastech"
                    >HasTech</a
                  >
                  12TH Nov 2023
                </p>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-blog">
              <a
                class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                href="blog-grid-left-sidebar.html"
              >
                <img src="assets/img/blog-post/4.png" alt="blog-thumb-naile" />
              </a>
              <div class="blog-post-content">
                <a
                  class="blog-link theme-color d-inline-block mb-10 text-uppercase"
                  href="https://themeforest.net/user/hastech"
                  >Fashion</a
                >
                <h3 class="title mb-15">
                  <a href="single-blog.html">This is fourth Post For Blog</a>
                </h3>
                <p class="sub-title">
                  Posted by
                  <a
                    class="theme-color d-inline-block mx-1"
                    href="https://themeforest.net/user/hastech"
                    >HasTech</a
                  >
                  12TH Nov 2023
                </p>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-blog">
              <a
                class="blog-thumb mb-20 zoom-in d-block overflow-hidden"
                href="blog-grid-left-sidebar.html"
              >
                <img src="assets/img/blog-post/5.png" alt="blog-thumb-naile" />
              </a>
              <div class="blog-post-content">
                <a
                  class="blog-link theme-color d-inline-block mb-10 text-uppercase"
                  href="https://themeforest.net/user/hastech"
                  >Fashion</a
                >
                <h3 class="title mb-15">
                  <a href="single-blog.html">This is fiveth Post For Blog</a>
                </h3>
                <h5 class="sub-title">
                  Posted by
                  <a
                    class="theme-color d-inline-block mx-1"
                    href="https://themeforest.net/user/hastech"
                    >HasTech
                  </a>
                  12TH Nov 2023
                </h5>
              </div>
            </div>
          </div>
          <!-- slider-item end -->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- blog-section end -->
<!-- brand slider start -->
<div class="brand-slider-section theme1 bg-white">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="brand-init border-top py-35 slick-nav-brand">
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/1.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/2.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/3.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/4.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/5.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/2.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
          <div class="slider-item">
            <div class="single-brand">
              <a
                href="https://themeforest.net/user/hastech"
                class="brand-thumb"
              >
                <img src="assets/img/brand/3.jpg" alt="brand-thumb-nail" />
              </a>
            </div>
          </div>
          <!-- slider-item end -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- brand slider end -->




<!-- modals start -->
<!-- first modal -->
<div
  class="modal fade theme1 style1"
  id="quick-view"
  tabindex="-1"
  role="dialog"
>
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button
          type="button"
          class="close"
          data-bs-dismiss="modal"
          aria-label="Close"
        >
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-8 mx-auto col-lg-5 mb-5 mb-lg-0">
            <div class="product-sync-init mb-20">
              <div class="single-product">
                <div class="product-thumb">
                  <img
                    src="assets/img/slider/thumb/1.jpg"
                    alt="product-thumb"
                  />
                </div>
              </div>
              <!-- single-product end -->
              <div class="single-product">
                <div class="product-thumb">
                  <img
                    src="assets/img/slider/thumb/2.jpg"
                    alt="product-thumb"
                  />
                </div>
              </div>
              <!-- single-product end -->
              <div class="single-product">
                <div class="product-thumb">
                  <img
                    src="assets/img/slider/thumb/3.jpg"
                    alt="product-thumb"
                  />
                </div>
              </div>
              <!-- single-product end -->
              <div class="single-product">
                <div class="product-thumb">
                  <img
                    src="assets/img/slider/thumb/4.jpg"
                    alt="product-thumb"
                  />
                </div>
              </div>
              <!-- single-product end -->
            </div>

            <div class="product-sync-nav">
              <div class="single-product">
                <div class="product-thumb">
                  <a href="javascript:void(0)">
                    <img
                      src="assets/img/slider/thumb/1.1.jpg"
                      alt="product-thumb"
                  /></a>
                </div>
              </div>
              <!-- single-product end -->
              <div class="single-product">
                <div class="product-thumb">
                  <a href="javascript:void(0)">
                    <img
                      src="assets/img/slider/thumb/2.1.jpg"
                      alt="product-thumb"
                  /></a>
                </div>
              </div>
              <!-- single-product end -->
              <div class="single-product">
                <div class="product-thumb">
                  <a href="javascript:void(0)"
                    ><img
                      src="assets/img/slider/thumb/3.1.jpg"
                      alt="product-thumb"
                  /></a>
                </div>
              </div>
              <!-- single-product end -->
              <div class="single-product">
                <div class="product-thumb">
                  <a href="javascript:void(0)"
                    ><img
                      src="assets/img/slider/thumb/4.1.jpg"
                      alt="product-thumb"
                  /></a>
                </div>
              </div>
              <!-- single-product end -->
            </div>
          </div>
          <div class="col-lg-7">
            <div class="modal-product-info">
              <div class="product-head">
                <h2 class="title">
                  New Balance Running Arishi trainers in triple
                </h2>
                <h4 class="sub-title">Reference: demo_5</h4>
                <div class="star-content mb-20">
                  <span class="star-on"><i class="fas fa-star"></i> </span>
                  <span class="star-on"><i class="fas fa-star"></i> </span>
                  <span class="star-on"><i class="fas fa-star"></i> </span>
                  <span class="star-on"><i class="fas fa-star"></i> </span>
                  <span class="star-on de-selected"
                    ><i class="fas fa-star"></i>
                  </span>
                </div>
              </div>
              <div class="product-body">
                <span class="product-price text-center">
                  <span class="new-price">$29.00</span>
                </span>
                <p>
                  Break old records and make new goals in the New Balance®
                  Arishi Sport v1.
                </p>
                <ul>
                  <li>Predecessor: None.</li>
                  <li>Support Type: Neutral.</li>
                  <li>Cushioning: High energizing cushioning.</li>
                </ul>
              </div>
              <div class="d-flex mt-30">
                <div class="product-size">
                  <h3 class="title">Dimension</h3>
                  <select>
                    <option value="0">40x60cm</option>
                    <option value="1">60x90cm</option>
                    <option value="2">80x120cm</option>
                  </select>
                </div>
              </div>
              <div class="product-footer">
                <div
                  class="product-count style d-flex flex-column flex-sm-row my-4"
                >
                  <div class="count d-flex">
                    <input type="number" min="1" max="10" step="1" value="1" />
                    <div class="button-group">
                      <button class="count-btn increment">
                        <i class="fas fa-chevron-up"></i>
                      </button>
                      <button class="count-btn decrement">
                        <i class="fas fa-chevron-down"></i>
                      </button>
                    </div>
                  </div>
                  <div>
                    <button class="btn btn-dark btn--xl mt-5 mt-sm-0">
                      <span class="me-2"><i class="ion-android-add"></i></span>
                      Add to cart
                    </button>
                  </div>
                </div>
                <div class="addto-whish-list">
                  <a href="#"><i class="icon-heart"></i> Add to wishlist</a>
                  <a href="#"><i class="icon-shuffle"></i> Add to compare</a>
                </div>
                <div class="pro-social-links mt-10">
                  <ul class="d-flex align-items-center">
                    <li class="share">Share</li>
                    <li>
                      <a href="#"><i class="ion-social-facebook"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="ion-social-twitter"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="ion-social-google"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="ion-social-pinterest"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- second modal -->
<div class="modal fade style2" id="compare" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button
          type="button"
          class="close"
          data-bs-dismiss="modal"
          aria-label="Close"
        >
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h5 class="title">
          <i class="fa fa-check"></i> Product added to compare.
        </h5>
      </div>
    </div>
  </div>
</div>
<!-- second modal -->
<div class="modal fade style3" id="add-to-cart" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header justify-content-center bg-dark">
        <h5 class="modal-title" id="add-to-cartCenterTitle">
          Product successfully added to your shopping cart
        </h5>
        <button
          type="button"
          class="close"
          data-bs-dismiss="modal"
          aria-label="Close"
        >
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-5 divide-right">
            <div class="row">
              <div class="col-md-6">
                <img src="assets/img/modal/1.jpg" alt="img" />
              </div>
              <div class="col-md-6 mb-2 mb-md-0">
                <h4 class="product-name">
                  New Balance Running Arishi trainers in triple
                </h4>
                <h5 class="price">$$29.00</h5>
                <h6 class="color">
                  <strong>Dimension: </strong>: <span class="dmc">40x60cm</span>
                </h6>
                <h6 class="quantity"><strong>Quantity:</strong>&nbsp;1</h6>
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="modal-cart-content">
              <p class="cart-products-count">There is 1 item in your cart.</p>
              <p><strong>Total products:</strong>&nbsp;$123.72</p>
              <p><strong>Total shipping:</strong>&nbsp;$7.00</p>
              <p><strong>Taxes</strong>&nbsp;$0.00</p>
              <p><strong>Total:</strong>&nbsp;$130.72 (tax excl.)</p>
              <div class="cart-content-btn">
                <button
                  type="button"
                  class="btn btn-dark btn--md mt-4"
                  data-bs-dismiss="modal"
                >
                  Continue shopping
                </button>
                <button class="btn btn-dark btn--md mt-4">
                  Proceed to checkout
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- modals end -->

<!-- search-box and overlay start -->
<div class="overlay">
  <div class="scale"></div>
  <form class="search-box" action="#">
    <input type="text" name="search" placeholder="Search products..." />
    <button id="close" type="submit">
      <i class="ion-ios-search-strong"></i>
    </button>
  </form>
  <button class="close"><i class="ion-android-close"></i></button>
</div>
<!-- search-box and overlay end -->

    
    
    
    
    
</body>
</html>
