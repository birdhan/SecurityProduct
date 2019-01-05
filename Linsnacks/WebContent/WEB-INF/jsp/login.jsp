<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Login</title>
		<meta charset="utf-8">
		<link href="${pageContext.request.contextPath }/css/stylelogin.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
<script type="text/javascript">
window.onload = function(){
	
	if(${typehid}=="0"){  
		
	/* 	document.getElementsByClassName("hidtext").setAttribute("type","text"); */
		/* document.getElementsById("hid1").setAttribute("type","text");*/
	/* alert(document.getElementsById("hid1"));  */
		$("#hid1").attr("type","text");
		$("#hid2").attr("type","text");
		
	}
} 


</script>
	 <!-----start-main---->
	 <div class="main">
		<div class="login-form">
			<h1>${ value}</h1> 
					<div class="head">
						<img src="${pageContext.request.contextPath }/img/user.png" alt=""/>
					</div>
				<form action="${actionurl }">
						<input type="text" class="text" placeholder="用户名">
						<input type="password" placeholder="password">
						<input type="hidden" class="hidtext" id="hid1" placeholder="联系方式">
						<input type="hidden" class="hidtext" id="hid2" placeholder="收货地址">
						<div class="submit">
							<input type="submit" value="${typesubmin }" >
					</div>	
					<p><a href="${pageContext.request.contextPath }/loginuser?value=快速注册">还没有账户&nbsp;&nbsp;&nbsp;点我注册</a></p>
				</form>
			</div>
			<!--//End-login-form-->
			 <!-----start-copyright---->
   					<div class="copy-right">
						
					</div>
				<!-----//end-copyright---->
		</div>
			 <!-----//end-main---->
		 		
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>