/* 여행 포토 등록 사진 추가 & 삭제 */
$(document).ready(function() {
	
	//파일 삭제
	var formObj = $("form[name='add']");
	$(document).on("click","#fileDel", function() {
		$(this).parent().remove();
	})
	
	//파일 추가
	fn_addFile();
	
})

/* 여행 포토 등록 수정 */
$(document).ready(function() {
	
	//파일 삭제
	var formObj = $("form[name='travelphotoUpdate']");
	$(document).on("click","#fileDel", function() {
		$(this).parent().remove();
	})
	
	//파일 추가
	fn_addFile();
})

/* 파일 추가 */
function fn_addFile() {
	var fileIndex = 1;
	
	$("#fileAdd_btn").on("click", function() {
        $("#fileIndex").append("<div><input type='file' style='float:left;' name='file" + (fileIndex++) + "'>" + "</button>" + "<button type='button' style='margin-left:576px;' id='fileDelBtn'>" + "삭제" + "</button></div>");
    });
}

var fileNoArry = new Array();
var fileNameArry = new Array();
	
function fn_del(value, name){
	fileNoArry.push(value);
	fileNameArry.push(name);
	$("#fileNoDel").attr("value", fileNoArry);
	$("#fileNameDel").attr("value", fileNameArry);
}