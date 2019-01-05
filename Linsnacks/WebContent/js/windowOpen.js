(function(){

	//弹窗公共部分js，所有弹窗已经写好，调用时按照页面中注释方法使用即可
	var $oMasking;
	var $oWindowContainer;
	//打开弹窗方法
	$.fn.openWindow = function(setTitle,setContents,setButton){
		
		//拼接弹窗内容，并且在调用打开弹窗方法时将内容塞进body
		var _html ='<div class="window-masking"></div>'+
		'<div class="window-container fix" id="addNew">'+
			'<h2></h2>'+
			'<div class="window-content">'+
				'<p class="window-text"></p>'+
			'</div>'+
			'<div class="window-btn fix">'+
				'<a class="cancel-button fl" href="javascript:;"></a>'+
				'<a class="confirm-button fr" href="javascript:;"></a>'+
				'<a class="ack-button fr" href="javascript:;"></a>'+
			'</div>'+
		'</div>'; 
		//将拼接好的html塞进body里面
		$('body').append(_html);
		$oMasking = $('.window-masking');
		$oWindowContainer = $('.window-container');
		//点击取消按钮关闭弹窗
		$('.cancel-button,.window-masking,.ack-button').on('click',function(){
			closeWindow();
		});
		//设置蒙版展示
		modal = new Modal();
		console.log(setButton+","+setContents+","+setButton)
		modal.setTitle(setTitle);
		modal.setContents(setContents);
				//设置按钮个数和链接
		modal.setButton(setButton);
		$oMasking.show();
		//设置弹窗面板展示
		$oWindowContainer.show();
	}
	//关闭弹窗方法
	function closeWindow(){
		$oMasking = $('.window-masking');
		$oWindowContainer = $('.window-container');
		//关闭弹窗的时候将蒙版和html从页面中移除掉
		$oMasking.remove();
		$oWindowContainer.remove();
	}
	//初始化
	var Modal = function () {
	    thismodal = $('#addNew');
	};
	//修改内容方法
	Modal.prototype = {
		setContents:function(obj){
			//找到需要修改内容的标签p，获取调用中设置的提示语
	    	thismodal.find('p.window-text').html(obj);   
		},
		setTitle:function(obj){
			//找到需要修改的弹窗标题，获取调用中设置的弹窗标题
			if(obj!=""){
				thismodal.find('h2').show().html(obj); 
			}
	    	
		},
		setButton: function (obj){
			console.log(obj)
		    //解析传过来的参数json
		    var json=eval(obj);
		   
		    
		    if(json.length==1){
		    	//一个按钮
		    	thismodal.find('a.ack-button').show().html(json[0]);
		    }
		    if(json.length==2){
		    	//两个按钮
		    	thismodal.find('a.cancel-button').show().html(json[0]); 
		    	thismodal.find('a.confirm-button').show().html(json[1]);

		    }
		}
	}
	
	})()
	
	
