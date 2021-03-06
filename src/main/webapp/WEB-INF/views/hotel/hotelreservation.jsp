<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔검색 - 케어핀투어</title>
<script src="https://kit.fontawesome.com/d9cab3f7fe.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
<style>
.container5 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

ul {
	list-style: none;
	margin: 10px;
	padding: 0;
}
</style>
</head>
<script>
	//페이징
	var fr = []; //숙박업소 이미지
	var fName = []; //숙박업소 이름
	var totalData = sessionStorage.getItem("count");    // 총 데이터 수
	var dataPerPage = 12;    // 한 페이지에 나타낼 데이터 수
	var pageCount = 10;        // 한 화면에 나타낼 페이지 수
	var currentPage = 1;
    
	function paging(totalData, dataPerPage, pageCount, currentPage) {
		console.log("currentPage : " + currentPage);
		
		var totalPage = Math.ceil(totalData/dataPerPage);
		var pageGroup = Math.ceil(currentPage/pageCount); 
		
        console.log("pageGroup : " + pageGroup);
		var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
		if(last > totalPage)
			last = totalPage;
		
		var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
		var next = last+1;
		var prev = first-1;
		
		console.log("last : " + last);
		console.log("first : " + first);
		console.log("next : " + next);
		console.log("prev : " + prev);
		
		var $pingingView = $("#paging");
		
		var html = "";
		
		if(prev > 0)
			html += "<a href=# id='prev'><</a> ";
			
		for(var i=first; i <= last; i++) {
			if(i > 0) {
				html += "<a href='#' id=" + i + ">" + i + "</a> ";
			}
		}
		
		if(last < totalPage)
			html += "<a href=# id='next'>></a>";
			
		$("#paging").html(html);    // 페이지 목록 생성
		$("#paging a").css("color", "black");
		$("#paging a#" + currentPage).css({"text-decoration":"none", "color":"red", "font-weight":"bold"});		// 현재 페이지 표시
		$("#paging a").click(function() {
			
            var $item = $(this);
            var $id = $item.attr("id");
            var selectedPage = $item.text();
            
			if($id == "next")    selectedPage = next;
			if($id == "prev")    selectedPage = prev;
			
			paging(totalData, dataPerPage, pageCount, selectedPage);
			
			try {
				sessionStorage.setItem("pas",selectedPage);
			}
			catch(e) {
				if (e == QUOTA_EXCEEDED_ERR) {
					alert('할당량 초과!'); // 할당량 초과로 인하여 데이터를 저장할 수 없음
				}            	
			}
			sta(selectedPage);
		});
	}

	//검색 값 설정
	function high() {
		a = document.getElementById("areaNum");
		ga = a.options[a.selectedIndex].value; 
		searcharea = a.options[a.selectedIndex].text;
		try {
			sessionStorage.setItem("searchPag", ga);
			sessionStorage.setItem("searchTag", searcharea);
			console.log(sessionStorage.getItem("searchPag"));
		}
        catch (e) {
		}
	}
    
	var fCount = [];
	var countId = [ ];
	ga = " ";
	ga = sessionStorage.getItem("searchPag");
	function sta(x) {
		$.ajax({
			url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D&areaCode='  + ga + '&sigunguCode=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=P&numOfRows=12&pageNo='+ x,
			dataType : 'json',
			type : 'GET',
			success : function(data) {
				var count =  data.response.body.totalCount;
					fCount = data.response.body.items.item;
					oneTitle = data.response.body.items.item.title;
					oneImg = data.response.body.items.item.firstimage
					oneCid = data.response.body.items.item.contentid
	  
					for(var c=0; c<fCount.length; c++) {
						fr.push(data.response.body.items.item[c].firstimage);
						fName.push(data.response.body.items.item[c].title);
						countId.push(data.response.body.items.item[c].contentid);
					}
					try {
						sessionStorage.setItem("count", count); // 전체 데이터 수, 페이징 계산위해서 사용
						sessionStorage.setItem("fCount", fCount);
						
						sessionStorage.setItem("titleSearchResultsOne", oneTitle); 
						sessionStorage.setItem("imgSearchResultsOne", oneImg); 
						sessionStorage.setItem("cidSearchResultsOne", oneCid); 
						
						sessionStorage.setItem('cId0', countId[0]);
						sessionStorage.setItem('cId1', countId[1]);
						sessionStorage.setItem('cId2', countId[2]);
						sessionStorage.setItem('cId3', countId[3]);
						sessionStorage.setItem('cId4', countId[4]);
						sessionStorage.setItem('cId5', countId[5]);
						sessionStorage.setItem('cId6', countId[6]);
						sessionStorage.setItem('cId7', countId[7]);
						sessionStorage.setItem('cId8', countId[8]);
						sessionStorage.setItem('cId9', countId[9]);
						sessionStorage.setItem('cId10', countId[10]);
						sessionStorage.setItem('cId11', countId[11]);
						
						sessionStorage.setItem("img0", fr[0]); // key-value 형식으로 저장
						sessionStorage.setItem("img1", fr[1]); // 숙박업소 이미지
						sessionStorage.setItem("img2", fr[2]);
						sessionStorage.setItem("img3", fr[3]);
						sessionStorage.setItem("img4", fr[4]);
						sessionStorage.setItem("img5", fr[5]);
						sessionStorage.setItem("img6", fr[6]);
						sessionStorage.setItem("img7", fr[7]);
						sessionStorage.setItem("img8", fr[8]);
						sessionStorage.setItem("img9", fr[9]);
						sessionStorage.setItem("img10", fr[10]);
						sessionStorage.setItem("img11", fr[11]);
						
						sessionStorage.setItem("title0", fName[0]); //숙박업소 이름
						sessionStorage.setItem("title1", fName[1]);
						sessionStorage.setItem("title2", fName[2]);
						sessionStorage.setItem("title3", fName[3]);
						sessionStorage.setItem("title4", fName[4]);
						sessionStorage.setItem("title5", fName[5]);
						sessionStorage.setItem("title6", fName[6]);
						sessionStorage.setItem("title7", fName[7]);
						sessionStorage.setItem("title8", fName[8]);
						sessionStorage.setItem("title9", fName[9]);
						sessionStorage.setItem("title10", fName[10]);
						sessionStorage.setItem("title11", fName[11]);
						
						location.reload();
					} catch (e) {
					   if (e == QUOTA_EXCEEDED_ERR) {
					     alert('할당량 초과!'); // 할당량 초과로 인하여 데이터를 저장할 수 없음
					  }
					} 
				}
		})
	}
	
	//검색된 태그 출력
	function showTitleView() {
		if(sessionStorage.getItem("searchTag") == null) {
			for(var i=0; i<4;i++) {
				document.write("<br><br><br><br><br>" );
			}
		}
		else if(sessionStorage.getItem("searchTag") != null) {
			document.write(" <h4> <strong>" + sessionStorage.getItem("searchTag") +"</strong></h4><hr>");
		}
	}
	
	//숙박업소 목록 출력
	function showView() {
		if((sessionStorage.getItem("fCount").length+1)/16 == 1) { // 결과 값이 1이면 값이 들어가지 않아서 여기서 처리
				document.write("<a href='hoteldetail?cId=" + sessionStorage.getItem("cidSearchResultsOne") +"'>");
			if(sessionStorage.getItem("img0")=="undefined") {
				document.write("<ul><li><img src='<c:url value='/resources/images/noImage.png'/>' width='220' height='168'> ");
			}
			else {
				document.write("<ul><li><img src='" + sessionStorage.getItem("imgSearchResultsOne") + "' width='220' height='168' /> ");
			}
		    document.write("<h6>" + sessionStorage.getItem("titleSearchResultsOne") + "</h6> </ul></li>");
		    document.write("</a>");
		}
		else {
			for(var i=0;i<(sessionStorage.getItem("fCount").length+1)/16;i++) { // 나머지 경우 출력
				if(sessionStorage.getItem("title"+i)=="undefined") {}
				else {
					document.write("<a href='hoteldetail?cId=" + sessionStorage.getItem("cId"+i)+"'>");
					if(sessionStorage.getItem("img"+i)=="undefined") {
						document.write("<ul><li><img src='<c:url value='/resources/images/noImage.png'/>' width='220' height='168'> ");
					}
					else{
						document.write("<ul><li><img src='" + sessionStorage.getItem("img"+i) + "' width='220' height='168' /> ");
					}
				    document.write("<h6>" + sessionStorage.getItem("title"+i) + "</h6> </ul></li>");
				    document.write("</a>");
				}
		    }
		}
	}
	
	//지역검색
	function search() {
		sta(1);
		sessionStorage.setItem("pas", 1);
		paging(totalData, dataPerPage, pageCount, sessionStorage.getItem("pas"));
	}﻿

	//페이징 출력
	$("document").ready(function() { 
       console.log("1   :  "+sessionStorage.getItem("fCount").length);
       console.log(sessionStorage.getItem("searchPag"));
       paging(totalData, dataPerPage, pageCount, sessionStorage.getItem("pas"));
        
    });
	</script>

