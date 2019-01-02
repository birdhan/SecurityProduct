<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/clockp.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/clockh.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/ddaccordion.js"></script>
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
<script type="text/javascript">
	function delete1(){
		if(confirm("确定删除这条记录？")){
			
		}else{
			
		}
		
	}
	
</script>

<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/js/niceforms.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="${pageContext.request.contextPath }/js/niceforms-default.css" />
<script type="text/javascript">
$(function () {

    $(".bbb").click(function () {
        
        $(".denglu").toggleClass("on");

       /*  $(".bg").delay(500).fadeToggle(); */
    })


})
$(function () {

    $(".bbb1").click(function () {
        
        $(".denglu1").toggleClass("on");

       /*  $(".bg").delay(500).fadeToggle(); */
    })


})

</script>
</head>
<body>

<div id="main_container">


<!-- 修改商品信息弹窗开始 -->
		<div class="denglu">
			<div
				style="width: 100%; height: 20px; background-color: #87CEEB; border-radius: 15px; padding-top: 4px;">
				商品信息修改</div>
			<div
				style="width: 80%; height: 200px; background-color: #FFFAFA; margin-left: 10%; margin-top: 10px; border-radius: 5px;">
				<form action="">
				
					<label>商品名称</label> <input type="text"> <label>商品名称</label>
					<input type="text"> <label>商品名称</label> <input type="text">
					<label>商品名称</label> <input type="text">

				</form>

			</div>

			<button class="bbb btn btn-success">dianji</button>


		</div>
<!-- 修改商品信息弹窗结束 -->
<!-- 添加商品信息弹窗开始-->
		<div class="denglu1">
			<div
				style="width: 100%; height: 20px; background-color: #87CEEB; border-radius: 15px; padding-top: 4px;">
				添加零食</div>
			<div
				style="width: 80%; height: 200px; background-color: #FFFAFA; margin-left: 10%; margin-top: 10px; border-radius: 5px;">
				
				
				
				<form action="https://www.baidu.com//favicon.ico" style="margin-top: 20px;" id="form1" enctype="multipart/form-data">
					
					
					<div style="width: 92%;margin-left: 4%;margin-top: 20px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">商品名称</label><input type="text">
					<label style="width: 45px;">商品描述</label><input type="text">
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">商品主题</label><input type="text">
					<label style="width: 45px;">商品特点</label><input type="text">
					
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">设计师名</label><input type="text">
					<label style="width: 45px;">商品状态</label><select style="width: 160px;"><option value="order">预约状态</option><option value="design">测试交流</option><option value="online">正式上线</option></select>
					
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">点击热度</label><input type="text" value="0"> 
					<label style="width: 45px;">商品类型</label><select style="width: 160px;" name=""><option value="">西式</option><option>糖果</option><option>坚果</option><option>膨化</option><option>素肉</option></select>
					</div>
					<div style="width: 92%;margin-left: 4%;margin-top: 5px;border: 1px solid #87CEEB;height: 20px;">
					<label style="width: 45px;">上线数量</label><input type="text">
					<label style="width: 45px;">商品价格</label><input type="text">
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
<script type="text/javascript">
function submin1(){
	alert("确定提交");
	document.getElementById("form1").submit();
	
}


</script>
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
    </script>





		<div class="header">
    <div class="logo"><a href="#"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    
    <div class="right_header">管理员 &nbsp;韩春阳  | </div>
    
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
    
    
    
    <div class="left_content">
    
    		<div class="sidebar_search">
    		
    		     
                
            </div>
    
            <div class="sidebarmenu">
            
                <a  href="">商品管理</a>
                <a class="menuitem" href="">订单管理</a>
                <a class="menuitem" href="">留言管理</a>
                <a class="menuitem" href="">投票管理</a>
                <a class="menuitem" href="">用户管理</a>
                
                <a class="menuitem_green" href="">预留按钮</a>
                
                <a class="menuitem_red" href="">预留按钮</a>
                    
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
        <tfoot>
    	<tr>
        	<td colspan="6" class="rounded-foot-left"><em>商品的所有信息及状态更改皆在本页面操作</em></td>
        	<td class="rounded-foot-right">&nbsp;</td>

        </tr>
    </tfoot>
    <tbody>
    	<tr>
        	
            <td>百草味巧克力</td>
            <td>巧克力</td>
            <td>RMB 25</td>
            <td>1200</td>

            <td><a href="#" class="bbb"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#" onclick="delete1()"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr>
        
    	<tr>
        	
            <td>百草味巧克力</td>
            <td>巧克力</td>
            <td>RMB 25</td>
            <td>1200</td>

            <td><a href="#"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr>
        
        <tr>
        	
            <td>百草味巧克力</td>
            <td>巧克力</td>
            <td>RMB 25</td>
            <td>1200</td>

            <td><a href="#"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr>
        
        <tr>
        	
            <td>百草味巧克力</td>
            <td>巧克力</td>
            <td>RMB 25</td>
            <td>1200</td>

            <td><a href="#"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr>
        
    	        
    	
        
    </tbody>
</table>

	 <a class="bbb1 bt_green" style="cursor:pointer;"><span class="bt_green_lft"></span><strong>添加商品</strong><span class="bt_green_r"></span></a>
    <!--  <a href="#" class="bt_blue"><span class="bt_blue_lft"></span><strong>View all items from category</strong><span class="bt_blue_r"></span></a>
     <a href="#" class="bt_red"><span class="bt_red_lft"></span><strong>Delete items</strong><span class="bt_red_r"></span></a>  -->
     
     
        <div class="pagination">
        <span class="disabled"><< prev</span><span class="current">1</span><a href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a href="">101</a><a href="">next >></a>
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