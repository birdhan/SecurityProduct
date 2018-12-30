<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<main class="ps-main">
  
  <div class="ps-section--features-product ps-section masonry-root">
	<div class="ps-container">
	  <div class="ps-section__header mb-50">
		<h3 class="ps-section__title" data-mask="零食预约">- 预约平台</h3>
		<ul class="ps-masonry__filter">
		  <li class="current"><a href="#" data-filter="*">All <sup>8</sup></a></li>
		  <li><a href="#" data-filter=".nike">Nike <sup>1</sup></a></li>
		  <li><a href="#" data-filter=".adidas">Adidas <sup>1</sup></a></li>
		  <li><a href="#" data-filter=".men">Men <sup>1</sup></a></li>
		  <li><a href="#" data-filter=".women">Women <sup>1</sup></a></li>
		  <li><a href="#" data-filter=".kids">Kids <sup>4</sup></a></li>
		</ul>
	  </div>
	  <div class="ps-section__content pb-50">
		<div class="masonry-wrapper" data-col-md="4" data-col-sm="2" data-col-xs="1" data-gap="30" data-radio="100%">
		  <div class="ps-masonry">
			<div class="grid-sizer"></div>
			
			<!-- 循环商品列表 -->
			
			<div class="grid-item nike">
			  <div class="grid-item__content-wrapper">
				<div class="ps-shoe mb-30">
				  <div class="ps-shoe__thumbnail"><img src="${pageContext.request.contextPath }/images/11111111.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail.html"></a>
				  </div>
				  <div class="ps-shoe__content">
					<div class="ps-shoe__variants">
					  <div><button class="btn btn-success">详情</button>&nbsp;<button class="btn btn-success">预约</button></div>
					  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">上线时间：2015-01-03</a>
					  <p class="ps-shoe__categories"><a href="#">预约数量：2000</a></p>
					</div>
					</div>
					<div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">我的名字是零食</a>
					  <p class="ps-shoe__categories"><a href="#"> 健康 安全 美丽 大方</a></p><span class="ps-shoe__price"> RMB 120</span>
					</div>
				  </div>
				</div>
			  </div>
			</div>
			
			
			
			<div class="grid-item nike">
			  <div class="grid-item__content-wrapper">
				<div class="ps-shoe mb-30">
				  <div class="ps-shoe__thumbnail"><img src="${pageContext.request.contextPath }/images/11111111.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail.html"></a>
				  </div>
				  <div class="ps-shoe__content">
					<div class="ps-shoe__variants">
					  <div><button class="btn btn-success">详情</button>&nbsp;<button class="btn btn-success">预约</button></div>
					  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">上线时间：2015-01-03</a>
					  <p class="ps-shoe__categories"><a href="#">预约数量：2000</a></p>
					</div>
					</div>
					<div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">我的名字是零食</a>
					  <p class="ps-shoe__categories"><a href="#"> 健康 安全 美丽 大方</a></p><span class="ps-shoe__price"> RMB 120</span>
					</div>
				  </div>
				</div>
			  </div>
			</div>
			
			
			<div class="grid-item nike">
			  <div class="grid-item__content-wrapper">
				<div class="ps-shoe mb-30">
				  <div class="ps-shoe__thumbnail"><img src="${pageContext.request.contextPath }/images/11111111.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail.html"></a>
				  </div>
				  <div class="ps-shoe__content">
					<div class="ps-shoe__variants">
					  <div><button class="btn btn-success">详情</button>&nbsp;<button class="btn btn-success">预约</button></div>
					  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">上线时间：2015-01-03</a>
					  <p class="ps-shoe__categories"><a href="#">预约数量：2000</a></p>
					</div>
					</div>
					<div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">我的名字是零食</a>
					  <p class="ps-shoe__categories"><a href="#"> 健康 安全 美丽 大方</a></p><span class="ps-shoe__price"> RMB 120</span>
					</div>
				  </div>
				</div>
			  </div>
			</div>
			
		  </div>
		</div>
	  </div>
	</div>
  </div>

<jsp:include page="footer.jsp"></jsp:include>

</main>



</body>
</html>