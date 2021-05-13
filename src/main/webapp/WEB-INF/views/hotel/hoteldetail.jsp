<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>호텔예약 - 케어핀투어</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
<style>
ul{
   list-style:none;

   }
</style>
</head>
<body>

<script>
//url로 넘어온 코드값을 반환
$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    return results[1] || 0;
}
var searchDetailId = $.urlParam('cId');
var hContent; //비교해서 값이 다르면 화면 새로고침

//공통정보 api
function detail1() {
    $.ajax({
	       url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D&contentTypeId=32&contentId=' + searchDetailId + '&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y',
		    		   
	       dataType : 'json',
	       type : 'GET',
	       success : function(data) {
	    	   //var count =  data.response.body.totalCount;
	    	   hContent = data.response.body.items.item;
	    	   //console.log(data);
	    	   try {
	    		   //새로고침
	    		   if(hContent.title != sessionStorage.getItem("dTitle") ){
	    			   location.reload();
	    		   }
	    		   //공통정보 값 설정
		    	   sessionStorage.setItem("dImg", hContent.firstimage); 
	    		   sessionStorage.setItem("dTitle", hContent.title); 
	    		   sessionStorage.setItem("dHomepage", hContent.homepage); 
	    		   sessionStorage.setItem("daddr1", hContent.addr1); 
	    		   sessionStorage.setItem("dZipcode", hContent.zipcode); 
	    		   sessionStorage.setItem("dTelname", hContent.telname);
	    		   sessionStorage.setItem("dTel", hContent.tel); 
	    		   sessionStorage.setItem("dOverview", hContent.overview); 
		    	   
			   } catch (e) {
			   }
	       }
	    })
}

//숙박업소명 보여주기
function showTitle() {
	document.write(sessionStorage.getItem("dTitle"));
}

//공통정보 보여주기
function showDetail1() {
	
	document.write("<table>");
	document.write("<tr><br>");
	document.write("<td width='430'>");
	document.write("<img src='" + sessionStorage.getItem("dImg") + "' width='400' height='250' /> "); 
	document.write("</td>");
	document.write("<td width='770'>");
	if(sessionStorage.getItem("dZipcode") != "undefined"){
	document.write("<font size='2' color='#515151'><b> 우편번호 : </font></b> <font size='2' color='#878787'>" + sessionStorage.getItem("dZipcode")  + "</font><br>");
	}
	if(sessionStorage.getItem("dTelname") != "undefined"){
		document.write("<font size='2' color='#515151'><b> 전화명 : </font></b> <font size='2' color='#878787'>" +  sessionStorage.getItem("dTelname")  + "</font><br>");
	}
	if(sessionStorage.getItem("dTel") != "undefined" ){
	document.write("<font size='2' color='#515151'><b> 전화번호 : </font></b> <font size='2' color='#878787'>" + sessionStorage.getItem("dTel") + "</font><br>");
	}
	if(sessionStorage.getItem("dHomepage") != "undefined"){
	document.write("<font size='2' color='#515151'><b> 홈페이지 : </font></b> <font size='2'>" + sessionStorage.getItem("dHomepage")  + "</font><br>");
	}
	if(sessionStorage.getItem("daddr1") != "undefined"){
	document.write("<font size='2' color='#515151'><b> 주소 : </font></b> <font size='2' color='#878787'>" + sessionStorage.getItem("daddr1")  + "</font>");
	}
	document.write("</td></tr> ");
   
	document.write("<tr> <td  colspan='2' width='1200'><hr>");
	if(sessionStorage.getItem("dOverview") != "undefined"){
	document.write("<h5><b> 개요 </b></h5><font size='2' color='#515151'>" + sessionStorage.getItem("dOverview")  + "</font>");
	}else{
		document.write("<h5><b> 개요 </b></h5><font>없음</font>");
	}
	document.write("</td></tr>");
	document.write("</table> <hr>");
	 
}

