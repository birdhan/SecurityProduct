<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<main class="ps-main">
  
  <div class="ps-section--features-product ps-section masonry-root">
	<div class="ps-container">
	  <div class="ps-section__header mb-50">
		<h3 class="ps-section__title" data-mask="健康零食">- 美味共享</h3>
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
			<c:forEach items="${list}" var="list">
			<div class="grid-item nike">
			  <div class="grid-item__content-wrapper">
				<div class="ps-shoe mb-30">
				  <div class="ps-shoe__thumbnail"><img src="http://localhost:80/pic/${list.picture}" alt=""><%-- <a class="ps-shoe__overlay" href="${pageContext.request.contextPath }/details"></a> --%>
				  </div>
				  <div class="ps-shoe__content">
					<div class="ps-shoe__variants">
					  <div><a href="${pageContext.request.contextPath }/upindexdetails?id=${list.id}"><button class="btn btn-success" style="width: 100%">详情</button></a></div>
					  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">设计师：${list.designer}</a>
					  <p class="ps-shoe__categories"><a href="#">热度：${list.chickrate}</a></p>
					</div>
					</div>
					<div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">我的名字是${list.name}</a>
					  <p class="ps-shoe__categories"><a href="#"> ${list.special}</a></p><span class="ps-shoe__price"> RMB ${list.price}</span>
					</div>
				  </div>
				</div>
			  </div>
			</div>
			</c:forEach>
			
			
			
		  </div>
		</div>
	  </div>
	</div>
  </div>

<jsp:include page="footer.jsp"></jsp:include>

</main>



</body>
</html>