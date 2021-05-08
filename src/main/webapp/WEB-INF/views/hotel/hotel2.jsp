<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨정보 - 케어핀투어</title>
<link href="css/section.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/d9cab3f7fe.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	
	<div class="container">
		<div class="row">
		<div class="nav-control">				
				<p><ul class="nav nav-tabs nav-justified" style="margin-top:15px;">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#qwe" style="background:#f1f3f5;">
							<strong>해외호텔</strong>
								</a>
									</li>
										</ul>			         
   
                                <div class="box0">
                                    <label for="txtCityName" class="label0">도시</label>
                                    <span>
                                        <input type="text" id="txtCityName" name="txtCityName" class="ui-autocomplete-input" autocomplete="off">
                                        <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
                                        <a href="#a"
                                           onclick="MwDialog.openDiv('625','718','citySearchHotel','도시검색');">
                                            	주요도시 선택
                                        </a>

                                    </span>
                                    <input type="hidden" name="hidCityCode" id="hidCityCode" value="">
                                </div>
                                <div class="box1">
                                    <label for="txtCheckIn">체크인</label>
                                    <span id="spnCheckIn"><input type="text" id="txtCheckIn" name="txtCheckIn" value="2021-05-06"><a href="javascript:onLeftCheckIn();"><img id="imgCheckIn" src="/Images/2013/hotel/jg_calendar.png" alt="달력보기"></a></span>
                                    <select name="ddlDuration" id="ddlDuration" onchange="onLeftDurationChange();">
                                        <option value="1">1박</option>
                                        <option value="2">2박</option>
                                        <option value="3">3박</option>
                                        <option value="4">4박</option>
                                        <option value="5">5박</option>
                                        <option value="6">6박</option>
                                        <option value="7">7박</option>
                                        <option value="8">8박</option>
                                        <option value="9">9박</option>
                                        <option value="10">10박</option>
                                        <option value="11">11박</option>
                                        <option value="12">12박</option>
                                        <option value="13">13박</option>
                                        <option value="14">14박</option>
                                        <option value="15">15박</option>
                                        <option value="16">16박</option>
                                        <option value="17">17박</option>
                                        <option value="18">18박</option>
                                        <option value="19">19박</option>
                                        <option value="20">20박</option>
                                        <option value="21">21박</option>
                                        <option value="22">22박</option>
                                        <option value="23">23박</option>
                                        <option value="24">24박</option>
                                        <option value="25">25박</option>
                                        <option value="26">26박</option>
                                        <option value="27">27박</option>
                                        <option value="28">28박</option>
                                        <option value="29">29박</option>
                                        <option value="30">30박</option>
                                    </select>
                                </div>
                                <div class="box2">
                                    <label for="txtCheckOut">체크아웃</label>
                                    <span id="spnCheckOut"><input type="text" id="txtCheckOut" name="txtCheckOut" value="2021-05-07"><a href="javascript:onLeftCheckOut();"><img id="imgCheckIn" src="/Images/2013/hotel/jg_calendar.png" alt="달력보기"></a></span>
                                </div>
                                <div class="box3">
                                    <label for="ddlRoomCnt">객실수</label>
                                    <select name="ddlRoomCnt" id="ddlRoomCnt" onchange="leftAddRoom();">
                                        <option selected="selected" value="1">1개</option>
                                        <option value="2">2개</option>
                                        <option value="3">3개</option>
                                        <option value="4">4개</option>
                                        <option value="5">5개</option>
                                    </select>
                                </div>
                                <div class="box4">
                                    <label for="selAdultCnt0">인원수</label>
                                    <select name="selAdultCnt" id="selAdultCnt0" class="select0">
                                        <option value="1">성인 1명</option>
                                        <option selected="selected" value="2">성인 2명</option>
                                        <option value="3">성인 3명</option>
                                        <option value="4">성인 4명</option>
                                    </select>
                                    <label for="selChildCnt0" class="hide">소아 인원</label>
                                    <select name="selChildCnt" id="selChildCnt0" onchange="leftAddChild(this,0);">
                                        <option selected="selected" value="0">소아 0명</option>
                                        <option value="1">소아 1명</option>
                                        <option value="2">소아 2명</option>
                                    </select>
                                    <!--객실1-->
                                    <div class="room_people" data-idx="0">
                                        <!--소아나이1-->
                                        <div class="age_box" style="display:none;">
                                            <label class="age_title" for="">소아 나이1</label>
                                            <select id="selChildAge0_0" name="selChildAge0">
                                                <option value="0">소아1 나이 선택</option>
                                                <option value="12">0 세</option>
                                                <option value="1">만 1 세</option>
                                                <option value="2">만 2 세</option>
                                                <option value="3">만 3 세</option>
                                                <option value="4">만 4 세</option>
                                                <option value="5">만 5 세</option>
                                                <option value="6">만 6 세</option>
                                                <option value="7">만 7 세</option>
                                                <option value="8">만 8 세</option>
                                                <option value="9">만 9 세</option>
                                                <option value="10">만 10 세</option>
                                                <option value="11">만 11 세</option>
                                            </select>
                                        </div>
                                        <!--소아나이2-->
                                        <div class="age_box" style="display:none;">
                                            <label class="age_title" for="">소아 나이2</label>
                                            <select id="selChildAge0_1" name="selChildAge0">
                                                <option value="0">소아2 나이 선택</option>
                                                <option value="12">0 세</option>
                                                <option value="1">만 1 세</option>
                                                <option value="2">만 2 세</option>
                                                <option value="3">만 3 세</option>
                                                <option value="4">만 4 세</option>
                                                <option value="5">만 5 세</option>
                                                <option value="6">만 6 세</option>
                                                <option value="7">만 7 세</option>
                                                <option value="8">만 8 세</option>
                                                <option value="9">만 9 세</option>
                                                <option value="10">만 10 세</option>
                                                <option value="11">만 11 세</option>
                                            </select>
                                        </div>
                                    </div>
                                    <!--객실2~4-->
                                </div>

                                <script type="text/javascript">
                                    function leftAddRoom() {
                                        var rooms = $("div.room_people");

                                        var ddlRoomCnt = parseInt($("#ddlRoomCnt").val());

                                        if (ddlRoomCnt > rooms.length) {
                                            for (var i = rooms.length; i < ddlRoomCnt; ++i) {
                                                //var schema2 = "<p>객실" + (i + 1) + "</p><div class='rooms' data-idx='" + i + "'> " +
                                                //    "<label for='selAdultCnt" + i + "' class='hide'>성인 인원</label>" +
                                                //    "<select name='selAdultCnt' id='selAdultCnt" + i + "'>" +
                                                //    "<option value='1' >성인 1명</option><option value='2' selected='selected'>성인 2명</option><option value='3' >성인 3명</option><option value='4' >성인 4명</option>" +
                                                //    "</select>" +
                                                //    "<label for='selChildCnt" + i + "' class='hide'>소아 인원</label>" +
                                                //    "<select name='selChildCnt' id='selChildCnt" + i + "' onchange='leftAddChild(this);'>" +
                                                //    "<option value='0' >소아 0명</option><option value='1' >소아 1명</option><option value='2'>소아 2명</option>" +
                                                //    "</select>";

                                                var schema = '<div class="room_people" data-idx="' + i + '">' +
                                                    '<div class="room_people_select">' + "\r\n" +
                                                    '<span class="title">객실 ' + (i + 1) + '</span>' +
                                                    '<label for="" class="hide">성인 인원수</label>' +
                                                    '<select name="selAdultCnt" id="selAdultCnt' + i + '" >' +
                                                    '<option value="1" >성인 1명</option><option value="2" selected="selected">성인 2명</option><option value="3" >성인 3명</option><option value="4" >성인 4명</option>' +
                                                    '</select>' + "\r\n" +
                                                    '<label for="selChildCnt' + i + '" class="hide">소아 인원</label>' +
                                                    '<select name="selChildCnt" id="selChildCnt' + i + '" onchange="leftAddChild(this,' + (i) + ');"  class="select0">' +
                                                    '<option value="0" >소아 0명</option><option value="1" >소아 1명</option><option value="2">소아 2명</option>' +
                                                    '</select>' +
                                                    '</div>' +
                                                    '</div>';

                                                $("div.room_people:last").after(schema);
                                            }
                                        }
                                        else {
                                            for (var i = rooms.length - 1; i >= ddlRoomCnt; --i) {
                                                $("div.room_people:eq(" + i + ")").prev().remove().end().remove();
                                            }
                                        }
                                    }

                                    function leftAddChild(obj, rIdx) {
                                        var select = $(obj);
                                        var childCnt = parseInt(select.val());
                                        var room = $("div.room_people[data-idx=" + rIdx + "]")
                                        var childs = room.find("div.age_box");
                                        var roomIdx = rIdx;


                                        if (rIdx == 0) {

                                            room.find("div.age_box:eq(0)").hide();
                                            room.find("div.age_box:eq(1)").hide();

                                            if (childCnt > 0) {
                                                room.find("div.age_box:eq(0)").show();
                                            }
                                            if (childCnt > 1) {
                                                room.find("div.age_box:eq(1)").show();
                                            }

                                        }
                                        else {
                                            if (childCnt > childs.length) {
                                                for (var i = childs.length; i < childCnt; ++i) {

                                                    var optionHtml = ""
                                                    for (var j = 0; j < 12; j++) {
                                                        optionHtml += "<option value='" + j + "' >만 " + j + "세</option>";
                                                    }
                                                    var schema2 = "<div class='child'> " +
                                                        "<label for='selChildAge" + roomIdx + "_" + i + "' class='hide'>소아 나이" + i + "</label>" +
                                                        //"    소아 나이 ' + (i + 1) "+
                                                        "<select name='selChildAge' id='selChildAge" + roomIdx + "_" + i + "' >" +
                                                        "<option value='0' >소아" + (i + 1) + " 나이 선택</option>" +
                                                        optionHtml +
                                                        "</select> " +
                                                        "</div> ";

                                                    var schema = '<div class="age_box"> ' +
                                                        "<label for='selChildAge" + roomIdx + "_" + i + "' class='age_title'>소아 나이" + (i + 1) + "</label>" +
                                                        //"    소아 나이 ' + (i + 1) "+
                                                        "<select name='selChildAge' id='selChildAge" + roomIdx + "_" + i + "' >" +
                                                        "<option value='0' >소아" + (i + 1) + " 나이 선택</option>" +
                                                        optionHtml +
                                                        "</select> " +
                                                        "</div> ";

                                                    room.append(schema);
                                                }
                                            }
                                            else {
                                                for (var i = childs.length - 1; i >= childCnt; --i) {
                                                    room.find("div.age_box:eq(" + i + ")").remove();
                                                }
                                            }
                                        }

                                    }
                                </script>


                                <div class="txtHotelName box5 clear">
                                    <label for="txtFtrHotelName">호텔명</label>
                                    <span>
                                        <input type="text" id="txtFtrHotelName" name="txtFtrHotelName" value="" class="ui-autocomplete-input" autocomplete="off"><span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>

                                        <!--
                                        <ul class="focus_ul">
                                            <li><a href="#a">Lake Titicaca (47) , 페루</a></li>
                                            <li><a href="#a">Arauca (1) , 콜롬비아</a></li>
                                            <li><a href="#a">안캉(안강) (3) , 중국</a></li>
                                            <li><a href="#a">Ahoskie (1) , 미국</a></li>
                                            <li><a href="#a">Areatza (1)스페인</a></li>
                                        </ul>
                                            -->

                                        <script>
                                            $(function () {   // 임시
                                                /*
                                                $(".ui-autocomplete-input").on("change paste keyup", function () {
                                                    $(this).siblings('.focus_ul').show();
                                                });

                                                $('.focus_ul li a').click(function () {
                                                    var val1 = $(this).text();
                                                    var result = val1;
                                                    $(this).parent().parent().siblings(".ui-autocomplete-input").val(result);
                                                    $('.focus_ul').hide();
                                                });
                                                */
                                            });
                                        </script>

                                    </span>
                                </div>
                                <div class="box6">
                                    <a href="javascript:leftGoSearch(true);" class="product_button1 title_fontweight2">빠른검색</a>
                                </div>
                            </div>
                        </div>

                        <div id="jg_main_banner0">
                            <div class="banner_top">
                                <ul>
                                    <!-- HEAR -->
                                            <li class="cp"><a href="/Event/Detail?evtSeq=7553"><img src="http://contents.verygoodtour.com/Images/pc/free/air/hotel_mainbanner1.jpg" alt="" /></a></li>
                                            <li class="cp"><a href="/Event/Detail?evtSeq=6017"><img src="http://contents.verygoodtour.com/Images/pc/free/air/hotel_mainbanner2.jpg" alt="" /></a></li>
                                            <li class="cp"><a href="/Event/Detail?evtSeq=5748"><img src="http://contents.verygoodtour.com/Images/pc/free/air/hotel_mainbanner3.jpg" alt="" /></a></li>
                                    <!--
                                    <li class="cp select"><a href="#a"><img src="/Images/2013/hotel/5_1_2.png" alt=""></a></li>
                                    <li class="cp"><a href="#a"><img src="/Images/2013/hotel/5_1_2.png" alt=""></a></li>
                                    <li class="cp"><a href="/#a"><img src="/Images/2013/hotel/5_1_2.png" alt=""></a></li>
                                        -->
                                </ul>

                                <div class="banner_control_box">
                                    <p class="ctr_l_bt"><a href="javascript:void(0);">이전</a></p>
                                    <p class="ctr_s_bt">
                                        <a href="javascript:void(0);">
                                            <span class="hide_tx">배너멈춤</span>
                                            <span class="page_num"><strong class="page_now">1</strong>/<em class="page_total">3</em></span>
                                        </a>
                                    </p>
                                    <p class="ctr_r_bt"><a href="javascript:void(0);">다음</a></p>
                                </div>
                            </div>
                            <!--
                            <ul class="banner_bot">
                                    <li class=""><a href="/Event/EventPlanReview?evtSeq=4713&amp;amp;PageIndex=1&amp;amp;Category=&amp;amp;Attr=&amp;amp;Keyword=#view"><img src="http://contents.verygoodtour.com/FILE/DIABLO/BANNER/VGT/107/6_1_1.jpg" alt="" width="240" height="102"></a></li>
                                    <li class="li0"><a href="/Event/EventPlanReview?evtSeq=2051&amp;amp;PageIndex=2&amp;amp;Category=A&amp;amp;Attr=H&amp;amp;Keyword=#view"><img src="http://contents.verygoodtour.com/FILE/DIABLO/BANNER/VGT/107/6_1_2.jpg" alt="" width="240" height="102"></a></li>
                            </ul> -->
                        </div>
                    </div><!--main_top end-->
                    <!--//가운데 긴 배너-->
                        <div id="jg_main_banner1">
                            <a href="/Event/Detail?evtSeq=1471"><img src="http://contents.verygoodtour.com/Images/pc/free/air/hotel_longbanner.jpg" alt=""></a><p></p>
                        </div>
                    <!--//도시별 추천호텔-->
                        <div id="main_city_recommend">
                            <h4 class="title_fontweight">도시별 추천호텔</h4>
                            <div class="city_container">
                                <!--//일본 추천호텔-->
                                <h5 class="type0 select"><a href="#n">일본</a></h5>
                                <div class="city_box select">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">동경</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=179900&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">동경 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('144886');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/13400/13386/b669367c_b.jpg" alt="호텔 메트로폴리탄 도쿄 .." width="220" height="168" />
                                                            <span class="title">호텔 메트로폴리탄 도쿄 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star0.0.gif" alt="0.0성" width="85" height="16" /> </span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0점" width="118" height="20" /></span>
                                                            <span class="hotel_price">42,329원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('144886');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/13400/13386/b669367c_b.jpg" alt="호텔 메트로폴리탄 도쿄 .." width="220" height="168" />
                                                            <span class="title">호텔 메트로폴리탄 도쿄 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star0.0.gif" alt="0.0성" width="85" height="16" /> </span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0점" width="118" height="20" /></span>
                                                            <span class="hotel_price">42,329원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('343963');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1410000/1406700/1406688/7e1f5471_b.jpg" alt="아키하바라 워싱턴 호텔" width="220" height="168" />
                                                            <span class="title">아키하바라 워싱턴 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.5.gif" alt="3.5성" width="85" height="16" /> 3.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0점" width="118" height="20" /></span>
                                                            <span class="hotel_price">78,921원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('401304');">
                                                            <img src="http://media.expedia.com/hotels/5000000/4870000/4869100/4869084/e14f963f_b.jpg" alt="이비스 도쿄 신주쿠" width="220" height="168" />
                                                            <span class="title">이비스 도쿄 신주쿠</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0점" width="118" height="20" /></span>
                                                            <span class="hotel_price">109,296원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">오사카</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=179897&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">오사카 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('323419');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2540000/2537500/2537459/fee4f912_b.jpg" alt="더 도톤보리 호텔" width="220" height="168" />
                                                            <span class="title">더 도톤보리 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">67,499원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('397105');">
                                                            <img src="http://media.expedia.com/hotels/5000000/4760000/4756900/4756871/e20ee03f_b.jpg" alt="레드 루프 플러스 오사카.." width="220" height="168" />
                                                            <span class="title">레드 루프 플러스 오사카..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">34,728원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('323420');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2800000/2791000/2790955/8c544ae4_b.jpg" alt="호텔 힐러리스" width="220" height="168" />
                                                            <span class="title">호텔 힐러리스</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">51,043원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('311099');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2550000/2544400/2544378/553395c2_b.jpg" alt="하튼 호텔 신사이바시" width="220" height="168" />
                                                            <span class="title">하튼 호텔 신사이바시</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">59,898원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">후쿠오카</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=1265&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">후쿠오카 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('121541');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/18800/18766/c1bbaa25_b.jpg" alt="호텔 니코 후쿠오카" width="220" height="168" />
                                                            <span class="title">호텔 니코 후쿠오카</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">134,978원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('260875');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1790000/1788900/1788846/720d2a74_b.jpg" alt="커낼 시티 후쿠오카 워싱.." width="220" height="168" />
                                                            <span class="title">커낼 시티 후쿠오카 워싱..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">45,021원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('251542');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1610000/1607900/1607899/a957c467_b.jpg" alt="호텔 몬토레 라 수르 후.." width="220" height="168" />
                                                            <span class="title">호텔 몬토레 라 수르 후..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.5.gif" alt="3.5성" width="85" height="16" /> 3.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">62,658원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('126663');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/10600/10524/d9e7d73b_b.jpg" alt="ANA 크라운 플라자 후쿠.." width="220" height="168" />
                                                            <span class="title">ANA 크라운 플라자 후쿠..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">100,334원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>

                                <!--//중국 추천호텔-->
                                <h5 class="type1"><a href="#n">중국</a></h5>
                                <div class="city_box">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">상해</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=180026&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">상해 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('233714');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/50000/44300/44282/afeec65d_b.jpg" alt="페어몬트 피스 호텔" width="220" height="168" />
                                                            <span class="title">페어몬트 피스 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/5.0-25501-4.gif" alt="5.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">471,394원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('338979');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/570000/565000/564970/56db566e_b.jpg" alt="센트럴 호텔 상하이" width="220" height="168" />
                                                            <span class="title">센트럴 호텔 상하이</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">139,045원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('430157');">
                                                            <img src="http://media.expedia.com/hotels/2000000/1420000/1411900/1411815/1411815_467_b.jpg" alt="인터컨티넨탈 상하이 루.." width="220" height="168" />
                                                            <span class="title">인터컨티넨탈 상하이 루..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">302,958원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('254307');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1570000/1563000/1562968/7c557d3d_b.jpg" alt="디 이튼 호텔" width="220" height="168" />
                                                            <span class="title">디 이튼 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">75,740원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">북경</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178237&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">북경 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('141125');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/5600/5591/a2ca68c5_b.jpg" alt="켐핀스키 호텔 베이징 루.." width="220" height="168" />
                                                            <span class="title">켐핀스키 호텔 베이징 루..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/5.0-25501-4.gif" alt="5.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('144914');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/30000/24600/24552/e0bff6b2_b.jpg" alt="더 페닌슐라 베이징" width="220" height="168" />
                                                            <span class="title">더 페닌슐라 베이징</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/5.0-25501-4.gif" alt="5.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('267957');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1910000/1903400/1903399/07ebc436_b.jpg" alt="웨스틴 베이징 차오양" width="220" height="168" />
                                                            <span class="title">웨스틴 베이징 차오양</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('237545');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1400000/1397700/1397614/169d27df_b.jpg" alt="파크 플라자 베이징 왕푸.." width="220" height="168" />
                                                            <span class="title">파크 플라자 베이징 왕푸..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">청도</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=6140854&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">청도 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('431732');">
                                                            <img src="http://media.expedia.com/hotels/2000000/1930000/1922700/1922677/1922677_6_b.jpg" alt="칭다오 하우징 인터내셔.." width="220" height="168" />
                                                            <span class="title">칭다오 하우징 인터내셔..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.5.gif" alt="3.5성" width="85" height="16" /> 3.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">112,216원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('135416');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/70000/68900/68869/472ba79f_b.jpg" alt="샹그릴라 호텔, 칭다오" width="220" height="168" />
                                                            <span class="title">샹그릴라 호텔, 칭다오</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/5.0-25501-4.gif" alt="5.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('270818');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2150000/2149000/2148978/d88d447e_b.jpg" alt="인터컨티넨탈 칭다오" width="220" height="168" />
                                                            <span class="title">인터컨티넨탈 칭다오</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/5.0-25501-4.gif" alt="5.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('333587');">
                                                            <img src="https://i.travelapi.com/hotels/4000000/3050000/3048500/3048471/1d71fa2b_b.jpg" alt="르 메르디앙 칭다오" width="220" height="168" />
                                                            <span class="title">르 메르디앙 칭다오</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>

                                <!--//아시아 추천호텔-->
                                <h5 class="type2"><a href="#n">아시아</a></h5>
                                <div class="city_box">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">홍콩</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178263&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">홍콩 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('372210');">
                                                            <img src="https://i.travelapi.com/hotels/5000000/4250000/4247500/4247437/d49dd19f_b.jpg" alt="호텔 아이콘" width="220" height="168" />
                                                            <span class="title">호텔 아이콘</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/5.0-25501-4.gif" alt="5.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">156,422원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('256895');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1080000/1077400/1077325/045cefff_b.jpg" alt="더 럭스 매너" width="220" height="168" />
                                                            <span class="title">더 럭스 매너</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">174,088원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('311204');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2560000/2555500/2555419/d97219e5_b.jpg" alt="하버 그랜드 홍콩" width="220" height="168" />
                                                            <span class="title">하버 그랜드 홍콩</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">209,132원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('128121');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/30000/20900/20879/d1b54f14_b.jpg" alt="더 미라 홍콩 호텔" width="220" height="168" />
                                                            <span class="title">더 미라 홍콩 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">221,031원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">싱가포르</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=180027&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">싱가포르 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('372519');">
                                                            <img src="https://i.travelapi.com/hotels/5000000/4250000/4249400/4249364/025fc414_b.jpg" alt="오아시아 호텔 노비나, .." width="220" height="168" />
                                                            <span class="title">오아시아 호텔 노비나, ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">126,724원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('126334');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/6600/6594/3a31eabc_b.jpg" alt="팬 퍼시픽 싱가포르" width="220" height="168" />
                                                            <span class="title">팬 퍼시픽 싱가포르</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">177,480원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('355654');">
                                                            <img src="https://i.travelapi.com/hotels/4000000/3800000/3793100/3793036/18d32a08_b.jpg" alt="풀러턴 베이 호텔" width="220" height="168" />
                                                            <span class="title">풀러턴 베이 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">542,612원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('365891');">
                                                            <img src="https://i.travelapi.com/hotels/5000000/4020000/4018200/4018160/9a20953e_b.jpg" alt="파크 레지스 싱가포르" width="220" height="168" />
                                                            <span class="title">파크 레지스 싱가포르</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">144,697원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">방콕</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178236&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">방콕 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('392261');">
                                                            <img src="https://i.travelapi.com/hotels/5000000/4620000/4613300/4613201/b849fc65_b.jpg" alt="이스틴 그랜드 호텔 사톤" width="220" height="168" />
                                                            <span class="title">이스틴 그랜드 호텔 사톤</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">56,522원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('311257');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2560000/2559000/2558980/f5e55f30_b.jpg" alt="차트리움 호텔 리버사이.." width="220" height="168" />
                                                            <span class="title">차트리움 호텔 리버사이..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">117,883원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('389534');">
                                                            <img src="https://i.travelapi.com/hotels/5000000/4530000/4524000/4523909/7e7d2703_b.jpg" alt="SO 소피텔 방콕" width="220" height="168" />
                                                            <span class="title">SO 소피텔 방콕</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">233,081원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('311177');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2240000/2239700/2239673/0247d484_b.jpg" alt="소피텔 방콕 수쿰윗" width="220" height="168" />
                                                            <span class="title">소피텔 방콕 수쿰윗</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>

                                <!--//유럽 추천호텔-->
                                <h5 class="type3"><a href="#n">유럽</a></h5>
                                <div class="city_box">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">런던</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178279&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">런던 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('129345');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/14300/14264/cd9723ca_b.jpg" alt="이비스 런던 얼스 코트" width="220" height="168" />
                                                            <span class="title">이비스 런던 얼스 코트</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.5-25501-4.gif" alt="3.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">96,088원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('143566');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/17300/17246/b4e18378_b.jpg" alt="노보텔 런던 웨스트" width="220" height="168" />
                                                            <span class="title">노보텔 런던 웨스트</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('114409');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/200/179/bf41737b_b.jpg" alt="더 스트랜드 팰리스 호텔" width="220" height="168" />
                                                            <span class="title">더 스트랜드 팰리스 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('196716');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/800000/794100/794034/2203f0a1_b.jpg" alt="홀리데이 인 익스프레스 .." width="220" height="168" />
                                                            <span class="title">홀리데이 인 익스프레스 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">파리</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=179898&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">파리 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('188287');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/380000/374400/374356/5a8d9800_b.jpg" alt="시타딘 아파트호텔 생제.." width="220" height="168" />
                                                            <span class="title">시타딘 아파트호텔 생제..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">412,611원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('116982');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/17800/17725/4224fe33_b.jpg" alt="노보텔 파리 투어 에펠" width="220" height="168" />
                                                            <span class="title">노보텔 파리 투어 에펠</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.5-25501-4.gif" alt="3.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">378,698원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('163949');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/30000/28600/28577/81d7d37d_b.jpg" alt="오페라 카뎃 호텔" width="220" height="168" />
                                                            <span class="title">오페라 카뎃 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('194292');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/13800/13770/688961b3_b.jpg" alt="오텔 데 나시옹 상제르망" width="220" height="168" />
                                                            <span class="title">오텔 데 나시옹 상제르망</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">로마</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=179899&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">로마 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('253499');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1650000/1640200/1640194/055fdc01_b.jpg" alt="예스 호텔" width="220" height="168" />
                                                            <span class="title">예스 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">226,088원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('199694');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/810000/804300/804299/9016eab0_b.jpg" alt="그랜드 호텔 티베리오" width="220" height="168" />
                                                            <span class="title">그랜드 호텔 티베리오</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">113,044원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('203867');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/890000/885100/885041/4415189a_b.jpg" alt="래디슨 블루 에스 호텔, .." width="220" height="168" />
                                                            <span class="title">래디슨 블루 에스 호텔, ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.5-25501-4.gif" alt="3.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">284,871원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('262474');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1830000/1825400/1825372/a901f0c8_b.jpg" alt="크로스티 호텔" width="220" height="168" />
                                                            <span class="title">크로스티 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>

                                <!--//북미 추천호텔-->
                                <h5 class="type4"><a href="#n">북미</a></h5>
                                <div class="city_box">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">뉴욕</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178293&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">뉴욕 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('112922');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/19800/19768/83bf1411_b.jpg" alt="뉴욕 힐튼 미드타운" width="220" height="168" />
                                                            <span class="title">뉴욕 힐튼 미드타운</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">158,405원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('219433');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/800/758/e6c67431_b.jpg" alt="스튜어트 호텔" width="220" height="168" />
                                                            <span class="title">스튜어트 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">175,219원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('263234');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1590000/1580700/1580620/47238381_b.jpg" alt="홀리데이 인 익스프레스 .." width="220" height="168" />
                                                            <span class="title">홀리데이 인 익스프레스 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">182,166원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('150406');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/130000/129400/129325/c0282b80_b.jpg" alt="데이즈 호텔 바이 윈덤 .." width="220" height="168" />
                                                            <span class="title">데이즈 호텔 바이 윈덤 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star2.5.gif" alt="2.5성" width="85" height="16" /> 2.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.0-25501-4.gif" alt="3.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">90,436원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">로스앤젤레스</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178280&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">로스앤젤레스 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('121701');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/14600/14537/29db06f8_b.jpg" alt="미스터 C 베벌리 힐스" width="220" height="168" />
                                                            <span class="title">미스터 C 베벌리 힐스</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">397,915원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('112901');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/8000/7962/dbe3f5d1_b.jpg" alt="더 베벌리 힐튼" width="220" height="168" />
                                                            <span class="title">더 베벌리 힐튼</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">456,698원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('130405');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/1200/1115/74e7915f_b.jpg" alt="킴턴 호텔 팔로마르 로스.." width="220" height="168" />
                                                            <span class="title">킴턴 호텔 팔로마르 로스..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">569,742원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('196313');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/800000/790200/790158/fb0e2bb0_b.jpg" alt="로우스 할리우드 호텔" width="220" height="168" />
                                                            <span class="title">로우스 할리우드 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">샌프란시스코</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=178305&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">샌프란시스코 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('129368');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/30000/22400/22303/ba451360_b.jpg" alt="갤러리아 파크 호텔, 주.." width="220" height="168" />
                                                            <span class="title">갤러리아 파크 호텔, 주..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">269,045원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('117069');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/15800/15779/7c9ef817_b.jpg" alt="호텔 어브리 - 유니언 스.." width="220" height="168" />
                                                            <span class="title">호텔 어브리 - 유니언 스..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.5.gif" alt="3.5성" width="85" height="16" /> 3.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">130,001원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('107232');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/10600/10538/6d21ee5c_b.jpg" alt="홀리데이 인 골든 게이트.." width="220" height="168" />
                                                            <span class="title">홀리데이 인 골든 게이트..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.5.gif" alt="3.5성" width="85" height="16" /> 3.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">172,958원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('120243');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/8800/8737/773590e0_b.jpg" alt="샌프란시스코 메리어트 .." width="220" height="168" />
                                                            <span class="title">샌프란시스코 메리어트 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">175,691원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>

                                <!--//대양주 추천호텔-->
                                <h5 class="type5"><a href="#n">대양주</a></h5>
                                <div class="city_box">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">괌</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=6023599&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">괌 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('244585');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/30000/20900/20811/93e104fb_b.jpg" alt="힐튼 괌 리조트 &amp; 스파" width="220" height="168" />
                                                            <span class="title">힐튼 괌 리조트 &amp; 스파</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('129522');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/70000/65100/65084/adca5677_b.jpg" alt="더 웨스틴 리조트 괌" width="220" height="168" />
                                                            <span class="title">더 웨스틴 리조트 괌</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('171167');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/210000/200900/200841/373afb83_b.jpg" alt="아웃리거 괌 비치 리조트" width="220" height="168" />
                                                            <span class="title">아웃리거 괌 비치 리조트</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('133612');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/100/60/c6f6fd0e_b.jpg" alt="하얏트 리젠시 괌" width="220" height="168" />
                                                            <span class="title">하얏트 리젠시 괌</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">사이판</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=3251&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">사이판 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('9000784');">
                                                            <img src="http://manager.hanatour.com/app/asp/lodge/view_image.asp?company_code=C00002&amp;img_no=174315&amp;obj_img=image2" alt="퍼시픽 아일랜드 클럽 사.." width="220" height="168" />
                                                            <span class="title">퍼시픽 아일랜드 클럽 사..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.3-25501-4.gif" alt="4.3 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('106036');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/17200/17192/235ed10f_b.jpg" alt="하얏트 리젠시 사이판" width="220" height="168" />
                                                            <span class="title">하얏트 리젠시 사이판</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('401724');">
                                                            <img src="http://media.expedia.com/hotels/5000000/4900000/4895600/4895572/4895572_65_b.jpg" alt="마리아나 리조트 &amp; 스파" width="220" height="168" />
                                                            <span class="title">마리아나 리조트 &amp; 스파</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('223933');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1120000/1113600/1113599/2843991d_b.jpg" alt="피에스타 리조트 &amp; 스파 .." width="220" height="168" />
                                                            <span class="title">피에스타 리조트 &amp; 스파 ..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">시드니</h6>
                                            <a href="/Hotel/OverSeas/Avail/SingleList?CityCode=178312&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">시드니 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('106005');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/10000/2300/2220/5f7e9e90_b.jpg" alt="포시즌스 호텔 시드니" width="220" height="168" />
                                                            <span class="title">포시즌스 호텔 시드니</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('136573');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/30000/22600/22576/15f96b58_b.jpg" alt="파크로열 달링 하버, 시.." width="220" height="168" />
                                                            <span class="title">파크로열 달링 하버, 시..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('113092');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/20000/16900/16892/383a34ea_b.jpg" alt="힐튼 시드니" width="220" height="168" />
                                                            <span class="title">힐튼 시드니</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('187920');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/430000/425400/425333/c327bd81_b.jpg" alt="노보텔 시드니 달링 스퀘.." width="220" height="168" />
                                                            <span class="title">노보텔 시드니 달링 스퀘..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.5.gif" alt="4.5성" width="85" height="16" /> 4.5성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>

                                <!--//중동/아프리카 추천호텔-->
                                <h5 class="type6"><a href="#n">중동/아프리카</a></h5>
                                <div class="city_box">
                                        <div class="city_box_line">
                                            <h6 class="title_fontweight2">두바이</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=1079&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">두바이 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('246212');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/920000/911600/911528/5be3fa95_b.jpg" alt="노보텔 월드 트레이드 센.." width="220" height="168" />
                                                            <span class="title">노보텔 월드 트레이드 센..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('111598');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/920000/910200/910165/8f4d7d72_b.jpg" alt="하얏트 리젠시 두바이" width="220" height="168" />
                                                            <span class="title">하얏트 리젠시 두바이</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('343992');">
                                                            <img src="https://i.travelapi.com/hotels/4000000/3460000/3454800/3454761/66290978_b.jpg" alt="쉐라톤 몰 오브 더 에미.." width="220" height="168" />
                                                            <span class="title">쉐라톤 몰 오브 더 에미..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('197154');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/800000/796000/795905/f711ef2f_b.jpg" alt="두싯타니 두바이" width="220" height="168" />
                                                            <span class="title">두싯타니 두바이</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">0원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">요하네스버그</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=6051471&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">요하네스버그 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('328638');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/3000000/2994800/2994790/2ba44dd4_b.jpg" alt="다빈치 호텔 &amp; 스위트 온.." width="220" height="168" />
                                                            <span class="title">다빈치 호텔 &amp; 스위트 온..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">378,586원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('180680');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/440000/438500/438443/66447730_b.jpg" alt="포시즌 호텔 더 웨스트클.." width="220" height="168" />
                                                            <span class="title">포시즌 호텔 더 웨스트클..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">749,027원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('264303');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/120000/115700/115646/2ec9fa0d_b.jpg" alt="미스티 힐스 컨트리 호텔" width="220" height="168" />
                                                            <span class="title">미스티 힐스 컨트리 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">92,947원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('270722');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/530000/526800/526766/559d26fd_b.jpg" alt="서던 선 로즈뱅크" width="220" height="168" />
                                                            <span class="title">서던 선 로즈뱅크</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-25501-4.gif" alt="4.0 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">133,752원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                                                            <div class="city_box_line">
                                            <h6 class="title_fontweight2">케이프타운</h6>
                                            <a href="/Hotel/Sea/SingleList?CityCode=6046820&CheckIn=&CheckOut=&RoomCnt=1&PaxInfo=2^0^&Sort=R&PageNum=1" class="hotel_main_more">케이프타운 호텔 전체보기</a>
                                            <ul>
                                                    <li>
                                                        <a href="javascript:goDetail('229918');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/50000/46800/46797/aaf454ce_b.jpg" alt="빅토리아 &amp; 알프레드 호.." width="220" height="168" />
                                                            <span class="title">빅토리아 &amp; 알프레드 호..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star4.0.gif" alt="4.0성" width="85" height="16" /> 4.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">96,088원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('112187');">
                                                            <img src="https://i.travelapi.com/hotels/1000000/550000/545900/545852/928270a2_b.jpg" alt="래디슨 블루 호텔 워터프.." width="220" height="168" />
                                                            <span class="title">래디슨 블루 호텔 워터프..</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">188,784원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('309005');">
                                                            <img src="https://i.travelapi.com/hotels/3000000/2450000/2442800/2442736/18f8cecc_b.jpg" alt="원 앤 온리 케이프 타운" width="220" height="168" />
                                                            <span class="title">원 앤 온리 케이프 타운</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star5.0.gif" alt="5.0성" width="85" height="16" /> 5.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.5-25501-4.gif" alt="4.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">949,570원~</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:goDetail('276559');">
                                                            <img src="https://i.travelapi.com/hotels/2000000/1740000/1731200/1731157/f4c8f796_b.jpg" alt="레이디 해밀턴 호텔" width="220" height="168" />
                                                            <span class="title">레이디 해밀턴 호텔</span>
                                                            <span class="jg_hotel_star"><img src="/images/2013/hotel_jg/hg_star3.0.gif" alt="3.0성" width="85" height="16" /> 3.0성급</span>
                                                            <span class="jg_hotel_grade"><img src="http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.5-25501-4.gif" alt="3.5 점" width="118" height="20" /></span>
                                                            <span class="hotel_price">37,305원~</span>
                                                        </a>
                                                    </li>
                                            </ul>
                                        </div>
                                </div>
                            </div>
                        </div>
                    <!--//공지사항 1:1고객문의 해외호텔 상담전화-->
                    <div class="main_bot">
                        <div class="notice">
                            <h4 class="title_fontweight2">공지사항</h4>
                            <ul>
                                    <li><a href="javascript:FnBoardView('739', '3', '7');">&middot; 해외호텔 근무 시간 </a> </li>
                                    <li><a href="javascript:FnBoardView('659', '3', '7');">&middot; 일본호텔에 대한 숙박세 및 입욕세 현지부과 관련 안내</a> </li>
                            </ul>
                            <a href="/Board/BoardCommonList?MenuCode=11001&MasterSeq=3&CategorySeq=7&SearchType=1&SearchText=&PageIndex=1" class="more">공지사항 더보기</a>
                        </div>
                        <div class="mtom">
                            <h4 class="title_fontweight2">1:1 고객문의</h4>
                            <ul>
                                    <li><a href="javascript:FnNoReadAlert('N');">&middot; 취소 완료건 관련<span class="secret_magic_icon">비밀글</span></a>  </li>
                                    <li><a href="javascript:FnNoReadAlert('N');">&middot; 환불 관련<span class="secret_magic_icon">비밀글</span></a>  </li>
                                    <li><a href="javascript:FnBoardView('226283', '4', '12');">&middot; 포인트 사용</a>  </li>
                            </ul>
                            <a href="/Board/BoardCommonList?MenuCode=11002&MasterSeq=4&RegionName=&CategorySeq=12&SearchType=1&SearchText=&PageIndex=1" class="more">1:1문의사항 더보기</a>
                        </div>
                        <div class="counsel_tel">
                            <h4 class="title_fontweight2">해외호텔 상담전화</h4>
                            <p class="title_fontweight2"><span>02-</span>2185-2691</p>
                            <dl class="dl0">
                                <dt>상담메일</dt>
                                <dd>hotel@verygoodtour.com</dd>
                            </dl>
                            
                        </div>
                    </div>
                </form>
            </div><!--jg_contents end-->

            <script type="text/javascript">
                $(function () {
                    //슬라이드 이미지 배너
                    var hotel_banner_inter;
                    var hotel_banner_num = 0;
                    var hotel_banner_max = $("#jg_main_banner0 .banner_top ul li").size();
                    var hotel_banner_delay = 4000;
                    var toggle_count = 0;
                    var stop_count = 0;
                    function _hotel_banner_inter() {
                        if (hotel_banner_num > hotel_banner_max - 2) {
                            hotel_banner_num = 0;
                        } else {
                            hotel_banner_num++;
                        }
                        $("#jg_main_banner0 .banner_top .page_now").text(hotel_banner_num + 1);
                        $("#jg_main_banner0 .banner_top ul li").each(function (num) {
                            if (num == hotel_banner_num) {
                                $("#jg_main_banner0 .banner_top ul li:eq(" + num + ")").css({ zIndex: 2 }).animate({ opacity: 1 }, 200).dequeue();
                            } else {
                                $("#jg_main_banner0 .banner_top ul li:eq(" + num + ")").css({ zIndex: 1 }).animate({ opacity: 0 }, 200).dequeue();
                            }
                        });
                    };

                    $("#jg_main_banner0 .banner_top .page_total").text(hotel_banner_max);
                    $("#jg_main_banner0 .banner_top ul li:eq(0)").addClass("select");
                    hotel_banner_inter = setInterval(_hotel_banner_inter, hotel_banner_delay);
                    $("#jg_main_banner0 .banner_top ul li a").bind("focus mouseenter", function () {
                        clearInterval(hotel_banner_inter);
                        hotel_banner_num = $(this).parent().index();
                        $("#jg_main_banner0 .banner_top .page_now").text(hotel_banner_num + 1);
                        $("#jg_main_banner0 .banner_top ul li").each(function (num) {
                            if (num == hotel_banner_num) {
                                $("#jg_main_banner0 .banner_top ul li:eq(" + num + ")").css({ zIndex: 2 }).animate({ opacity: 1 }, 200).dequeue();
                            } else {
                                $("#jg_main_banner0 .banner_top ul li:eq(" + num + ")").css({ zIndex: 1 }).animate({ opacity: 0 }, 200).dequeue();
                            }
                        });
                    }).bind("mouseleave blur", function () {
                        clearInterval(hotel_banner_inter);
                        if (stop_count == 0) {
                            hotel_banner_inter = setInterval(_hotel_banner_inter, hotel_banner_delay);
                        }
                    });
                    $(".banner_control_box .ctr_l_bt a").bind("click", function () {
                        if (hotel_banner_num < 1) {
                            hotel_banner_num = hotel_banner_max - 1;
                        } else {
                            hotel_banner_num--;
                        }
                        $("#jg_main_banner0 .banner_top .page_now").text(hotel_banner_num + 1);
                        $("#jg_main_banner0 .banner_top ul li").each(function (num) {
                            if (num == hotel_banner_num) {
                                $("#jg_main_banner0 .banner_top ul li:eq(" + num + ")").css({ zIndex: 2 }).animate({ opacity: 1 }, 200).dequeue();
                            } else {
                                $("#jg_main_banner0 .banner_top ul li:eq(" + num + ")").css({ zIndex: 1 }).animate({ opacity: 0 }, 200).dequeue();
                            }
                        });
                    }).bind("mouseenter focus", function () {
                        clearInterval(hotel_banner_inter);
                    }).bind("mouseleave blur", function () {
                        clearInterval(hotel_banner_inter);
                        if (stop_count == 0) {
                            hotel_banner_inter = setInterval(_hotel_banner_inter, hotel_banner_delay);
                        }
                    });
                    $(".banner_control_box .ctr_r_bt a").bind("click", function () {
                        if (hotel_banner_num > hotel_banner_max - 2) {
                            hotel_banner_num = 0;
                        } else {
                            hotel_banner_num++;
                        }
                        $("#jg_main_banner0 .banner_top .page_now").text(hotel_banner_num + 1);
                        $("#jg_main_banner0 .banner_top ul li").each(function (num) {
                            if (num == hotel_banner_num) {
                                $("#jg_main_banner0 .banner_top li:eq(" + num + ")").css({ zIndex: 2 }).animate({ opacity: 1 }, 200).dequeue();
                            } else {
                                $("#jg_main_banner0 .banner_top li:eq(" + num + ")").css({ zIndex: 1 }).animate({ opacity: 0 }, 200).dequeue();
                            }
                        });
                    }).bind("mouseenter focus", function () {
                        clearInterval(hotel_banner_inter);
                    }).bind("mouseleave blur", function () {
                        clearInterval(hotel_banner_inter);
                        if (stop_count == 0) {
                            hotel_banner_inter = setInterval(_hotel_banner_inter, hotel_banner_delay);
                        }
                    });
                    $("#jg_main_banner0 .banner_top .ctr_s_bt a").bind("click", function () {
                        if (toggle_count % 2 == 0) {
                            $(this).addClass("stop").find(".hide_tx").text("배너재생");
                            clearInterval(hotel_banner_inter);
                            stop_count = 1;
                        } else if (toggle_count % 2 == 1) {
                            $(this).removeClass("stop").find(".hide_tx").text("배너멈춤");
                            hotel_banner_inter = setInterval(_hotel_banner_inter, hotel_banner_delay);
                            stop_count = 0;
                        };
                        toggle_count++;
                    });

                    //도시별추천호텔 메뉴 클릭
                    var city_num = 0;
                    $("#main_city_recommend h5").bind("click", function () {
                        city_num = $("#main_city_recommend h5").index(this);
                        $("#main_city_recommend h5").removeClass("select");
                        $(this).addClass("select");
                        $("#main_city_recommend .city_box").removeClass("select");
                        $("#main_city_recommend .city_box").eq(city_num).addClass("select");
                    });
                })
            </script>
            <!--저스트고 끝-->
        </div>

    </div><!--// sub_contents -->
