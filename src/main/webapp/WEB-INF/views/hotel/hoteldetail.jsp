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

var searchDetailId = $.urlParam('cId')
/////////////////////////////////////////////
var hContent;
function sta() {
    $.ajax({
	       url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D&contentTypeId=32&contentId=' + searchDetailId + '&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y',
	    		   
	       dataType : 'json',
	       type : 'GET',
	       success : function(data) {
	    	   
	    	   //var count =  data.response.body.totalCount;
	    	   hContent = data.response.body.items.item;
	    	   console.log(data);
	    	   if(hContent.firstimage!= null){
	    		   document.write("<ul><li><img src='" + hContent.firstimage  + "' width='220' height='168' /> "); 
	    	   }else{
	    		   document.write("<ul><li><img src='' width='220' height='168' /> "); 
	    		   
	    	   }
	    	   if(hContent.title != null){
	    		   document.write("<h6> 주소 : " + hContent.title + "</h6>");
	    	   }
	    	   if(hContent.homepage != null){
	    		   document.write("<h6> 주소 : " + hContent.homepage + "</h6>");
	    	   }
	    	   if(hContent.addr1 != null){
	    		   document.write("<h6> 주소 : " + hContent.addr1 + "</h6>");
	    	   }
	    	   if(hContent.zipcode != null){
	    		   document.write("<h6> 우편번호 : " + hContent.zipcode + "</h6>");
	    	   }
	    	   if(hContent.telname != null){
	    		   document.write("<h6> 전화명 : " + hContent.telname + "</h6>");
	    	   }
	    	   if(hContent.tel != null){
	    		   document.write("<h6> 전화번호 : " + hContent.tel + "</h6>");
	    	   }
	    	   if(hContent.overview != null){
	    		   document.write("<h6> 개요 : " + hContent.overview+ "</h6>");
	    	   }
	       }
	    })
	    return hContent;
}



/* $(document).ready(function() {
	 
	
    $.ajax({
       url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D&contentTypeId=32&contentId=' + searchDetailId + '&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y',
       dataType : 'json',
       type : 'GET',
       
       success : function(data) {
    	   hContent = data.response.body.items.item;
    	   console.log(data);
    	   console.log(hContent.homepage );
    	   document.write("<ul><li><img src='" + hContent.firstimage + "' width='220' height='168' /> ");
    	   document.write(hContent.homepage);
    	   
       }
    })
}) */
</script>
	<jsp:include page="../layout/header.jsp"/>
						
    <div class="container">
      <div class="row">
        <div class="col">
        <h3><strong>국내숙박</strong></h3><hr style="background:#1E90FF;border:solid 2px #96CDFA; width:1150px;">	
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
              	sta();
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