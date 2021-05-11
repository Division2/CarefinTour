<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>호텔예약 - 블루핀투어</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

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
	var fr = []; //숙박업소 이미지
	var fName = []; //숙박업소 이름
	var totalData = localStorage.getItem("count");    // 총 데이터 수
    var dataPerPage = 12;    // 한 페이지에 나타낼 데이터 수
    var pageCount = 10;        // 한 화면에 나타낼 페이지 수
    //var totalData;    // 총 데이터 수
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

    function high2(){
        afType = document.getElementById("aType");
        accommodationType = afType.options[afType.selectedIndex].value; 
        try {
       		localStorage.setItem("searchAccommodationType", accommodationType);
 	   }catch (e) {
 		}
    }
    
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
    
    accommodationType ="";
    accommodationType =localStorage.getItem("searchAccommodationType");
    var fCount = [  ];
    var countId = [ ];
	ga = "";
	ga = localStorage.getItem("searchPag");
	function sta(x) {
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
		    		   countId.push(data.response.body.items.item[c].contentid);
		    	   }
		    	   
	 	    	   try {
	 	    		   localStorage.setItem("count", count); // 전체 데이터 수, 페이징 계산위해서 사용
	 	    		   
	 	    		   localStorage.setItem('cId1', countId[0]);
	 	    		   localStorage.setItem('cId2', countId[1]);
	 	    		   localStorage.setItem('cId3', countId[2]);
	 	    		   localStorage.setItem('cId4', countId[3]);
	 	    		   localStorage.setItem('cId5', countId[4]);
	 	    	 	   localStorage.setItem('cId6', countId[5]);
	 	    	 	   localStorage.setItem('cId7', countId[6]);
	 	    	 	   localStorage.setItem('cId8', countId[7]);
	 	    	 	   localStorage.setItem('cId9', countId[8]);
	 	    	 	   var $ad2 = countId[1];
	 	    	 	   localStorage.setItem('cId10', countId[9]);
	 	    	 	   localStorage.setItem('cId11', countId[10]);
	 	    	 	   localStorage.setItem('cId12', countId[11]);
	 	    	 	   console.log($ad2);
	 	    	 	   
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
	}
	function hoteldetail1(){
	    	localStorage.setItem('searchDetail', 1);
 	}
	
	function search(){
		sta(1)
		localStorage.setItem("pas", 1);
		paging(totalData, dataPerPage, pageCount, localStorage.getItem("pas"));
	}﻿

	$("document").ready(function(){ //첫번째 실행위한 초기값 설정, 실행하면 검색된 결과에 따라 바뀜
		try{
    		if(localStorage.getItem("pas") == "undefined"){
    			 localStorage.setItem("pas", 1);
    		}else if(localStorage.getItem("pas") <= 0){
    			 localStorage.setItem("pas", 1);
    		}
    		if(localStorage.getItem("title1") == "null"){
    			 sta(1);
    		}
    		if(localStorage.getItem("count") == "null"){
    			localStorage.setItem("count", 1000);
   		    }
    		if( localStorage.getItem("searchTag") =="null"){
    			 localStorage.setItem("searchTag", "전체");
    		}
   			
			window.onload = function(){
				var tableShow1 = document.getElementById("tableResult1");
				var tableShow2 = document.getElementById("tableResult2");
				var tableShow3 = document.getElementById("tableResult3");
				var tableShow4 = document.getElementById("tableResult4");
				var tableShow5 = document.getElementById("tableResult5");
				var tableShow6 = document.getElementById("tableResult6");
				var tableShow7 = document.getElementById("tableResult7");
				var tableShow8 = document.getElementById("tableResult8");
				var tableShow9 = document.getElementById("tableResult9");
				var tableShow10 = document.getElementById("tableResult10");
				var tableShow11 = document.getElementById("tableResult11");
				var tableShow12 = document.getElementById("tableResult12");
	   			if(localStorage.getItem("title1") == "undefined"){
	   				localStorage.setItem("title1", " ");
	   				tableShow1.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title2") == "undefined"){
	   				localStorage.setItem("title2", " ");
	   				tableShow2.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title3") == "undefined"){
	   				localStorage.setItem("title3", " ");
	   				tableShow3.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title4") == "undefined"){
	   				localStorage.setItem("title4", " ");
	   				tableShow4.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title5") == "undefined"){
	   				localStorage.setItem("title5", " ");
	   				tableShow5.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title6") == "undefined"){
	   				localStorage.setItem("title6", " ");
	   				tableShow6.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title7") == "undefined"){
	   				localStorage.setItem("title7", " ");
	   				tableShow7.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title8") == "undefined"){
	   				localStorage.setItem("title8", " ");
	   				tableShow8.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title9") == "undefined"){
	   				localStorage.setItem("title9", " ");
	   				tableShow9.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title10") == "undefined"){
	   				localStorage.setItem("title10", " ");
	   				tableShow10.style.display = 'none';
	       		}
	   			if(localStorage.getItem("title11") == "undefined"){
	   				localStorage.setItem("title11", " ");
	   				tableShow11.style.display = 'none';
	       		}
				if(localStorage.getItem("title12") == "undefined"){
	   				localStorage.setItem("title12", " ");
	   				tableShow12.style.display = 'none';
	       		}
  	    	}
       }catch(e){
       }
       
       console.log(localStorage.getItem("searchPag"));
       paging(totalData, dataPerPage, pageCount, localStorage.getItem("pas"));
        
    });
	</script>
