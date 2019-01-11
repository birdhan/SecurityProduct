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


<!-- 修改商品信息弹窗开始 -->
		<div class="denglu">
			<div
				style="width: 100%; height: 20px; background-color: #87CEEB; border-radius: 15px; padding-top: 4px;">
				修改零食状态信息</div>
			<div
				style="width: 80%; height: 200px; background-color: #FFFAFA; margin-left: 10%; margin-top: 10px; border-radius: 5px;">
				<form action="http://www.baidu.com/" style="margin-top: 20px;" id="form2" enctype="multipart/form-data" method="post">
					<input id="idup1" type="hidden" name="id">
					
					<div style="width: 92%;margin-left: 4%;margin-top: 32px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">商品名称</label><input id="name0" type="text" name="name" style="width: 160px;">
					<label style="width: 45px;">商品描述</label><input id="describese" type="text" name="describese" style="width: 160px;">
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">商品主题</label><input id="title0" type="text" name="title" style="width: 160px;">
					<label style="width: 45px;">商品特点</label><input id="special" type="text" name="special" style="width: 160px;">
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">设计师名</label><input id="designer" type="text" name="designer" style="width: 160px;"> 
					<label style="width: 45px;">商品状态</label><select id="status0" style="width: 160px;" name="status"><option value="order">预约状态</option><option value="design">测试交流</option><option value="online">正式上线</option></select>
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">点击热度</label><input id="chickrate" type="text" value="0" name="chickrate" style="width: 160px;"> 
					<label style="width: 45px;">商品类型</label><select id="type0" style="width: 160px;" name="type"><option value="xs">西式</option><option value="tg">糖果</option><option value="yp">饮品</option><option value="jg">坚果</option><option value="ph">膨化</option><option value="sr">素肉</option></select>
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">上线数量</label><input id="upsize" type="text" name="upsize" style="width: 160px;">
					<label style="width: 45px;">商品价格</label><input id="price0" type="text" name="price" style="width: 160px;">
					</div>
					

				</form>
			</div>

			<button onclick="submin2()">提交</button>
			<button class="bbb">取消</button>


		</div>
<!-- 修改商品信息弹窗结束 -->
<!-- 添加商品信息弹窗开始-->
		<div class="denglu1">
			<div
				style="width: 100%; height: 20px; background-color: #87CEEB; border-radius: 15px; padding-top: 4px;">
				添加零食</div>
			<div
				style="width: 80%; height: 200px; background-color: #FFFAFA; margin-left: 10%; margin-top: 10px; border-radius: 5px;">
				
				
				
				
				<form action="${pageContext.request.contextPath }/adminis1" style="margin-top: 20px;" id="form1" enctype="multipart/form-data" method="post">
					
					
					<div style="width: 92%;margin-left: 4%;margin-top: 20px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">商品名称</label><input type="text" name="name" style="width: 160px;">
					<label style="width: 45px;">商品描述</label><input type="text" name="describese" style="width: 160px;">
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">商品主题</label><input type="text" name="title" style="width: 160px;">
					<label style="width: 45px;">商品特点</label><input type="text" name="special" style="width: 160px;">
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">设计师名</label><input type="text" name="designer" style="width: 160px;"> 
					<label style="width: 45px;">商品状态</label><select style="width: 160px;" name="status"><option value="order">预约状态</option><option value="design">测试交流</option><option value="online">正式上线</option></select>
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">点击热度</label><input type="text" value="0" name="chickrate" style="width: 160px;"> 
					<label style="width: 45px;">商品类型</label><select style="width: 160px;" name="type"><option value="xs">西式</option><option value="tg">糖果</option><option value="yp">饮品</option><option value="jg">坚果</option><option value="ph">膨化</option><option value="sr">素肉</option></select>
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">上线数量</label><input type="text" name="upsize" style="width: 160px;">
					<label style="width: 45px;">商品价格</label><input type="text" name="price" style="width: 160px;">
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 50px;">
					<div style="float: left;"><label style="width: 45px;">上传图片</label></div><div style="float: left;"><input type="file" id="imageFile" name="imageFile"
           accept="image/jpeg"></div>
					<img alt="" src="${pageContext.request.contextPath }/images/11111111.jpg" width="48px" height="48px" id="imangid" class="img-thumbnail">
					</div>

				</form>
			</div>

			<button onclick="submin1()">提交</button>
			<button class="bbb1">取消</button>


		</div>
<!-- 添加商品信息弹窗结束 -->

   <script>
        $(document).ready(function () {
            $("#imageFile").change(function () {


                var fileReader = new FileReader();
                fileReader.onload = function (e) {


                    var ingurl = e.target.result;
                    var preview = document.getElementById('imangid');
                    preview.src=e.target.result;
                }
                var imageFile = this.files[0];
                fileReader.readAsDataURL(imageFile);
            });
        })
function delete1(shanid) {
	if (confirm("确定删除这条记录？")) {
		window.location.href = "${pageContext.request.contextPath }/deletesnackById?id="
				+ shanid;

	} else {

	}

}
    </script>





		<div class="header">
    <div class="logo"><a><img src="${pageContext.request.contextPath}/images/logo001.jpg" alt="" title="" border="0" width="200px" height="60px" style="border-radius: 6px;"/></a></div>
    
    <div class="right_header">管理员 &nbsp;${admins}  | </div>
    
    <div id="clock_a"></div>
    </div>
    
    <div class="main_content">
    
                    <div class="menu">
                    <ul>
                    <li><a class="current" href="#">小琳预订后台</a></li>
                   <!--  <li><a href="">Templates</a></li>
                    <li><a href="">Custom details</a></li>
                    <li><a href="">Contact</a></li> -->
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
        
    <h2>商品管理列表</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<!-- <th scope="col" class="rounded-company"></th> -->
            <th scope="col" class="rounded">产品名称</th>
            <th scope="col" class="rounded">类型</th>
            <th scope="col" class="rounded">价格</th>
            <th scope="col" class="rounded">点击量</th>
            <th scope="col" class="rounded">修改</th>
            
            <th scope="col" class="rounded-q4">删除</th>
        </tr>
    </thead>
        
    <tbody>
    	<c:forEach items="${list }" var="list">
    	<tr>
        	
            <td>${list.name}</td>
            <td>${list.type}</td>
            <td>RMB ${list.price}</td>
            <td>${list.chickrate}</td>

            <td><a class="bbb" onclick="update1('${list.id}','${list.name}','${list.title}','${list.describese}','${list.special}','${list.designer}','${list.chickrate}','${list.upsize}','${list.type}','${list.status}','${list.price}')"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td> 
            <td><a onclick="delete1('${list.id}')"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr>
        </c:forEach>
    	
        
      
       
        
    	        
    	
        
    </tbody>
</table>

	 <a class="bbb1 bt_green" style="cursor:pointer;"><span class="bt_green_lft"></span><strong>添加商品</strong><span class="bt_green_r"></span></a>
    
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