<body>
	<jsp:include page="../layout/header.jsp" />

	<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
		<div class="container">
			<h2>지역별 숙박정보</h2>
			<ul class="thm-breadcrumb list-unstyled">
				<li><a>CarefinTour</a></li>
			</ul>
		</div>
	</section>

	<section class="tour-one">
		<div class="container">
			<table class="table" style="background: #f1f3f5; height: auto; border: solid 1px #e2e2e2;">
				<tr align="center">
					<th bgcolor="#F9F9F9" height="30px">
						<form class="form-inline">
							<label style="font-size: 18px;">숙박 지역</label>&emsp; &emsp;
							<select id="areaNum" name="areaNum" onchange="high();" class="form-control" style="width: 185px; height: 50px;">
								<option selected="selected">지역선택</option>
								<option value="">전체</option>
								<option value="1">서울</option>
								<option value="2">인천</option>
								<option value="3">대전</option>
								<option value="4">대구</option>
								<option value="5">광주</option>
								<option value="6">부산</option>
								<option value="7">울산</option>
								<option value="8">세종시</option>
								<option value="31">경기도</option>
								<option value="32">강원도</option>
								<option value="33">충청북도</option>
								<option value="34">충청남도</option>
								<option value="35">경상북도</option>
								<option value="36">경사남도</option>
								<option value="37">전라북도</option>
								<option value="38">전라남도</option>
								<option value="39">제주도</option>
							</select>
						</form>
					</th>
					<td align="right" bgcolor="#F9F9F9">
						<button type="button" class="form-control" onclick="search();" style="width: 100px; height: 50px; background: #96CDFA; font-size: 25px; color: white;">검색</button>
					</td>
				</tr>
			</table>
			<script>showTitleView();</script>
			<div class="container5" align="center">
				<script>showView();</script>
			</div>
			<div id="paging" align="center"></div>
		</div>
	</section>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>