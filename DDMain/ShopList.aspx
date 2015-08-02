<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShopList.aspx.cs" Inherits="ShopList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Region</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#region1">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											East Delhi
										</a>
									</h4>
								</div>
								<div id="region1" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Mayur Vihar </a></li>
											<li><a href="">Krishna Nagar </a></li>
											<li><a href="">Preet Vihar </a></li>
											<li><a href="">Laxmi Nagar</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#region2">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											South Delhi
										</a>
									</h4>
								</div>
								<div id="region2" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Lajpat Nagar</a></li>
											<li><a href="">South X</a></li>
											<li><a href="">Malviya Nagar</a></li>
											<li><a href="">Hauz khas</a></li>
											<li><a href="">Saket</a></li>
											<li><a href="">New Friends Colony</a></li>
											<li><a href="">Vasant Vihar</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#region3">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Womens
										</a>
									</h4>
								</div>
								<div id="region3" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Janakpuri</a></li>
											<li><a href="">Vikas Puri</a></li>
											<li><a href="">Rajouri Garden</a></li>
											<li><a href="">Kirti Nagar</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">North Delhi</a></h4>
								</div>
							</div>
							
							
						</div><!--/category-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href=""> <span class="pull-right">(50)</span>Restaurants</a></li>
									<li><a href=""> <span class="pull-right">(56)</span>Jewellery</a></li>
									<li><a href=""> <span class="pull-right">(27)</span>Shoes </a></li>
									<li><a href=""> <span class="pull-right">(32)</span>Basg</a></li>
									<li><a href=""> <span class="pull-right">(5)</span>Artificial Jewellery</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Range in Meters</h2>
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b> 0</b> <b class="pull-right"> 600</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Search Result</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/1.jpg" alt="" />
										<h2>Sephora</h2>
									<%--	<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Sephora</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/2.jpg" alt="" />
										<h2>iStore</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>iStore</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/3.jpg" alt="" />
										<h2>golden</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>golden</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/4.jpg" alt="" />
										<h2>iPlaza</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>iPlaza</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
										</div>
									</div>
									<%--<img src="images/home/new.png" class="new" alt="" />--%>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/j1.jpg" alt="" />
										<h2>Pandora</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Pandora</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
										</div>
									</div>
									<%--<img src="images/home/sale.png" class="new" alt="" />--%>
								</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/j3.jpg" alt="" />
										<h2>Ressorts</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Ressorts</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>View Shop</a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/l2.jpg" alt="" />
										<h2>Kalpana</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Kalpana</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
										</div>
									</div>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/l3.jpg" alt="" />
										<h2>$56</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
										</div>
									</div>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/l4.jpg" alt="" />
										<h2>$56</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
										</div>
									</div>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/6.jpg" alt="" />
										<h2>$56</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
										</div>
									</div>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/9.jpg" alt="" />
										<h2>$56</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
										</div>
									</div>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/10.jpg" alt="" />
										<h2>$56</h2>
										<%--<p>Easy Polo Black Edition</p>--%>
										<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<%--<p>Easy Polo Black Edition</p>--%>
											<a href="#" class="btn btn-default add-to-cart"><%--<i class="fa fa-shopping-cart"></i>--%>Add to cart</a>
										</div>
									</div>
								</div>
								<%--<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>--%>
							</div>
						</div>
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>


</asp:Content>

