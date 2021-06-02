<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행정보 - 케어핀투어</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/component.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script>
function insert() {
	Swal.fire({
		title: '결제하기',
		text: "정말 결제하시겠습니까?",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '확인',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			swal({
				title: "결제하기",
				text: "결제가 성공적으로 이루어졌습니다.",
				icon: "success",
				buttons : {
					confirm : {
						value : true
					}
				}
			}).then((result) => {
				if(result) {
					location.href='main';
				}
				$("#inserts").submit();
			});
		
		}
	})

}

function insert2() {
	Swal.fire({
		title: '결제보류',
		text: "정말 결제보류하시겠습니까?",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '확인',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			swal({
				title: "결제보류",
				text: "결제보류내역은 마이페이지를 보시면됩니다",
				icon: "success",
				buttons : {
					confirm : {
						value : true
					}
				}
			}).then((result) => {
				if(result) {
					location.href='main';
				}
				$("#inserted").submit();
			});
		
		}
	})

}
</script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	
	<div class="container">

	</div>
	<div class="container-fluid">
	<div class = "row">
		<div class = "col-md-4">
		</div>
		<div class = "col-md-4">
		<div class="row text-center" style="width: 100%">		
		<div style="width: 30%; float:none; margin:0 auto" >		
			<p><h2><strong>예약 하기</strong></h2></p>
				</div>
			</div>
				<p><h6><strong>예약정보를 정확히 입력해주시고.약관 및 주의사항을 확인하시기 바랍니다.</strong></h6><p>
		</div>
	<div class = "col-md-4">
	</div>	
		</div>
		<div class = "row">
			<div class = "col-md-2">
		</div>
		<div class = "col-md-8">
			<p><h4><strong>상품 정보</strong></h4></p>
		<hr color="black"></hr>
				<table class="table">
                     <tr>
					 <th bgcolor="#f1f3f5">상품명</th>
						<td>${pdtail.getProductname()}</td>						    								     				
						</tr>								      
						<tr>
							<th bgcolor="#f1f3f5">상품코드</th>	
							<td><span style="color: #1E90FF;float:left;">${pdtail.getPid()}</span>
							</td>			     
						</tr>
							 								 	
						  <tr>
						  	<th bgcolor="#f1f3f5"  rowspan = "3">여행기간</th>
						  </tr>
							 
						  <tr>
							 <td><div style ="float:left; ">한국출발<strong>${pdtail.getStartravelperiod()} 09:40</strong><p><small>인천 출발</small></p></div>
							 	<div style ="float:left; margin-left:20px; ">한국도착<strong>2021.09.04 토 12:30</strong>
							  	<p><small>현지 출발</small></p></div>
							 </td>							  								 
						  </tr>						 	
						   <tr></tr>  								 
							  <tr>
								  <th bgcolor="#f1f3f5">상품가격</th>
								  	<td><table class="table">
				                        <tr>
			                                <thead>
				                                 <hr color="black">
											     <th bgcolor="#f1f3f5"><strong>상품가격</strong></th>
											     <th bgcolor="#f1f3f5"><strong>성인</strong>(만12세 이상)</th>
											     <th bgcolor="#f1f3f5"><strong>아동</strong>(만12세 미만)</th>
											     <th bgcolor="#f1f3f5"><strong>성인</strong>(만2세 미만)</th>											      
										     </thead>							      
										  <tbody>
											   <tr>
											      <td>기본상품가</td>	
											      <td><span style="float:center;">${pdtail.getAdultprice()}</span></td>		
											      <td><span style="float:center;">${pdtail.getKidprice()}</span></td>		
											      <td><span style="float:center;">${pdtail.getSmallkidprice()}</span></td>										     
											   </tr>
											   <tr>
											      <td>인원</td>	
											      <td><span style="float:center;"><%= request.getParameter("num")%></span></td>		
											      <td><span style="float:center;"><%= request.getParameter("num2")%></span></td>		
											      <td><span style="float:center;"><%= request.getParameter("num3")%></span></td>										     
											   </tr>
											   <tr>
											      <td>총상품가격</td>	
											      <td><span style="color: red;float:center;"></span></td>		
											      <td><span style="color: red;float:center;"><%= request.getParameter("Payment")%></span></td>		
											      <td><span style="color: red;float:center;"></span></td>										     
											   </tr>								  
										</tbody> 
										   </tr>
									</table>
									<small>호텔은 2일1실 기준의 1인 요금 입니다. 1인1실 사용시 <span style="color:  #1E90FF;">추가요금 210,000원이</span>
									 		발생하오니 담당자에게 별도 문의 부탁드립니다.</small><p>
									<small>유류할증료<span style="color:#1E90FF;">(2021년 05월 기준)</span>
									 		및 제세공과금은 발권일기준 유가와 환율에 따라 수시 요금 변동될 수 있습니다.</small><p>
									 		<strong>가이드경비 30 USD</strong><span style="color:red;"> (현지에서 지불해야 합니다)</span>
								</td>
							  </tr>	
								  <tr>
								  	<th bgcolor="#f1f3f5">상품담당자</th>
								  		<td>${pdtail.getDirector()} | 직통전화<strong> 02-9990-9999</strong> | 팩스 <strong>02-9999-9999</strong></td>
								  </tr>							  						  	
						</table><p>

					<h5><strong>예약자 정보</strong></h5><p>
						<hr color="black"></hr>
						<table class="table">
						<tr>
							<th bgcolor="#f1f3f5" width="150" >*한글이름</th>
							<td>${member.getName()}</td>
							<th bgcolor="#f1f3f5" width="150">*생년월일</th>
							<td>${member.getBirth()}</td>
						</tr>			
						<tr>
							<th bgcolor="#f1f3f5" width="150" >*휴대폰번호</th>
							<td>${member.getPhone()}</td>
						</tr>
						
						<tr>
							<th bgcolor="#f1f3f5" width="150" >*이메일주소</th>
							<td>${member.getEmail()}</td>
						</tr>						
						</table>
						
					<h5><strong>여행자 정보</strong></h5><p>
						<hr color="black"></hr>
						    <h6 style="float:left;margin-left:20px; "> 성인 <strong><%= request.getParameter("num")%></strong>명(만 12세 이상)</h6> 
							<h6 style="float:left;margin-left:20px; ">아동 <strong><%= request.getParameter("num2")%></strong>명(만 2~12세이상)</h6>
							<h6 style="float:left;margin-left:20px; ">유아 <strong><%= request.getParameter("num3")%></strong>명(만 2세이상)</h6>
						<table class="table">
						<tr>			
							<th bgcolor="#f1f3f5"><h6 style="float:left;"><strong>성인</strong>     
								<strong>이름 <input type = "text" value="${member.getName()}" disabled></strong></h6>									
							</th>  
						</tr>
					</table>
					<div class="row">
					<form action="detailResvationAdd" method="POST" name="inserts" id="inserts">
					<input type="hidden" value="${pdtail.getPid()}" id="pId" name="pId"></input>
						<input type="hidden" value="${pdtail.getProductname()}" id="productname" name="productname"></input>
						<input type="hidden" value="${pdtail.getStartravelperiod()}" id="startdate" name="startdate"></input>
						<input type="hidden" value="${member.getName()}" id="name" name ="name"></input>
						<input type="hidden" value="${member.getUserID()}" id="userId" name="userId"></input>
						<input type="hidden" value="${member.getPhone()}" id="phonenum" name="phonenum"></input>
						<input type="hidden" value="<%= request.getParameter("Payment")%>" id="payment" name="payment"></input>
						<input type="hidden" value="<%= request.getParameter("num")%>" id="num" name="num"></input>
						<input type="hidden" value="<%= request.getParameter("num2")%>" id="num2" name="num2"></input>
						<input type="hidden" value="<%= request.getParameter("num3")%>" id="num3" name="num3"></input>
					<button type="button" name="pay" id="pay" onclick="insert()" style="margin-left:470px;">결제하기</button>
					</form>
					<form action="detailResvationAdd2" method="POST" name="inserted" id="inserted">
					<input type="hidden" value="${pdtail.getPid()}" id="pId" name="pId"></input>
						<input type="hidden" value="${pdtail.getProductname()}" id="productname" name="productname"></input>
						<input type="hidden" value="${pdtail.getStartravelperiod()}" id="startdate" name="startdate"></input>
						<input type="hidden" value="${member.getName()}" id="name" name ="name"></input>
						<input type="hidden" value="${member.getUserID()}" id="userId" name="userId"></input>
						<input type="hidden" value="${member.getPhone()}" id="phonenum" name="phonenum"></input>
						<input type="hidden" value="<%= request.getParameter("Payment")%>" id="payment" name="payment"></input>
						<input type="hidden" value="<%= request.getParameter("num")%>" id="num" name="num"></input>
						<input type="hidden" value="<%= request.getParameter("num2")%>" id="num2" name="num2"></input>
						<input type="hidden" value="<%= request.getParameter("num3")%>" id="num3" name="num3"></input>
					<button type="button" name="paydelay" id="paydealy" onclick="insert2()" style="margin-left:10px;">결제보류</button>
					</form>
					<button type="submit" name="cancel" id="cancel" style="margin-left:10px;" onclick="location.href='main'">취소하기</button>
					</div>
				</div>		
			</div>
		</div>
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>