<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<script type="text/javascript">
function yuyue(hanhanhan){
	
	
}

</script>
<main class="ps-main">
  <div class="test">
	<div class="container">
	  <div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 ">
			</div>
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
			  <div class="item"><img class="zoom" src="http://localhost:80/pic/${snack.picture}" alt="" data-zoom-image="http://localhost:80/pic/${snack.picture}"></div>
			 <!--  <div class="item"><img class="zoom" src="images/shoe-detail/2.jpg" alt="" data-zoom-image="images/shoe-detail/2.jpg"></div>
			  <div class="item"><img class="zoom" src="images/shoe-detail/3.jpg" alt="" data-zoom-image="images/shoe-detail/3.jpg"></div> -->
			</div>
		  </div>
		<!--  右侧横线 -->
		  
		  <div class="ps-product__info">
			<div class="ps-product__rating" style="border-bottom: 2px solid #00afc7;height: 50px;">
			  
			</div>
			<h1>${snack.name}</h1>
			<p class="ps-product__category"><a href="#"> 首批预约数量：${snack.upsize}</a>,<a href="#"> 剩余数量：${snack.inventory}</a></p>
			<h3 class="ps-product__price"><del>RMB ${snack.price}</del></h3>
			<div class="ps-product__block ps-product__quickview">
			  <h4>特点</h4>
			  <p style="border-bottom: 1px solid #e5e5e5;">${snack.special}</p>
			</div>
			<div class="ps-product__block ps-product__style">
			  <h5>设计师</h5>
			  <h4>${snack.designer}</h4>
			</div>
			<div class="ps-product__block ps-product__style">
			  <h5>点击量</h5>
			  <h4>${snack.chickrate}</h4>
			</div>
			<div class="ps-product__block ps-product__size">
			  <h4>上线时间<a href="#">${snack.uptime}</a></h4>
			  
			  <!-- <div class="form-group">
				<input class="form-control" type="number" value="1">
			  </div> -->
			</div>
			<div class="ps-product__shopping"><a class="ps-btn mb-10" style="cursor: pointer;" onclick="yuyue('${snack.id}')">加入预约<i class="ps-icon-next"></i></a>
			  <!-- <div class="ps-product__actions"><a class="mr-10" href="whishlist.html"><i class="ps-icon-heart"></i></a><a href="compare.html"><i class="ps-icon-share"></i></a></div> -->
			</div>
		  </div>
		 
		  <div class="clearfix"></div>
		  <div class="ps-product__content mt-50">
			<ul class="tab-list" role="tablist">
			  <li class="active"><a href="#tab_01" aria-controls="tab_01" role="tab" data-toggle="tab">详情</a></li>
			</ul>
		  </div>
		  <div class="tab-content mb-60">
			<div class="tab-pane active" role="tabpanel" id="tab_01">
			  <p> ${snack.describese}</p>
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