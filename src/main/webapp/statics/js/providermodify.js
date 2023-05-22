var proContact = null;
var proPhone = null;
var saveBtn = null;
var backBtn = null;

$(function(){
	proContact = $("#proContact");
	proPhone = $("#proPhone");
	saveBtn = $("#save");
	backBtn = $("#back");
	
	//初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
	proContact.next().html("*");
	proPhone.next().html("*");
	
	/*
	 * 验证
	 * 失焦\获焦
	 * jquery的方法传递
	 */
	proContact.on("focus",function(){
		validateTip(proContact.next(),{"color":"#666666"},"* 请输入作者",false);
	}).on("blur",function(){
		if(proContact.val() != null && proContact.val() != ""){
			validateTip(proContact.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(proContact.next(),{"color":"red"},imgNo+" 作者不能为空，请重新输入",false);
		}
		
	});
	
	proPhone.on("focus",function(){
		validateTip(proPhone.next(),{"color":"#666666"},"* 请输入价格",false);
	}).on("blur",function(){
		if(proPhone.val()!=null){
			validateTip(proPhone.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(proPhone.next(),{"color":"red"},imgNo + " 您输入的价格不正确",false);
		}
	});
	
	saveBtn.on("click",function(){
		proContact.blur();
		proPhone.blur();
		if(proContact.attr("validateStatus") == "true" && 
				proPhone.attr("validateStatus") == "true"){
			if(confirm("是否确认提交数据")){
				$("#providerForm").submit();
			}
		}
	});
	
	backBtn.on("click",function(){
		//alert("modify: "+referer);
		if(referer != undefined 
			&& null != referer 
			&& "" != referer
			&& "null" != referer
			&& referer.length > 4){
		 window.location.href = referer;
		}else{
			history.back(-1);
		}
	});
});