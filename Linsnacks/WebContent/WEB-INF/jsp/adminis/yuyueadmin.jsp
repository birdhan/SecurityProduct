<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理</title>
<link href="${pageContext.request.contextPath }/images/logo003.jpg" rel="icon">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/clockp.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/clockh.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/ddaccordion.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/admin.js"></script>
<script type="text/javascript">
ddaccordion.init({
	headerclass: "submenuheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})
</script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jconfirmaction.jquery.js"></script>


<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/js/niceforms.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="${pageContext.request.contextPath }/js/niceforms-default.css" />

</head>
<body>

<div id="main_container">





   <script>
    
function delete10(shanid) {
	if (confirm("确定删除用户预约")) {
		
		window.location.href = "${pageContext.request.contextPath }/yuyuedeadmin?id="
				+ shanid;

	} else {

	}

}
function successa(shanid) {
	if (confirm("确定放货给此用户")) {
		
		window.location.href = "${pageContext.request.contextPath }/yuyueupadmin?id="
				+ shanid;

	} else {

	}

}
    </script>





		<div class="header">
    <div class="logo"><a><img src="${pageContext.request.contextPath}/images/logo001.jpg" alt="" title="" border="0" width="200px" height="60px" style="border-radius: 6px;"/></a></div>
    
    <div class="right_header">管理员 &nbsp;韩春阳  | </div>
    
    <div id="clock_a"></div>
    </div>
    
    <div class="main_content">
    
                    <div class="menu">
                    <ul>
                    <li><a class="current" href="#">小琳预订后台</a></li>
                  
                    </ul>
                    </div> 
   
    <div class="center_content">  
    
    
    
    <div class="left_content" style="margin-top: 60px;">
    
    		<div class="sidebar_search">
    		
    		     
                
            </div>
    
            <div class="sidebarmenu">
            
                <a class="menuitem" href="${pageContext.request.contextPath }/adminis">商品管理</a>
                <a class="menuitem" href="${pageContext.request.contextPath }/orderadmin">订单管理</a>
                <a class="menuitem" href="${pageContext.request.contextPath }/mesadmin">留言管理</a>
                <a class="menuitem" href="${pageContext.request.contextPath }/pickadmin">投票管理</a>
                <a class="menuitem" href="${pageContext.request.contextPath }/useradmin">用户管理</a>
                
                <a class="menuitem_green" href="${pageContext.request.contextPath }/yuyueadmin">预约管理</a>
                
                <a class="menuitem_red" href="${pageContext.request.contextPath }/numberradmin">上传单号</a>
                    
            </div>
              
    
    </div>  
    
    <div class="right_content">            
        
    <h2>用户预约管理</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<!-- <th scope="col" class="rounded-company"></th> -->
            <th scope="col" class="rounded">预约用户</th>
            <th scope="col" class="rounded">预约产品</th>
            <th scope="col" class="rounded">商品价格</th>
            <th scope="col" class="rounded">用户电话</th>
            <th scope="col" class="rounded">预约放货</th>
            
            <th scope="col" class="rounded-q4">过时删除</th>
        </tr>
    </thead>
        
    <tbody>
    	<c:forEach items="${listone1 }" var="abcd">
    	<tr>
        	
            <td>${abcd.uname }</td>
            <td>${abcd.sname }</td>
            <td>RMB ${abcd.spic }</td>
            <td>${abcd.utel }</td> 

            <td ><a class="bbb" onclick="successa('${abcd.id}')" ><img src="images/valid.png"  border="0" width="15px" height="15px" /></a></td> 
            <td><a onclick="delete10('${abcd.id}')"><img src="images/user_logout.png" alt="" title="" border="0" /></a></td>
        </tr>
       </c:forEach>
        
      
       
        
    	        
    	
        
    </tbody>
</table>

	 <!-- <a class="bbb1 bt_green" style="cursor:pointer;"><span class="bt_green_lft"></span><strong>添加商品</strong><span class="bt_green_r"></span></a> -->
    
        <div class="pagination">
        <span class="disabled"><a>上一页</a> <a>下一页 </a></span>
        </div> 
    
     
     </div><!-- end of right content-->
            
                    
  </div>   <!--end of center content -->               
                    
                    
    
    
    <div class="clear"></div>
    </div> <!--end of main content-->
    
    <div class="footer">
    
    	<div class="left_footer">劳动人民最美丽</div>
    	
    
    </div>
</div>		
</body>
</html>