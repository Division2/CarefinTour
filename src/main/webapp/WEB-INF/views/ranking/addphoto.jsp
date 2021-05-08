<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	
	<div class="container">
		<div class="d-flex">
			<h1>여행 포토 등록</h1>
		</div>
		<hr>
		<form action="/ex/gaza" method="POST">
        <div class="form-group row">
            <label for="title" class="form-label col-sm-2"><strong>제목</strong></label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="title" name="title">
            </div>
        </div>
        <div class="form-group row">
            <label for="author" class="form-label col-sm-2"><strong>작성자</strong></label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="author" name="name">
            </div>
        </div>
        <div class="form-group row">
            <label for="content" class="form-label col-sm-2"><strong>내용</strong></label>
            <div class="col-sm-10">
                <textarea class="form-control" id="content" name="content" rows="5"></textarea>
            </div>
        </div>
         <div class="form-group row">
            <label for="file" class="form-label col-sm-2"><strong>첨부 파일</strong></label>
            <div class="col-sm-10">
                <div class="custom-file" id="file">
                    <input type="file" class="custom-file-input" id="image" name="image">
                    <label class="custom-file-label" for="customFile">파일 입력</label>
                </div>
            </div>
            	<script>
			            $('input[type=file]').on('change',function(){
			
			    if(window.FileReader){
			
			      var filename = $(this)[0].files[0].name;
			
			    } else {
			
			      var filename = $(this).val().split('/').pop().split('\\').pop();
			
			    }
			
			    $(this).siblings('label').text(filename);
			
			  });
			</script>
        </div>
        <div class="row">
            <div class="col-auto mr-auto"></div>
            <div class="col-auto">
                <input class="btn btn-primary" type="submit" value="글쓰기">
            </div>
        </div>
        </form>
	</div>
	
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>