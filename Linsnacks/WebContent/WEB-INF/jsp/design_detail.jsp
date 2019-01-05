<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<main class="ps-main">
	<div class="test">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 "></div>
			</div>
		</div>
	</div>
	<div class="ps-product--detail pt-60">
		<div class="ps-container">
			<div class="row">
				<div class="col-lg-10 col-md-12 col-lg-offset-1">
					<div class="ps-product__thumbnail">
						<!-- 图片位置两个 -->
						<div class="ps-product__image">
							<div class="item">
								<img class="zoom"
									src="http://localhost:80/pic/${snack.picture}"
									alt=""
									data-zoom-image="http://localhost:80/pic/${snack.picture}">
							</div>
							<!--  <div class="item"><img class="zoom" src="images/shoe-detail/2.jpg" alt="" data-zoom-image="images/shoe-detail/2.jpg"></div>
			  <div class="item"><img class="zoom" src="images/shoe-detail/3.jpg" alt="" data-zoom-image="images/shoe-detail/3.jpg"></div> -->
						</div>
					</div>
					<!--  右侧横线 -->
					<div class="ps-product__info">
						<h1>欢迎</h1>
						<div class="ps-product__rating"
							style="border-bottom: 2px solid #00afc7; height: 20px; border-top: 2px solid #00afc7;">
						</div>
						<h1>韩春阳 | 前来参与 |</h1>
						<h4>${snack.name}的设计与交流</h4>
						<h3 class="ps-product__price">
							设计价格：
							<del>RMB ${snack.price}</del>
						</h3>
						<div class="ps-product__block ps-product__quickview">
							<h4>主题概况</h4>
							<p style="border-bottom: 1px solid #e5e5e5;">${snack.special}</p>
						</div>
						<div class="ps-product__block ps-product__style">
							<h5>主设计师&nbsp;&nbsp;辅助设计师</h5>
							<h4>${snack.designer}&nbsp;&nbsp;&nbsp;韩春阳</h4>
						</div>
						<div class="ps-product__block ps-product__style">
							<h5>点击量</h5>
							<h4>${snack.chickrate}</h4>
						</div>
						<div class="ps-product__block ps-product__size">
							<h4>
								预计上线时间<a href="#">${snack.uptime}</a>
							</h4>

							<!-- <div class="form-group">
				<input class="form-control" type="number" value="1">
			  </div> -->
						</div>

						<div class="ps-product__rating"
							style="border-bottom: 2px solid #00afc7; height: 20px; border-top: 2px solid #00afc7;">
						</div>
						<!-- <div class="ps-product__shopping"><a class="ps-btn mb-10" href="cart.html">加入预约<i class="ps-icon-next"></i></a>
			  <div class="ps-product__actions"><a class="mr-10" href="whishlist.html"><i class="ps-icon-heart"></i></a><a href="compare.html"><i class="ps-icon-share"></i></a></div>
			</div> -->
					</div>
					<div class="clearfix"></div>
					<div class="ps-product__content mt-50">
						<ul class="tab-list" role="tablist">
							<li class="active"><a href="#tab_01" aria-controls="tab_01"
								role="tab" data-toggle="tab">零食详情</a></li>
						</ul>
					</div>
					<div class="tab-content mb-60">
						<div class="tab-pane active" role="tabpanel" id="tab_01">
							<p>${snack.describese}</p>
						</div>
						
						<div class="ps-product__content mt-50">
						<ul class="tab-list" role="tablist">
							<li class="active"><a href="#tab_01" aria-controls="tab_01"
								role="tab" data-toggle="tab">设计交流社区</a></li>
						</ul>
					</div>




						<div class="tab-pane active" role="tabpanel" id="tab_01">
							<p class="mb-20">
								 <strong>对于本商品上线前的设计交流社区</strong>
							</p>
							
							<!-- 留言信息列表循环 -->
							
							<div class="ps-review">
								<div class="ps-review__thumbnail">
									<img src="images/user/1.jpg" alt="找不到">
								</div>
								<div class="ps-review__content">
									<header> <select class="ps-rating">
										<option value="1">1</option>
										<option value="1">2</option>
										<option value="1">3</option>
										<option value="1">4</option>
										<option value="5">5</option>
									</select>
									<p>
										来自<a href=""> 韩春阳</a>&nbsp;的宝贵意见 - 2015-30-52
									</p>
									</header>
									<p>你这个太贵了，图标太low，建议用天线宝宝。你这个太贵了，图标太low，建议用天线宝宝。
									你这个太贵了，图标太low，建议用天线宝宝。你这个太贵了，图标太low，建议用天线宝宝。
									你这个太贵了，图标太low，建议用天线宝宝。
									你这个太贵了，图标太low，建议用天线宝宝。你这个太贵了，图标太low，建议用天线宝宝。</p>
								</div>
							</div>
							
							
							<div class="ps-review">
								<div class="ps-review__thumbnail">
									<img src="images/user/1.jpg" alt="找不到">
								</div>
								<div class="ps-review__content">
									<header> <select class="ps-rating">
										<option value="1">1</option>
										<option value="1">2</option>
										<option value="1">3</option>
										<option value="1">4</option>
										<option value="5">5</option>
									</select>
									<p>
										来自<a href=""> 韩春阳</a>&nbsp;的宝贵意见 - 2015-30-52
									</p>
									</header>
									<p>你这个太贵了，图标太low，建议用天线宝宝。你这个太贵了，图标太low，建议用天线宝宝。
									你这个太贵了，图标太low，建议用天线宝宝。你这个太贵了，图标太low，建议用天线宝宝。
									你这个太贵了，图标太low，建议用天线宝宝。
									你这个太贵了，图标太low，建议用天线宝宝。你这个太贵了，图标太low，建议用天线宝宝。</p>
								</div>
							</div>
							
							
							
							
							<form class="ps-product__review" action="_action" method="post">
								
								<div class="row">
									
									<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 ">
										<div class="form-group">
											<label>By:<a href=""> 韩春阳</a></label>
											<textarea class="form-control" rows="6" name=""></textarea>
										</div>
										<div class="form-group">
											<button class="ps-btn ps-btn--sm">
												Submit<i class="ps-icon-next"></i>
											</button>
										</div>
									</div>
								</div>
							</form>
							
							
						</div>




					</div>
				</div>
			</div>
		</div>
	</div>







	</main>




	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>