</div>
<!--// main contents -->

<div id="citySearchHotel" class="pop_wrap2 layer_pop">
    <div class="vgtSearchWrap vgtCitySearch">
        <h6>도시명</h6>
        <div class="vgtSearch">
            <label for="search_bar2" class="hide">도시명</label>
            <input id="search_bar2" class="vgtSearchBar" value="" type="text" maxlength="50">
            <a href="javascript:void(0);" class="vgtSearchBtn">검색</a>
        </div>
    </div>
    <!-- <p class="fs14 ta_c mt10">한글, 영문, 도시코드, 국가명으로 검색하실 수 있어요 <span class="fc_gray">(예 : 도쿄, Newyork, hkg, 프랑스)</span></p> -->
    <!-- 검색결과 있음 -->
    <div id="hasresult" class="city_search_result" style="display:none">
        <p class="result_txt">총 <span class="fc_sky">(<span id="resultCnt">2</span>)건</span>의 검색 결과가 있습니다.</p>
        <ul id="result_list" class="result_list">
        </ul>
    </div>
    <!--// 검색결과 있음  -->
    <!-- 검색결과 없음 -->
    <div id="noresult" class="txt_box city_search_result no_result" style="display:none">
        <i class="ico_notice_g"></i>
        <p class="mt20">검색 결과가 없습니다.<br>검색어를 확인하신 후 다시 검색 해주세요.</p>
    </div>
    <!--// 검색결과 없음 -->
    <div class="line10">
        <h5 class="alter">주요도시목록</h5>
        <div class="accordion_wrap city_list">
            <ul>
                <li class="">
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">일본</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('179900', '도쿄');">도쿄</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('179897', '오사카');">오사카</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('1265', '후쿠오카');">후쿠오카</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('10805', '오키나와');">오키나와</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6054145', '삿포로');">삿포로</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">아시아</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6049857', '세부');">세부</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6046393', '푸켓');">푸켓</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('602651', '발리');">발리</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178282', '마닐라');">마닐라</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('1428', '하노이');">하노이</a></li>

                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178262', '호치민시');">호치민시</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('602', '코타키나발루');">코타키나발루</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('180008', '쿠알라룸푸르');">쿠알라룸푸르</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">중국</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('180026', '상해');">상해</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178237', '북경');">북경</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6048917', '청도');">청도</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('771', '광주');">광주</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6046792', '심천');">심천</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">유럽</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('179898', '파리');">파리</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178279', '런던');">런던</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('179899', '로마');">로마</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178320', '로마');">취리히</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178267', '이스탄불');">이스탄불</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178316', '비엔나');">비엔나</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('180014', '프라하');">프라하</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('179894', '프랑크푸르트');">프랑크푸르트</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178229', '암스테르담');">암스테르담</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">미주</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178307', '시애틀');">시애틀</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178280', 'LA');">LA</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178305', '샌프란시스코');">샌프란시스코</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178239', '보스턴');">보스턴</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178276', '라스베이거스');">라스베이거스</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178318', '워싱턴DC');">워싱턴DC</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178293', '뉴욕');">뉴욕</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178239', '보스턴');">보스턴</a></li>

                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('180074', '호놀룰루(하와이)');">호놀룰루(하와이)</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178294', '올랜도');">올랜도</a></li>

                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178315', '벤쿠버');">벤쿠버</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">대양주</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6023599', '괌');">괌</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('3251', '괌');">사이판</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178312', '시드니');">시드니</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178233', '오클랜드');">오클랜드</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">중동</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('1079', '두바이');">두바이</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('6053838', '아부다비');">아부다비</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="accordion_tit">
                        <div class="accordion_tit_wrap">
                            <a href="#none" class="btn_accordion">캐나다</a>
                        </div>
                    </div>
                    <div class="accordion_con">
                        <ul class="city_detail">
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178315', '벤쿠버');">벤쿠버</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178245', '캘커리');">캘커리</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('180002', '에드먼턴');">에드먼턴</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178315', '위니팩');">위니팩</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178296', '오타와');">오타와</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178314', '토론토');">토론토</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('180017', '퀘벡');">퀘벡</a></li>
                            <li><a href="javascript:void(0);" onclick="javascript: selectedCity('178288', '몬트리올');">몬트리올</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
            <script>
                //$(function () {
                //    $(".accodion_btn").click(function () {
                //        if ($(this).parents('.accodion_box').hasClass('open')) {
                //            $(this).parents('dl').removeClass('open');
                //        } else {
                //            $(this).parents('dl').addClass('open').siblings().removeClass('open');
                //        }
                //    });
                //});
            </script>
        </div>
    </div>
