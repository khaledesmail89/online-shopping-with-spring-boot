<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/css/cart/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition" onload="calcTotalProductPrice();">

	<!-- Header -->
	<header class="header1">
		<!-- Header desktop -->
		<div class="container-menu-header">
			<div class="topbar">
				<div class="topbar-social">
					<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
						href="#" class="topbar-social-item fa fa-instagram"></a> <a
						href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
						href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
						href="#" class="topbar-social-item fa fa-youtube-play"></a>
				</div>

				<span class="topbar-child1"> Free shipping for standard order
					over $100 </span>

				<div class="topbar-child2">
					<span class="topbar-email"> fashe@example.com </span>

					<div class="topbar-language rs1-select2">
						<select class="selection-1" name="time">
							<option>USD</option>
							<option>EUR</option>
						</select>
					</div>
				</div>
			</div>

			<div class="wrap_header">
				<!-- Logo -->
				<div class="header-logo">
					<a class="logo" href="${pageContext.request.contextPath}/"> <img
						src="${pageContext.request.contextPath}/resources/img/logo.png"
						alt="">
					</a>
				</div>
				<!-- /Logo -->

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li><a href="index.html">Home</a>
								<ul class="sub_menu">
									<li><a href="index.html">Homepage V1</a></li>
									<li><a href="home-02.html">Homepage V2</a></li>
									<li><a href="home-03.html">Homepage V3</a></li>
								</ul></li>

							<li><a href="product.html">Shop</a></li>

							<li class="sale-noti"><a href="product.html">Sale</a></li>

							<li><a href="cart.html">Features</a></li>

							<li><a href="blog.html">Blog</a></li>

							<li><a href="about.html">About</a></li>

							<li><a href="contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
				<div class="header-icons">
					<a href="#" class="header-wrapicon1 dis-block"> <img
						src="images/icons/icon-header-01.png" class="header-icon1"
						alt="ICON">
					</a> <span class="linedivide1"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png"
							class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
							class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-01.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> White Shirt
											With Pleat Detail Back </a> <span class="header-cart-item-info">
											1 x $19.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-02.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Converse All
											Star Hi Black Canvas </a> <span class="header-cart-item-info">
											1 x $39.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-03.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Nixon Porter
											Leather Watch In Tan </a> <span class="header-cart-item-info">
											1 x $17.00 </span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">Total: $75.00</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.html"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart </a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<a href="index.html" class="logo-mobile"> <img
				src="images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="#" class="header-wrapicon1 dis-block"> <img
						src="images/icons/icon-header-01.png" class="header-icon1"
						alt="ICON">
					</a> <span class="linedivide2"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png"
							class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
							class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-01.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> White Shirt
											With Pleat Detail Back </a> <span class="header-cart-item-info">
											1 x $19.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-02.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Converse All
											Star Hi Black Canvas </a> <span class="header-cart-item-info">
											1 x $39.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-03.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Nixon Porter
											Leather Watch In Tan </a> <span class="header-cart-item-info">
											1 x $17.00 </span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">Total: $75.00</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.html"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart </a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out </a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="wrap-side-menu">
			<nav class="side-menu">
				<ul class="main-menu">
					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8"><span
						class="topbar-child1"> Free shipping for standard order
							over $100 </span></li>

					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<div class="topbar-child2-mobile">
							<span class="topbar-email"> fashe@example.com </span>

							<div class="topbar-language rs1-select2">
								<select class="selection-1" name="time">
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>
					</li>

					<li class="item-topbar-mobile p-l-10">
						<div class="topbar-social-mobile">
							<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
								href="#" class="topbar-social-item fa fa-instagram"></a> <a
								href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
								href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
								href="#" class="topbar-social-item fa fa-youtube-play"></a>
						</div>
					</li>

					<li class="item-menu-mobile"><a href="index.html">Home</a>
						<ul class="sub-menu">
							<li><a href="index.html">Homepage V1</a></li>
							<li><a href="home-02.html">Homepage V2</a></li>
							<li><a href="home-03.html">Homepage V3</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>

					<li class="item-menu-mobile"><a href="product.html">Shop</a></li>

					<li class="item-menu-mobile"><a href="product.html">Sale</a></li>

					<li class="item-menu-mobile"><a href="cart.html">Features</a>
					</li>

					<li class="item-menu-mobile"><a href="blog.html">Blog</a></li>

					<li class="item-menu-mobile"><a href="about.html">About</a></li>

					<li class="item-menu-mobile"><a href="contact.html">Contact</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: url(images/heading-pages-01.jpg);">
		<h2 class="l-text2 t-center">Cart</h2>
	</section>

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
		<div class="container">
			<!-- Cart item -->
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite">
					<form:form action="updateCart" modelAttribute="cpm" method="POST">
						<table class="table-shopping-cart">
							<tr class="table-head">
								<th class="column-1"></th>
								<th class="column-2">Product</th>
								<th class="column-3">Price</th>
								<th class="column-4 p-l-70">Quantity</th>
								<th class="column-5">Total</th>
							</tr>

							<c:forEach var="cartProduct" varStatus="vs"
								items="${cpm.listOfProducts}">
								<form:hidden path="listOfProducts[${vs.index}].product.id" />
								<form:hidden path="listOfProducts[${vs.index}].product.name" />
								<form:hidden path="listOfProducts[${vs.index}].product.url" />
								<form:hidden path="listOfProducts[${vs.index}].product.price" />
								<form:hidden
									path="listOfProducts[${vs.index}].product.description" />


								<tr class="table-row">
									<td class="column-1">
										<div class="cart-img-product b-rad-4 o-f-hidden">
											<img
												src="${pageContext.request.contextPath}/resources/img/${cartProduct.product.url}"
												alt="IMG-PRODUCT">
										</div>
									</td>
									<td class="column-2">${cartProduct.product.name}</td>
									<td class="column-3 price-product">$${cartProduct.product.price}</td>
									<td class="column-4">
										<div class="flex-w bo5 of-hidden w-size17">

											<form:input class=" m-text18 t-center num-product"
												type="number" name="num-product1"
												oninput="calcTotalProductPrice();"
												path="listOfProducts[${vs.index}].quantity" />

										</div>
									</td>
									<td class="column-5 total-product-price"></td>
									<td><input type="submit" value="delete"
										onclick="if (confirm('Are you sure you want to delete?')) form.action='${pageContext.request.contextPath}/cart/removeProduct/${cartProduct.product.id}/'; else return false;" /></td>
								</tr>
							</c:forEach>
						</table>
						<center>
							<div class="size10 trans-0-4 m-t-10 m-b-10">
								<input type="submit" value="Update Cart" id="update-cart-button"
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" />
							</div>
						</center>
					</form:form>
				</div>
			</div>



			<!-- Total -->
			<div
				class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
				<h5 class="m-text20 p-b-24">Cart Totals</h5>

				<!--  -->
				<div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span class="m-text22 w-size19 w-full-sm"> Total: </span> <label
						id="totalPrice"></label>
				</div>

				<div class="size15 trans-0-4">
					<!-- Button -->
					<a href="${pageContext.request.contextPath}/checkout/"
						class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
						Proceed to Checkout</a>
				</div>
			</div>
		</div>
	</section>



	<!-- Footer -->
	<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
		<div class="flex-w p-b-90">
			<div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
				<h4 class="s-text12 p-b-30">GET IN TOUCH</h4>

				<div>
					<p class="s-text7 w-size27">Any questions? Let us know in store
						at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1)
						96 716 6879</p>

					<div class="flex-m p-t-30">
						<a href="#" class="fs-18 color1 p-r-20 fa fa-facebook"></a> <a
							href="#" class="fs-18 color1 p-r-20 fa fa-instagram"></a> <a
							href="#" class="fs-18 color1 p-r-20 fa fa-pinterest-p"></a> <a
							href="#" class="fs-18 color1 p-r-20 fa fa-snapchat-ghost"></a> <a
							href="#" class="fs-18 color1 p-r-20 fa fa-youtube-play"></a>
					</div>
				</div>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">Categories</h4>

				<ul>
					<li class="p-b-9"><a href="#" class="s-text7"> Men </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Women </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Dresses </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Sunglasses
					</a></li>
				</ul>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">Links</h4>

				<ul>
					<li class="p-b-9"><a href="#" class="s-text7"> Search </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> About Us </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Contact Us
					</a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Returns </a></li>
				</ul>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">Help</h4>

				<ul>
					<li class="p-b-9"><a href="#" class="s-text7"> Track Order
					</a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Returns </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> Shipping </a></li>

					<li class="p-b-9"><a href="#" class="s-text7"> FAQs </a></li>
				</ul>
			</div>

			<div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
				<h4 class="s-text12 p-b-30">Newsletter</h4>

				<form>
					<div class="effect1 w-size9">
						<input class="s-text7 bg6 w-full p-b-5" type="text" name="email"
							placeholder="email@example.com"> <span
							class="effect1-line"></span>
					</div>

					<div class="w-size2 p-t-20">
						<!-- Button -->
						<button
							class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
							Subscribe</button>
					</div>

				</form>
			</div>
		</div>

		<div class="t-center p-l-15 p-r-15">
			<a href="#"> <img class="h-size2" src="images/icons/paypal.png"
				alt="IMG-PAYPAL">
			</a> <a href="#"> <img class="h-size2" src="images/icons/visa.png"
				alt="IMG-VISA">
			</a> <a href="#"> <img class="h-size2"
				src="images/icons/mastercard.png" alt="IMG-MASTERCARD">
			</a> <a href="#"> <img class="h-size2" src="images/icons/express.png"
				alt="IMG-EXPRESS">
			</a> <a href="#"> <img class="h-size2"
				src="images/icons/discover.png" alt="IMG-DISCOVER">
			</a>

			<div class="t-center s-text8 p-t-20">
				Copyright © 2018 All rights reserved. | This template is made with
				<i class="fa fa-heart-o" aria-hidden="true"></i> by <a
					href="https://colorlib.com" target="_blank">Colorlib</a>
			</div>
		</div>
	</footer>



	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>



	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/css/cart/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/css/cart/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/css/cart/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/css/cart/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/css/cart/vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect2')
		});

		//Ajax call to update cart in DB
		$(document).ready(function() {
			$("#update-cart-button").click(function() {
				$.ajax({
					url : "",
					success : function() {
						//$("#div1").html(result);
						console.log("Ajax update cart called");

					}
				});
			});
		});

		function calcTotalProductPrice() {

			console.log("I am at calc");

			var totalPrice = document.getElementById("totalPrice");
			var results = document
					.getElementsByClassName("total-product-price");
			var prices = document.getElementsByClassName("price-product");
			var quantities = document.getElementsByClassName("num-product");
			var totalPrices = 0;

			for (i = 0; i < results.length; i++) {
				if (quantities[i].value < 0) {
					results[i].innerHTML = "$0";
					continue;
				}

				totalPrices += quantities[i].value
						* parseInt(prices[i].innerText.substring(1));
				results[i].innerHTML = "$" + quantities[i].value
						* parseInt(prices[i].innerText.substring(1));
				console.log("result = " + quantities[i].value + "*"
						+ parseInt(prices[i].innerText.substring(1)));
				console.log("total price : " + totalPrices);
			}
			totalPrice.innerHTML = "$" + totalPrices;
			console.log("total price : " + totalPrices);
			console.log("I am at End Of calc");
		}
	</script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/css/cart/js/main.js"></script>

</body>
</html>
