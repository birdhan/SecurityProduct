<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>感谢您的评价</title>
<link href="${pageContext.request.contextPath }/images/logo003.jpg" rel="icon">

</head>
<body>
<script type="text/javascript">

	var afterUrl =  window.location.search.substring(1);
alert(afterUrl);

function abcd(){
	window.close();
	confirm("ok");
	
}

</script>
<h5>您的评价是我们前进的动力</h5>
<form action="">

<textarea rows="5" cols="10" style="width: 95%;"></textarea>
<input type="button" value="确认" onclick="abcd()">

</form>

</body>
</html>