</div>

<script>
    function selectedCity(code, name) {
        setTimeout("eval(parent.jgQuickSearchCityPopSelected('" + code + "','" + name + "'))", 100);
    }
    function requestSearch(keyword) {
        $.ajax({
            url: "/Hotel/Sea/SelectCityByName?keyword=" + SpecialCharacterReplace(keyword),
            dataType: "json",
            type: "POST",
            contentType: "application/json; charset=utf-8",
            success: function (res) {
                if (res.length > 0) {
                    $('#noresult').hide();
                    $('#hasresult').show();

                    $('#resultCnt').html(res.length);
                    generateList(keyword, res);
                } else {
                    setTimeout(function () {
                        $('#noresult').show();
                        $('#hasresult').hide();
                    }, 200)
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                if (errorThrown != "") {
                    alert(errorThrown);
                }
            }
        });
    }
    function SpecialCharacterReplace(str) {
        str = str.replace(/\\/g, "");
        str = str.replace(/'/g, "&#39;");

        return str;
    }
    function highlight(s, t) {
        return s.replace(t, '<span class="fc_sky">' + t + '</span>');
    }
    function generateList(keyword, list) {
        var resultHTML = "";
        for (var i = 0; i < list.length; i++) {
            var item = list[i];
            resultHTML += "<li><a href='javascript:void(0);' onclick='selectedCity(\"" + item.CityCode + "\",\"" + item.CityName + "\")'>" + highlight(item.CityName, keyword) + "</a></li>";
        }

        $('#result_list').html(resultHTML);
    }
    $(function () {
        $('#search_bar2').keyup(function () {

            if (event.keyCode == 13) {
                var keyword = $(this).val();
                if (keyword != "") {
                    requestSearch(keyword);
                } else {
                    $('#noresult').hide();
                    $('#hasresult').hide();
                }
            }

        });
    });
</script>
        </div>
		</div>
	</div>		
		
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>