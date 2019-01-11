<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>

<script type="text/javascript">
function votebutton(sid,stype){
	
	var user = {
			sid:sid,
			stype:stype
           
        };
	//ajax
	$.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "/Linsnacks/addvote" ,//url
                data: user,
                success: function (success) {
                	confirm("感谢你的参与，小琳会更加努力！");
                },
                error : function() {
                    alert("添加失败,请重新登录。");
                }
            });
}


</script>
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
								<img class="zoom" src="http://localhost:80/pic/${snack.picture}"
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
						<h1>${user}|前来参与 |</h1>
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
							<h4>${snack.designer}&nbsp;&nbsp;&nbsp;${user}</h4>
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
								role="tab" data-toggle="tab">商品详情</a></li>
							<li><a href="#tab_02" aria-controls="tab_02" role="tab"
								data-toggle="tab">设计交流</a></li>
							<li><a href="#tab_03" aria-controls="tab_03" role="tab"
								data-toggle="tab">互动投票</a></li>
						</ul>
					</div>
					<div class="tab-content mb-60">
						<div class="tab-pane active" role="tabpanel" id="tab_01">
							<p>${snack.describese}</p>
						</div>






						<div class="tab-pane" role="tabpanel" id="tab_02">
							<p class="mb-20">
								<strong>对于本商品上线前的设计交流社区</strong>
							</p>

							<!-- 留言信息列表循环 -->
							<c:forEach items="${leavelist}" var="list">
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
											来自<a href="">${list.uname}</a>&nbsp;的宝贵意见 - ${list.ltime}
										</p>
										</header>
										<p>${list.message}</p>
									</div>
								</div>
							</c:forEach>






							<form class="ps-product__review"
								action="${pageContext.request.contextPath }/addleave"
								method="post">

								<div class="row">

									<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 ">
										<div class="form-group">
											<label>By:<a href="">${user}</a></label> <input type="hidden"
												name="id" value="${snack.id}">
											<textarea class="form-control" rows="6" name="message"></textarea>
										</div>
										<div class="form-group">
											<button class="ps-btn ps-btn--sm" type="submit">
												Submit<i class="ps-icon-next"></i>
											</button>
										</div>
									</div>
								</div>
							</form>


						</div>


						<!-- 互动投票 -->
						<div class="tab-pane" role="tabpanel" id="tab_03">
							<p class="mb-20">
								<strong>对于商品的整体评价进行打分</strong>
							</p>

							<div style="width: 500px;">
								<div id="bar-chart">
									<div class="graph">
										<ul class="x-axis">
											
											<li><span>20</span></li>
											<li><span>40</span></li>
											<li><span>60</span></li>
											<li><span>80</span></li>
											<li><span>100</span></li>
										</ul>
										<ul class="y-axis">
											<li><span>100%</span></li>
											<li><span>75%</span></li>
											<li><span>50%</span></li>
											<li><span>25%</span></li>
											<li><span>0</span></li>
										</ul>
										<div class="bars">
											<div class="bar-group">
												<div class="bar bar-2 stat-2" style="height: ${find20}%;">
													<span>3520</span>
												</div>
												
											</div>

											<div class="bar-group">
												<div class="bar bar-5 stat-2" style="height: ${find40}%;">
													<span>6080</span>
												</div>
												
											</div>

											<div class="bar-group">
												<div class="bar bar-8 stat-2" style="height: ${find60}%;">
													<span>6240</span>
												</div>
												
											</div>

											<div class="bar-group">
												<div class="bar bar-11 stat-2" style="height: ${find80}%;">
													<span>3520</span>
												</div>
												
											</div>

											<div class="bar-group">
												<div class="bar bar-14 stat-2" style="height: ${find100}%;">
													<span>2000</span>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<p class="mb-20">
								<strong>请您为我们设计的产品打分，如果您有宝贵的意见与建议请参与设计与交流。</strong>
							</p>
							<button class="btn btn-success" style="margin-left: 100px;" onclick="votebutton('${snack.id}','20')">20分</button>
							<button class="btn btn-success" onclick="votebutton('${snack.id}','40')">40分</button>
							<button class="btn btn-success" onclick="votebutton('${snack.id}','60')">60分</button>
							<button class="btn btn-success" onclick="votebutton('${snack.id}','80')">80分</button>
							<button class="btn btn-success" onclick="votebutton('${snack.id}','100')">100分</button>
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