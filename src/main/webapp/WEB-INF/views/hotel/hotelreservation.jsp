<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>호텔예약 - 블루핀투어</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script src="https://kit.fontawesome.com/d9cab3f7fe.js" crossorigin="anonymous"></script>

<!-- 제이쿼리 스크립트 위로 부트스트랩 올리면 메뉴바가 작동안해요 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>

<style>
.container5 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}
ul{
   
	list-style:none;margin:10px;padding:0;}
}
</style>
</head>
	<script>
	
	//페이징
	var fr = []; //숙박업소 이미지
	var fName = []; //숙박업소 이름
	var totalData = localStorage.getItem("count");    // 총 데이터 수
    var dataPerPage = 12;    // 한 페이지에 나타낼 데이터 수
    var pageCount = 10;        // 한 화면에 나타낼 페이지 수
	var currentPage = 1;
    
    function paging(totalData, dataPerPage, pageCount, currentPage){
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
        
        for(var i=first; i <= last; i++){
        	if(i>0){
            html += "<a href='#' id=" + i + ">" + i + "</a> ";
        	}
        }
        
        if(last < totalPage)
            html += "<a href=# id='next'>></a>";
        
        $("#paging").html(html);    // 페이지 목록 생성
        $("#paging a").css("color", "black");
        $("#paging a#" + currentPage).css({"text-decoration":"none", 
                                           "color":"red", 
                                           "font-weight":"bold"});    // 현재 페이지 표시
                                           
        $("#paging a").click(function(){
            
            var $item = $(this);
            var $id = $item.attr("id");
            var selectedPage = $item.text();
            
            if($id == "next")    selectedPage = next;
            if($id == "prev")    selectedPage = prev;
            
            paging(totalData, dataPerPage, pageCount, selectedPage);
            try{
            	 localStorage.setItem("pas",selectedPage);
            }catch(e){
            	if (e == QUOTA_EXCEEDED_ERR) {
				     alert('할당량 초과!'); // 할당량 초과로 인하여 데이터를 저장할 수 없음
				}            	
            }
            sta(selectedPage);
        });
                                           
    }

    //검색 값 설정
    function high(){
        a = document.getElementById("areaNum");
        ga = a.options[a.selectedIndex].value; 
        searcharea = a.options[a.selectedIndex].text;
        try {
       		localStorage.setItem("searchPag", ga);
       		localStorage.setItem("searchTag", searcharea);
       		console.log(localStorage.getItem("searchPag"));
	 	   }catch (e) {
	 	}
    }
    
    var fCount = [];
    var countId = [ ];
	ga = " ";
	ga = localStorage.getItem("searchPag");
	function sta(x) {
	    $.ajax({
		       url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay?ServiceKey=Q84iTs0OivxYSzXgMqJWORyolBgT87Mu5lXE6sSWgEFI%2BhLRrMmdyfML5z3g6HYBCfWqS0YiGkrXpzfT07XhJg%3D%3D&areaCode='  + ga +'&sigunguCode=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=P&numOfRows=12&pageNo='+ x,
		       dataType : 'json',
		       type : 'GET',
		       success : function(data) {
		    	   var count =  data.response.body.totalCount;
		    	   fCount = data.response.body.items.item;
		    	   console.log(fCount);
		    	   nc = count - fCount;  
		    	   for(var c=0; c<fCount.length; c++){
		    		   fr.push(data.response.body.items.item[c].firstimage);
		    		   fName.push(data.response.body.items.item[c].title);
		    		   countId.push(data.response.body.items.item[c].contentid);
		    	   }
		    	   
		    	   
	 	    	   try {
	 	    		   localStorage.setItem("count", count); // 전체 데이터 수, 페이징 계산위해서 사용
	 	    		   localStorage.setItem("fCount", fCount);
	 	    		   
	 	    		   localStorage.setItem('cId1', countId[0]);
	 	    		   localStorage.setItem('cId2', countId[1]);
	 	    		   localStorage.setItem('cId3', countId[2]);
	 	    		   localStorage.setItem('cId4', countId[3]);
	 	    		   localStorage.setItem('cId5', countId[4]);
	 	    	 	   localStorage.setItem('cId6', countId[5]);
	 	    	 	   localStorage.setItem('cId7', countId[6]);
	 	    	 	   localStorage.setItem('cId8', countId[7]);
	 	    	 	   localStorage.setItem('cId9', countId[8]);
	 	    	 	   localStorage.setItem('cId10', countId[9]);
	 	    	 	   localStorage.setItem('cId11', countId[10]);
	 	    	 	   localStorage.setItem('cId12', countId[11]);
	 	    	 	   
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
					}  keys
		       }
		    })
	}
	
	//검색된 태그 출력
	function showTitleView(){
		if(localStorage.getItem("searchTag") == null){
			for(var i=0; i<4;i++){
				document.write("<br><br><br><br><br>" );
			}
		}else if(localStorage.getItem("searchTag") != null){
			document.write(" <h4> <strong>" + localStorage.getItem("searchTag") +"</strong></h4><hr>");
		}
	}
	
	//숙박업소 목록 출력
	function showView(){ 
		if(localStorage.getItem("title1")=="undefined"){
		}else{
			for(var i=1;i<=(localStorage.getItem("fCount").length+1)/16;i++){
	    		document.write("<a href='hoteldetail?cId=" + localStorage.getItem("cId"+i)+"'>");
			    document.write("<ul><li><img src='" + localStorage.getItem("img"+i) + "' width='220' height='168' /> ");
			    document.write("<h6>" + localStorage.getItem("title"+i) + "</h6> </ul></li>");
			    document.write("</a>");
		    }
		}
	}
	
	
	//지역검색
	function search(){
		sta(1);
		localStorage.setItem("pas", 1);
		paging(totalData, dataPerPage, pageCount, localStorage.getItem("pas"));
	}﻿

	//페이징 출력
	$("document").ready(function(){ 
       console.log("1   :  "+localStorage.getItem("fCount").length);
       console.log(localStorage.getItem("searchPag"));
       paging(totalData, dataPerPage, pageCount, localStorage.getItem("pas"));
        
    });
	</script>


<body>
	
	<jsp:include page="../layout/header.jsp"/>
	<div class="container">
		<h3><strong>지역별 숙박정보</strong></h3><hr style="background:#1E90FF;">							
		<table class="table" style="background:#f1f3f5;height:auto;border:solid 1px #e2e2e2;">
        	<tr align="center">
				<th bgcolor="#F9F9F9" height="30px">					
					<form class="form-inline">	
					<label style="font-size:18px;">숙박 지역</label>&emsp; &emsp;								
						<select id="areaNum" name="areaNum" onchange="high();" class="form-control" style="width:185px;height:50px;" >
	                        <option  selected="selected">지역선택</option>
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
                        </select>&emsp;     
					</form>
                </th>     
                
               	<td align="right" bgcolor="#F9F9F9" >
					<button type="button" class="form-control" onclick="search();" style="width:100px;height:50px;background:#96CDFA;font-size:25px;color:white;">검색</button>																			
               	</td>
           </tr>
                 
       		<!-- <tr>
          		<td>
	              	<div align="center">
						<button type="button" class="form-control" onclick="search();" style="width:300px;height:50px;background:#96CDFA;font-size:30px;color:white;">빠른검색</button>																			
	              	</div>
          		</td>
   			</tr> -->
        </table><p>  
	                              		
	   	<script> 
	   		showTitleView();
	   	</script>
	   
		<div class="container5" align="center">
		    <script>
		    	showView();
		    </script>
		</div>
	
	<div id="paging" align="center"></div><br>

	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>