<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<main class="ps-main">
  <div class="ps-products-wrap pt-80 pb-80">
	<div class="ps-products" data-mh="product-listing">
	
		
		
		<!-- 一次循环 -->
	  <c:forEach items="${list}" var="list">
	  <div class="ps-product-action" style="margin-top: 5px;">
		<div class="" style="width: 100%; height: 150px; border: 2px solid black;">
		<div style="margin: 5px; float: left;"><img alt="" src="${pageContext.request.contextPath }/images/11111111.jpg" width="140px" height="136px">
		</div>
		<div style="width: 20%; height: 126px; border-right: 1px solid black; float: left; margin: 10px;">
		<p><h4 style="margin-top: 5px;">商品名称：</h4></p>
		<p><h4 style="line-height: 40px;">${list.sname}</h4></p>
		<p><h5>数量：${list.number}</h5></p>
		</div>
		<div style="width: 30%;  height: 126px; border-right: 1px solid black; float: left; margin: 10px;">
		<p><h5>下单时间：${list.otime}</h5></p>
		<p><h5>运单号：商家未上传</h5></p>
		<p><h5>收货地址：${list.uaddress}</h5></p>
		</div>
		<div style="width: 20%;  height: 126px; float: left; margin: 10px;">
		<p><h5>需支付：${list.spic}</h5></p>
		<p><h4>付款方式：货到付款</h4></p>
		<p><h4>当前状态：等待商家发货。</h4></p>
		</div>
		</div>
	  </div>
	  </c:forEach>
	  
	  
	  
	 
	  
	  
	 
	  
	  
	 
	   
	  
	
	</div>
	<div class="ps-sidebar" data-mh="product-listing" >
	  <aside class="ps-widget--sidebar ps-widget--category">
		<div class="ps-widget__header">
		  <h3>我的仓库</h3>
		</div>
		<div class="ps-widget__content">
		  <ul class="ps-list" >
			<li class="current" style="font-weight: 400;font-family: monospace;margin-bottom: 20px;font-size: 20px;color: black;"><a href="${pageContext.request.contextPath }/findorderByostatus?ostatus=unpaid">购物车</a></li>
			<li class="current" style="font-weight: 400;font-family: monospace;margin-bottom: 20px;font-size: 20px;color: black;"><a href="${pageContext.request.contextPath }/findorderByostatus?ostatus=noship">待发货</a></li>
			<li class="current" style="font-weight: 400;font-family: monospace;margin-bottom: 20px;font-size: 20px;color: black;"><a href="${pageContext.request.contextPath }/findorderByostatus?ostatus=unreceived">待收货</a></li>
			<li class="current" style="font-weight: 400;font-family: monospace;margin-bottom: 20px;font-size: 20px;color: black;"><a href="${pageContext.request.contextPath }/findorderByostatus?ostatus=unevaluation">待评价</a></li>
			<li class="current" style="font-weight: 400;font-family: monospace;margin-bottom: 20px;font-size: 20px;color: black;"><a href="${pageContext.request.contextPath }/findorderByostatus?ostatus=order">预约中</a></li>
		  </ul>
		</div>
	  </aside>
	  
	</div>
  </div>

  
</main>




<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>