//소개정보 api
function detail2() {
    $.ajax({
	       url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D&contentTypeId=32&contentId=' + searchDetailId + '&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y',
	       dataType : 'json',
	       type : 'GET',
	       success : function(data2) {
	    	   hContent2 = data2.response.body.items.item;
	    	   sessionStorage.setItem("infocenterlodging", hContent2.infocenterlodging); //문의 및 안내
	    	   sessionStorage.setItem("scalelodging", hContent2.scalelodging); //규 모
	    	   sessionStorage.setItem("accomcountlodging", hContent2.accomcountlodging);//수용가능인원
	    	   sessionStorage.setItem("roomcount", hContent2.roomcount); //객실 수
	    	   sessionStorage.setItem("roomtype", hContent2.roomtype); //객실유형
	    	   sessionStorage.setItem("parkinglodging", hContent2.parkinglodging);  //주차가능
	    	   sessionStorage.setItem("chkcooking", hContent2.chkcooking); //조리가능
	    	   sessionStorage.setItem("checkintime", hContent2.checkintime); //체크인
	    	   sessionStorage.setItem("checkouttime", hContent2.checkouttime); //체크아웃
	    	   
	    	   sessionStorage.setItem("reservationlodging", hContent2.reservationlodging); //예약 안내
	    	   sessionStorage.setItem("reservationurl", hContent2.reservationurl); //예약홈페이지
	    	   sessionStorage.setItem("pickup", hContent2.pickup); //픽업서비스
	    	   sessionStorage.setItem("foodplace", hContent2.foodplace); //식음료장
	    	   sessionStorage.setItem("subfacility", hContent2.subfacility);//부대시설
	    	   sessionStorage.setItem("refundregulation", hContent2.refundregulation);//환불규정?
	    	   
	    	   console.log(data2);
	       }
	})
}

//소개정보 보여주기 
function showDetail2() {
	if(sessionStorage.getItem("infocenterlodging") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 문의 및 안내 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("infocenterlodging") + "</font><br>");
	}
	if(sessionStorage.getItem("scalelodging") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 규 모 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("scalelodging") + "</font><br>");
	}
	if(sessionStorage.getItem("accomcountlodging") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 수용 가능 인원 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("accomcountlodging") + "</font><br>");
	}
	if(sessionStorage.getItem("roomcount") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 객실 수 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("roomcount") + "</font><br>");
	}
	if(sessionStorage.getItem("roomtype") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 객실 유형 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("roomtype") + "</font><br>");
	}
	if(sessionStorage.getItem("parkinglodging") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 주차 가능 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("parkinglodging") + "</font><br>");
	}
	if(sessionStorage.getItem("chkcooking") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 조리 가능 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("chkcooking") + "</font><br>");
	}
	if(sessionStorage.getItem("checkintime") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 체크인 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("checkintime") + "</font><br>");
	}
	if(sessionStorage.getItem("checkouttime") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 체크아웃 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("checkouttime") + "</font><br>");
	}
	if(sessionStorage.getItem("reservationlodging") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 예약 안내 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("reservationlodging") + "</font><br>");
	}
	if(sessionStorage.getItem("reservationurl") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 예약안내 홈페이지 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("reservationurl") + "</font><br>");
	}
	if(sessionStorage.getItem("pickup") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 픽업서비스 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("pickup") + "</font><br>");
	}
	if(sessionStorage.getItem("foodplace") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 식음료장 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("foodplace") + "</font><br>");
	}
	if(sessionStorage.getItem("subfacility") != "undefined" && sessionStorage.getItem("subfacility") != null && sessionStorage.getItem("subfacility") != ""){
		document.write("<font size='2' color='#515151'><b> · 부대시설 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("subfacility") + "</font><br>");
	}
	if(sessionStorage.getItem("refundregulation") != "undefined"){
		document.write("<font size='2' color='#515151'><b> · 환불규정 : </font></b><font size='2' color='#878787'>" + sessionStorage.getItem("refundregulation") + "</font><br>");
	}
}

</script>
	<jsp:include page="../layout/header.jsp"/>
						
   	<script>
   		detail1();
	  	detail2();
  	</script>
              						
    <div class="container">
      <div class="row">
        <div class="col">
        <h3><strong><script> showTitle();</script></strong></h3><hr style="background:#1E90FF;border:solid 2px #96CDFA; ">	
            <ul class="nav nav-tabs">
            
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#qwe">공통정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#asd">소개정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#zxc">정보3</a>
              </li>
            </ul>
            
            <div class="tab-content">
              <div class="tab-pane fade show active" id="qwe">
              	<script>
              		showDetail1();
              	</script>
              </div>
              
              <div class="tab-pane fade" id="asd">
                <br>
              	<font size="4" color="#368AFF"><b>&nbsp;소개</b></font><br>
              	<script>
             	 	showDetail2();
              	</script>
              </div>
              
              <div class="tab-pane fade" id="zxc">
              </div>
            </div>
        </div>
      </div>
    </div>
    
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>