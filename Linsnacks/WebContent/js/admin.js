



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






function submin1(){
	alert("确定提交");
	document.getElementById("form1").submit();
	
}
function submin2(){
	alert("确定修改");
	document.getElementById("form2").submit();
	
}

function update1(id,name,title,describese,special,designer,chickrate,upsize,type,status,price){
	$("#idup1").val(id);
	$("#name0").val(name);
	$("#title0").val(title);
	$("#describese").val(describese);
	$("#special").val(special);
	$("#designer").val(designer);
	$("#chickrate").val(chickrate);
	$("#upsize").val(upsize);
	$("#type0").val(type);
	$("#status0").val(status);
	$("#price0").val(price);
	
	
}
function update11(id,spic,uname,onumber,number,ostatus){
	
	$("#idup2").val(id);
	$("#spic0").val(spic);
	$("#uname0").val(uname);
	$("#onumber0").val(onumber);
	$("#number0").val(number);
	$("#ostatus0").val(ostatus);

	alert(list.id);
	
}

