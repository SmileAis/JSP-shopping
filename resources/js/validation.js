function CheckAddProduct(){

	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var saleUnitPrice = document.getElementById("saleUnitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	

	//상품명 체크
	if(name.value.length < 4 || name.value.length > 12){
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	
	//상품 가격 체크
	if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(unitPrice.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if(!check(/^\d+(?:[.]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;
		
	//할인가격 확인
	if(saleUnitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[할인 가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(saleUnitPrice.value < 0 && saleUnitPrice.value != -1){
		alert("[할인 가격]\n -1을 제외한 음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if(!check(/^\d+(?:[.]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;
		
	// 재고 수 체크
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	if(unitsInStock.value < 0){
		alert("[재고수]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} 
	
	
	function check(regExp, e, msg){
	
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	
	document.newProduct.submit();
}