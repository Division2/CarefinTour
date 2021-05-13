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
	document.write("<h6> 우편번호 : " + sessionStorage.getItem("dZipcode")  + "</h6>");
	}
	if(sessionStorage.getItem("dTelname") != "undefined"){
		document.write("<h6> 전화명 : " +  sessionStorage.getItem("dTelname")  + "</h6>");
	}
	if(sessionStorage.getItem("dTel") != "undefined" ){
	document.write("<h6> 전화번호 : " + sessionStorage.getItem("dTel") + "</h6>");
	}
	if(sessionStorage.getItem("dHomepage") != "undefined"){
	document.write("<h6> 홈페이지 : " + sessionStorage.getItem("dHomepage")  + "</h6>");
	}
	if(sessionStorage.getItem("daddr1") != "undefined"){
	document.write("<h6> 주소 : " + sessionStorage.getItem("daddr1")  + "</h6>");
	}
	document.write("</td></tr> ");
   
	document.write("<tr> <td  colspan='2' width='1200'><hr>");
	if(sessionStorage.getItem("dOverview") != "undefined"){
	document.write("<h5><b> 개요 </b></h5><h6>" + sessionStorage.getItem("dOverview")  + "</h6>");
	}else{
		document.write("<h5><b> 개요 </b></h5><h6>없음</h6>");
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
	    	   
	    	   console.log(data2);
	       }
	})
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
                <a class="nav-link" data-toggle="tab" href="#asd">정보2</a>
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