<body>
	
	<div class="">  </div>
	<jsp:include page="../layout/header.jsp"/>
	<div class="container">
		<h3><strong>지역별 숙박정보</strong></h3><hr style="background:#1E90FF;border:solid 1px #96CDFA; ">							
			<table class="table" style="background:#f1f3f5;height:auto;border:solid 1px #e2e2e2;">
				<tr>
					<th bgcolor="#F9F9F9" height="50px" >																		                         
						<form class="form-inline">	
							<label style="font-size:18px;">숙박 종류</label>
								 &emsp; &emsp;	
								
								<select id="aType" onchange="high2();" class="form-control" style="width:185px;height:38px;" >
	                                <option >숙박 종류</option>
	                                <option value="">전체</option>
	                            <!--     <option value="&goodStay=1">굿스테이</option> -->
	                                <option value="&hanOk=1">한옥</option>
	                                <option value="&benikia=1">베니키아</option>
                                </select>     					
						</form>
                   	</th>           
                </tr>
          
                <tr>
					<th bgcolor="#F9F9F9" height="50px">					
						<form class="form-inline">	
							<label style="font-size:18px;">숙박 지역</label>
								 &emsp; &emsp;								
								<select id="areaNum" name="areaNum" onchange="high();" class="form-control" style="width:185px;height:38px;" >
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
                                </select>     
                                &emsp;
                                
						</form>
                   	</th>           
                </tr>
                 
                 <tr>
                	<td>
	                	<div align="center">
							<button type="button" class="form-control" onclick="search();" style="width:300px;height:70px;background:#96CDFA;font-size:30px;color:white;">빠른검색</button>																			
	                	</div>
                 	</td>
                 </tr>
            </table><p>  
          
	                              		
	                              		 
    <h4>
   	 <strong>
   		<script> 
  	 	 	document.write(localStorage.getItem("searchTag"));
   		 </script>
   	 </strong>
    </h4>
   
     <hr>
	<div class="container5" align="center">
					<ul>
						<li>
                        	<a href="hoteldetail" onclick="hoteldetail1();">
                        		<div id="tableResult1">
                            	<script>
                            	    //document.write("<img src='" + fr[0] + "'width='220' height='168' /><br>");
                            	    //console.log(fr[0]);
                            	    
									document.write("<img src='" +localStorage.getItem("img1") + "' width='220' height='168' /><br>");
								</script>
                            	<h6> 
                            	<script>
									document.write(localStorage.getItem("title1"));
									//document.write(fName[0]);
								</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                   </ul>
  	  
					<ul>
						<li>
                        	<a href="hoteldetail?ad2=asd">
                        		<div id="tableResult2">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img2") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
                            	<script>
									document.write(localStorage.getItem("title2"));
								</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>
                    
					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult3">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img3") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
                            	<script>
									document.write(localStorage.getItem("title3"));
								</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>
    
					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult4">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img4") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            <script>
									document.write(localStorage.getItem("title4"));
								</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>

					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult5">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img5") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title5"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>
         
					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult6">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img6") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title6"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>
       
					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult7">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img7") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title7"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>
        
					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult8">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img8") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title8"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>

					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult9">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img9") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title9"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>
           
					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult10">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img10") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title10"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>

					<ul>
						<li>
                        	<a href="">
                        		<div id="tableResult11">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img11") + "'width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title11"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>

					<ul>
						<li>
                        	<a href="">
                        	   <div id="tableResult12">
                            	<script>
									document.write("<img src='" +localStorage.getItem("img12") + "' id='test' width='220' height='168' /><br>");
								</script>
                            	<h6> 
	                            	<script>
										document.write(localStorage.getItem("title12"));
									</script>
	                            </h6>
	                            </div>
                            </a>
                        </li>
                    </ul>

		</div>
	</div>
	
	<div id="paging" align="center"></div><br>

	
	
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>