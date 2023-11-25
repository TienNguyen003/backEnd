<%@page import="DAO.Dao"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900%7CJost:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" media="all">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/shop.css">
<link rel="stylesheet" href="css/themify-icons/themify-icons.css">
<title>- Shop</title>
</head>

<body>
	<div id="shop">
		<div id="pages__header">
			<!-- <div class="pages__menu">
                <i class="ti-menu"></i>
                <ul class="pages__menu-responsive">
                    <li><a href="">Home</a></li>
                    <li><a href="">Shop</a></li>
                    <li><a href="">Pages</a></li>
                    <li><a href="">Blogs</a></li>
                    <li><a href="">Contact</a></li>
                </ul>
            </div> -->
			<div class="page__logo page__logo-iphoneX">
				<img width="160px" height="46px"
					src="https://priazo-store-demo.myshopify.com/cdn/shop/files/logo.png?v=1654222273"
					alt="Priazo">
			</div>

			<ul class="page__nav">
				<li><a href="">Home</a></li>
				<li><a href="">Shop</a></li>
				<li><a href="">Pages</a></li>
				<li><a href="">Blogs</a></li>
				<li><a href="">Contact</a></li>
			</ul>

			<ul class="page__navIcon">
				<li><a class="page__navIcon-link" href=""><i
						class="page__navIcon-icon ti-search"></i></a></li>
				<li><a class="page__navIcon-link" href=""><i
						class="page__navIcon-icon ti-user"></i></a></li>
				<li><a class="page__navIcon-link" href=""><i
						class="page__navIcon-icon ti-heart"></i></a></li>
				<li><a class="page__navIcon-link" href=""><i
						class="page__navIcon-icon ti-bag"></i></a></li>
			</ul>
		</div>

		<div class="shop__body">
			<div class="shop__body-slider">
				<img width="100%"
					src="https://priazo-store-demo.myshopify.com/cdn/shop/files/collection.jpg?v=1654223080"
					alt="slider">
				<div class="shop__body-slider-link">
					<h3>Products</h3>
					<p>
						<a href=""> Home <i class="ti-angle-right"></i>
						</a> Product
					</p>
				</div>
			</div>

			<div class="grid shop__body-box">
				<div class="row shop__body-product-row shop__body-product">
					<div class="col m-6 pc-8 t-8">
						<button type="button" class="shop__body-product-btn">
							<i class="ti-filter"></i> Filter
						</button>
					</div>
					<div class="col m-6 pc-4 t-4">
						<div class="row shop__body-product-row">
							<div class="col shop__body-product-list">
								<i class="ti-layout-grid2-alt"></i>
								<div class="shop__body-product-item">
									<div class="row shop__body-product-item-wrap">
										<div class="col">
											<a class="shop__body-product-icon" href="">1</a>
										</div>
										<div class="col">
											<a class="shop__body-product-icon" href="">2</a>
										</div>
										<div class="col">
											<a class="shop__body-product-icon" href="">3</a>
										</div>
										<div class="col">
											<a class="shop__body-product-icon" href="">4</a>
										</div>
										<div class="col">
											<a class="shop__body-product-icon" href="">5</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col">
								<select class="shop__body-product-select" name="" id="">
									<option class="shop__body-product-option" value="">Default
										sorting</option>
									<option class="shop__body-product-option" value="">Best
										selling</option>
									<option class="shop__body-product-option" value="">Alphabetically,
										A-Z</option>
									<option class="shop__body-product-option" value="">Price,
										high to low</option>
									<option class="shop__body-product-option" value="">Price,
										low to high</option>
									<option class="shop__body-product-option" value="">Date,
										old to new</option>
									<option class="shop__body-product-option" value="">Date,
										new to old</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="row shop__body-product">
					<div
						class="col pc-3 t-0 m-0 shop__body-product-slider shop__body-product-btn-hide">
						<div class="row">
							<div class="col pc-12 t-0 m-0">
								<div class="shop__body-product-category">
									<h2 class="shop__body-product-category-title">categories</h2>
									<ul class="shop__body-product-list-category">
										<li><a href="">Home</a></li>
										<li><a href="">Shop</a></li>
										<li><a href="">Pages</a></li>
										<li><a href="">Blogs</a></li>
										<li><a href="">Contact</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col pc-12 t-0 m-0">
								<div class="shop__body-product-category">
									<h2 class="shop__body-product-category-title">Price</h2>
									<ul class="shop__body-product-list-category">
										<li class="shop__body-product-list-category-checkbox"><input
											type="checkbox" name="" id="">$10 - $20</li>
										<li class="shop__body-product-list-category-checkbox"><input
											type="checkbox" name="" id="">$20 - $30</li>
										<li class="shop__body-product-list-category-checkbox"><input
											type="checkbox" name="" id="">$30 - $50</li>
										<li class="shop__body-product-list-category-checkbox"><input
											type="checkbox" name="" id="">$50 - $100</li>
										<li class="shop__body-product-list-category-checkbox"><input
											type="checkbox" name="" id="">$100 - $200</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col pc-12 t-0 m-0">
								<div class="shop__body-product-category">
									<h2 class="shop__body-product-category-title">Size</h2>
									<ul
										class="shop__body-product-list-category shop__body-product-list-category-size">
										<li><a href="">S</a></li>
										<li><a href="">M</a></li>
										<li><a href="">L</a></li>
										<li><a href="">XL</a></li>
										<li><a href="">XXL</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col pc-12 t-0 m-0">
								<div class="shop__body-product-category">
									<h2 class="shop__body-product-category-title">Tags</h2>
									<ul
										class="shop__body-product-list-category shop__body-product-list-category-size">
										<li><a href="">Black</a></li>
										<li><a href="">Blue</a></li>
										<li><a href="">Orange</a></li>
										<li><a href="">Red</a></li>
										<li><a href="">White</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col pc-12 t-0 m-0">
								<div class="shop__body-product-category">
									<h2 class="shop__body-product-category-title">Brand</h2>
									<ul class="shop__body-product-list-category">
										<li><a href="">Priazo - Clothing & Fashion Responsive
												Shopify Theme</a></li>
										<li><img width="100%"
											src="https://priazo-store-demo.myshopify.com/cdn/shop/files/shopify-banner-sidebar.jpg?v=1654222645"
											alt=""></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col pc-12 t-12 m-12 shop__body-product-box">

						<div class="row">
							<%
							Dao dao = new Dao();
							List<Product> p = dao.getProducts();
							for(Product item : p){
								out.print("<div class=\"col pc-3 t-4 m-6\">" + "<div class=\"shop__body-product-info\">"
										+ "<a href=\"\" class=\"shop__body-product-infoImage\">"
										+ "<img width=\"100%\" class=\"shop__body-product-info-img\""
										+ "src=\"https://priazo-store-demo.myshopify.com/cdn/shop/products/13.1.jpg?v=1654220309\"" + "alt=\"\">"
										+ "<img width=\"100%\"" + "class=\"shop__body-product-info-img shop__body-product-hover-image\""
										+ "src=\"https://priazo-store-demo.myshopify.com/cdn/shop/products/13.2.jpg?v=1654220309\"" + "alt=\"\">"
										+ "</a>"

										+ "<h4><a href=\"\">Backpack Handbag</a></h4>" + "<p>"+item.getPrice()+"</p>"
										+ "<ul class=\"shop__body-product-info-click\">"
										+ "<li><a title=\"Add to cart\" href=\"\"><i class=\"ti-shopping-cart\"></i></a></li>"
										+ "<form action\"\"><li><a title=\"View product\" href=\"\"><i class=\"ti-eye\"></i></a></li></form>"
										+ "<li><a title=\"Add to wishlist\" href=\"\"><i class=\"ti-heart\"></i></a></li>" + "</ul>" + "</div>"
										+ "</div>");
							}							
							%>
						</div>

						<!--  -->
						<div
							class="row shop__body-product-padding shop__body-product-page">
							<a class="shop__body-product-page-link" href="">1</a> <a
								class="shop__body-product-page-link" href="">2</a> <a
								class="shop__body-product-page-link" href=""><i
								class="ti-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>

			<div id="pages__footer">
				<div class="pages__footer-list">
					<div class="pages__footer-list-item-contact">
						<div class="pages__footer-list-item-contact-icon">
							<img width="160px" height="46px"
								src="https://priazo-store-demo.myshopify.com/cdn/shop/files/logo.png?v=1654222273"
								alt="Priazo">
						</div>
						<p class="pages__footer-list-item-contact-desc">Subscribe our
							newsletter and get discount 30% off</p>
						<form class="pages__footer-list-item-contact-box">
							<input type="text" name="" id="" required
								placeholder="Your email address..."
								class="pages__footer-list-item-contact-input">
							<button class="pages__footer-list-item-contact-submit">
								<i class="ti-hand-point-left"></i>
							</button>
						</form>
						<ul class="pages__footer-list-item-contact-link">
							<li><a href=""><i class="ti-twitter-alt"></i></a></li>
							<li><a href=""><i class="ti-dribbble"></i></a></li>
							<li><a href=""><i class="ti-linux"></i></a></li>
							<li><a href=""><i class="ti-linkedin"></i></a></li>
						</ul>
					</div>
					<div class="pages__footer-list-item">
						<h4 class="pages__footer-list-item-title">Customer Care</h4>
						<ul class="pages__footer-list-item-listInfo">
							<li><a href="">About Us</a></li>
							<li><a href="">Privacy Policy</a></li>
							<li><a href="">Terms & Conditions</a></li>
							<li><a href="">Products Return</a></li>
							<li><a href="">Wholesale Policy</a></li>
						</ul>
					</div>
					<div class="pages__footer-list-item">
						<h4 class="pages__footer-list-item-title">Quick Shop</h4>
						<ul class="pages__footer-list-item-listInfo">
							<li><a href="">Pagination</a></li>
							<li><a href="">Terms & Conditions</a></li>
							<li><a href="">Contact</a></li>
							<li><a href="">Accessories</a></li>
							<li><a href="">Home Page</a></li>
						</ul>
					</div>
					<div class="pages__footer-list-item">
						<h4 class="pages__footer-list-item-title">Company</h4>
						<ul class="pages__footer-list-item-listInfo">
							<li><a href="">Menu items</a></li>
							<li><a href="">Help Center</a></li>
							<li><a href="">Address Store</a></li>
							<li><a href="">Privacy Policy</a></li>
							<li><a href="">HomePage</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer__sub">
				<div>
					� Copyright 2022 | <a href="">Priazo By</a> <a href="">ShopiLaunch.</a>
					<a href="">Powered by Shopify.</a>
				</div>
				<div>
					<img width="100%" src="./assets/img/logoo-removebg-preview.webp"
						alt="">
				</div>
			</div>
</body>
<script src="js/main.js"></script>
</html>