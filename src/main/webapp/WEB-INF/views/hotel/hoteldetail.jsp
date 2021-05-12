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

<script type="text/javascript">
//url로 넘어온 코드값을 반환
$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    return results[1] || 0;
}

var searchDetailId = $.urlParam('cId')
console.log(searchDetailId);

/* function sta(x) {
    $.ajax({
	       url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D'+ accommodationType +'&areaCode='  + ga +'&sigunguCode=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=P&numOfRows=12&pageNo='+ x,
	       dataType : 'json',
	       type : 'GET',
	       success : function(data) {
	    	   var count =  data.response.body.totalCount;
	    	   fCount = data.response.body.items.item;
	    	   //console.log(fCount);
	    	     
	    	   for(var c=0; c<fCount.length; c++){
	    		   fr.push( data.response.body.items.item[c].firstimage);
	    		   fName.push( data.response.body.items.item[c].title);
	    	   }
	    	   
 	    	   try {
 	    		   localStorage.setItem("count", count); // 전체 데이터 수, 페이징 계산위해서 사용
 	    		   
				   localStorage.setItem("img1", fr[0]); // key-value 형식으로 저장
				   localStorage.setItem("img2", fr[1]); // 숙박업소 이미지
				   localStorage.setItem("img3", fr[2]);
				   localStorage.setItem("img4", fr[3]);
				   localStorage.setItem("img5", fr[4]);
				   localStorage.setItem("img6", fr[5]);
				   localStorage.setItem("img7", fr[6]);
				   localStorage.setItem("img8", fr[7]);
				   localStorage.setItem("img9", fr[8]);
				   localStorage.setItem("img10", fr[9]);
				   localStorage.setItem("img11", fr[10]);
				   localStorage.setItem("img12", fr[11]);
				   
				   localStorage.setItem("title1", fName[0]); //숙박업소 이름
				   localStorage.setItem("title2", fName[1]);
				   localStorage.setItem("title3", fName[2]);
				   localStorage.setItem("title4", fName[3]);
				   localStorage.setItem("title5", fName[4]);
				   localStorage.setItem("title6", fName[5]);
				   localStorage.setItem("title7", fName[6]);
				   localStorage.setItem("title8", fName[7]);
				   localStorage.setItem("title9", fName[8]);
				   localStorage.setItem("title10", fName[9]);
				   localStorage.setItem("title11", fName[10]);
				   localStorage.setItem("title12", fName[11]);
				   
		           location.reload();
				} catch (e) {
				   if (e == QUOTA_EXCEEDED_ERR) {
				     alert('할당량 초과!'); // 할당량 초과로 인하여 데이터를 저장할 수 없음
				  }
				}  
	       }
	    })
} */
</script>
	<jsp:include page="../layout/header.jsp"/>
	
	<div class="container">
		<div class="row">
		<div class="nav-control">				
				
					  <h3><strong>해외호텔</strong></h3><hr style="background:#1E90FF;border:solid 2px #96CDFA; width:1150px;">							
						
			<table class="table" style="background:#f1f3f5;height:150px;border:solid 1px #e2e2e2;">
						<tr>
							<th>
								  <h3>호텔 메트로폴리탄 도쿄 이케부쿠로 (Hotel Metropolitan Tokyo Ikebukuro)</h3>
                        			<p>1-6-1 Nishi-Ikebukuro, 도쿄, JP &nbsp;TEL.81-3-3980-1111 &nbsp;FAX.81-3-3980-5600</p>
					                    <div class="nav-control">				
											<p><ul class="nav nav-tabs">
												<li class="nav-item">
													<a class="nav-link active" data-toggle="tab" href="#hotelinfo">
														<strong>호텔상세정보</strong>
															</a>
																</li>
												<li class="nav-item">
													<a class="nav-link" data-toggle="tab" href="#location">
														<strong>위치</strong>
															</a>
																</li>
																
												 <li>
												 <div class="col-md-4">
												 </div>
										<button type="button" class="form-control" style="background:#96CDFA;color:white;"><strong>도쿄 호텔 전체보기</strong></button>
																</li>
													</ul>
													
													<div class="tab-content" style="background:white;">
													  <div class="tab-pane fade show active" id="hotelinfo">
													  <br>
													   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="https://i.travelapi.com/hotels/1000000/20000/13400/13386/b669367c_b.jpg" alt="호텔 메트로폴리탄 도쿄 .." width="330" height="250" />
													  
													 
													 
													  <ul style="float:right">
				                                        <li>
				                                        <form class="form-inline">
				                                            <div class="title">주소 &emsp;&emsp;&emsp;</div>
				                                            <div class="con_tx">1-6-1 Nishi-Ikebukuro, 도쿄, JP &nbsp;TEL.81-3-3980-1111 &nbsp;FAX.81-3-3980-5600</div><hr style="color:black;">
				                                            </form>
				                                        </li>
				                                        <li>
				                                        <form class="form-inline">
				                                            <div class="title">전화 &emsp;&emsp;&emsp;</div>
				                                            <div class="con_tx">TEL : 81-3-3980-1111&nbsp;&nbsp;TEL : 81-3-3980-5600</div><hr>
				                                            </form>
				                                        </li>
				                                        <li>
				                                        <form class="form-inline">
				                                            <div class="title">객실수 &emsp;&emsp;</div>
				                                            <div class="con_tx">807개</div><hr>
				                                            </form>
				                                        </li>
				                                        <li>
				                                         <form class="form-inline">
				                                            <div class="title">등급 &emsp;&emsp;&emsp;</div>
				                                            <div class="con_tx"><img src="/images/2013/Hotel/hg_star0.0.gif" alt="0.0성" width="85" height="16"/></div><hr>
				                                             </form>
				                                        </li>
				                                        <li>
				                                         <form class="form-inline">
				                                            <div class="title">체크인 &emsp;&emsp;</div>
				                                            <div class="con_tx">15:00</div><hr>
				                                            </form>
				                                        </li>
				                                        <li>
				                                        <form class="form-inline">
				                                            <div class="title">체크아웃&emsp;&nbsp;</div>
				                                            <div class="con_tx">정오</div><hr>
				                                            </form>
				                                        </li>
				                                        <li>
				                                        <form class="form-inline">
				                                            <div class="title">지역 &emsp;&emsp;&emsp;</div>
				                                            <div class="con_tx">
				                                                	이케부쿠로 / 릿쿄대학교 부근에 위치
				                                            </div><hr>
				                                            </form>
				                                        </li>
				                                        <li class="li0">
				                                        <form class="form-inline">
				                                            <div class="title">평점&emsp;&emsp;&emsp;</div>
				                                            <div class="con_tx">
				                                                <img src="/images/2013/Hotel/hg_grade4.0.gif" alt="4.0점" width="118" height="20" /> Good <span class="green_tx">평점 4.0/5.0</span>
				                                                <a class="view_bt" href="#Review"><span>1,797</span>건의 이용후기 보기</a>
																
				                                            </div>
				                                            </form>
				                                        </li>
				                                    </ul><p>
				                                   
				                                    <p><small style="float:right;"><b style="color:blue;float:left;">숙박 시설 위치</b> <br>이 4성급 호텔 가까이에는 성 마리아 성당 및 와세다대학교도 있습니다. 도쿄 중심에 자리한 호텔 메트로폴리탄 도<br>쿄  이케부쿠로에 머무실경우제이월드 도쿄 및 도쿄 도청사에 쉽게 가실 수 있습니다.</small></p>
				                                    <p><small style="float:right;"><b style="color:blue;float:left;">객실</b> <br>에어컨이 설치된 807개의 객실에는 LCD TV도 갖추어져 있어 편하게 머무실 수 있습니다. 무료 무선인터넷도 지원 <br>되며 위성 프로그램을 시청하실 수 있습니다. 욕실에는 무료 세면용품 및 헤어드라이어도 마련되어 있 <br>습니다. 편의 시설/서비스로는 전화 외에 책상 및 무료 신문도 있습니다.</small></p>
				                                    <p><small style="float:right;"><b style="color:blue;float:left;">편의 시설</b> <br>헬스클럽, 실내 수영장 등의 레크리에이션 시설을 잊지 말고 모두 즐기세요. 이 호텔에는 무료 무선 인터넷, 콘시어 <br>지서비스, 선물 가게/신문 가판대 등도 마련되어 있습니다.</small></p>
				                                    <p><small style="float:right;"><b style="color:blue;float:left;">식당</b> <br>호텔에 있는 6 개의 레스토랑 및 커피숍/카페 등에서 식사를 즐기실수 있습니다. 또는 편안하게 객실에서 룸서비<br>스(이용 시간 제한) 이용도 가능합니다. 바/라운지에서 좋아하는 음료를 마시며 갈증을 해소하실 수 있습니다. 매일 <br>뷔페 아침 식사가 별도 요금으로 제공됩니다.</small></p>
											        <p><small style="float:right;"><b style="color:blue;float:left;">비즈니스, 기타 편의시설</b> <br>대표적 편의 시설/서비스로는 무료 초고속 유선 인터넷, 리무진/타운카 서비스, 드라이클리닝/세탁 서비스 등이있 <br>습니다. 이 호텔에는 행사를 위한 15개의 회의실이 마련되어 있습니다. 별도 요금으로 왕복 공항 셔틀을 이용 <br>하실 수 있고 셀프 주차(요금 별도)도 시설 내에서 이용 가능합니다.</small></p>
										
												</div>
													  <div class="tab-pane fade" id="location">
													   
													  </div>		  
												</div>		
						             	</th>
				               		 </tr>
			                   </table>                                
			                 <p>    
   			</div>
   		</div>
   		</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>