/* 공지사항 등록 유효성 검사 */
function NoticeWrite() {
	var Title = $("#Title").val();
	var Content = $("#Content").val();
	
	if(!Title) {
		swal({
			title: "공지사항",
			text: "제목이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Content) {
		swal({
			title: "공지사항",
			text: "내용이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	if($("#Important_CheckBox").is(":checked") == true) {
		$("#Important").val("Y");
	}
	else {
		$("#Important").val("N");
	}
	$("#NoticeBoardWrite").submit();
}

/* 공지사항 수정 유효성 검사 */
function NoticeModify() {
	var Title = $("#Title").val();
	var Content = $("#Content").val();
	
	if(!Title) {
		swal({
			title: "공지사항",
			text: "제목이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Content) {
		swal({
			title: "공지사항",
			text: "내용이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else {
		if($("#Important_CheckBox").is(":checked") == true) {
			$("#Important").val("Y");
		}
		else {
			$("#Important").val("N");
		}
		Swal.fire({
			title: '공지사항',
			text: "정말 수정하시겠습니까?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '확인',
			cancelButtonText: '취소'
		}).then((result) => {
			if (result.isConfirmed) {
				swal({
					title: "공지사항",
					text: "게시물이 수정되었습니다.",
					icon: "success",
					buttons : {
						confirm : {
							value : true
						}
					}
				}).then((result) => {
					if(result) {
						$("#NoticeBoardModify").submit();
					}
				});
			}
		})
	}
}

//jquery 파라미터 값 받아오기
function getParameterByName(name) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
	return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

/* 공지사항 삭제 comfirm */
function NoticeDelete() {
	Swal.fire({
		title: '공지사항',
		text: "정말 삭제하시겠습니까?",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '확인',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			swal({
				title: "공지사항",
				text: "게시물이 삭제되었습니다.",
				icon: "success",
				buttons : {
					confirm : {
						value : true
					}
				}
			}).then((result) => {
				if(result) {
					var nId = getParameterByName('nId');
					
					location.href='noticeDelete?nId=' + nId;
					location.href='notice'
				}
			});
		}
	})
}

/* 1:1문의 등록 유효성 검사 */
function InquiryWrite() {
	var Category = $("#Category option:selected").val();
	var Title = $("#Title").val();
	var Content = $("#Content").val();
	
	if(Category == 'null') {
		swal({
			title: "1:1 문의",
			text: "카테고리가 선택되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Title) {
		swal({
			title: "1:1 문의",
			text: "제목이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Content) {
		swal({
			title: "1:1 문의",
			text: "내용이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	$("#InquiryBoardWrite").submit();
}

/* 1:1문의 답변 등록 유효성 검사, ajax 등록 */
$(document).ready(function() {
	$('#btnInquiryAnswerWrite').click(function() {
		var answerContent = $("#answerContent").val();
		var param = {'answerContent':$("#answerContent").val(), 'iId': $("#iId").val()};
		
		if(!answerContent) {
			swal({
				title: "1:1 문의",
				text: "답변 글이 작성되지 않았습니다.",
				icon: "warning",
				timer: 3000
			});
			return false;
		}
		else {
			$.ajax({
				url: "inquiryAnswerWrite",
				type: "POST",
				data: param,
				success: function(data) {
					if (data != 1) {
						swal({
							title: "1:1 문의",
							text: "답변 등록이 실패하였습니다.",
							icon: "error",
							timer: 3000
						});
					}
					else {
						swal({
							title: "1:1 문의",
							text: "답변이 성공적으로 등록되었습니다.",
							icon: "success",
							buttons : {
								confirm : {
									value : true
								}
							}
						}).then((result) => {
							if(result) {
								location.reload();
							}
						});
					}
				},
				error: function() {
					swal({
						title: "로그인",
						text: "문제가 발생하였습니다.\n잠시 후 다시 시도해주세요.",
						icon: "error",
						timer: 3000
					});
				}
			});
		}
	})
})

/* 1:1문의 수정 유효성 검사 */
function InquiryModify() {
	var AnswerEditContent = $("#answerEditContent").val();
	
	if(!AnswerEditContent) {
		swal({
			title: "1:1 문의",
			text: "내용이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else {
		Swal.fire({
			title: '1:1 문의',
			text: "정말 수정하시겠습니까?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '확인',
			cancelButtonText: '취소'
		}).then((result) => {
			if (result.isConfirmed) {
				swal({
					title: "공지사항",
					text: "게시물이 수정되었습니다.",
					icon: "success",
					buttons : {
						confirm : {
							value : true
						}
					}
				}).then((result) => {
					if(result) {
						$("#AnswerContentModify").submit();
					}
				});
			}
		})
	}
}

/* 1:1문의 삭제 comfirm */
function answerInquiryDelete() {
	Swal.fire({
		title: '1:1 문의',
		text: "정말 삭제하시겠습니까?",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '확인',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			swal({
				title: "1:1 문의",
				text: "답변이 성공적으로 삭제되었습니다.",
				icon: "success",
				buttons : {
					confirm : {
						value : true
					}
				}
			}).then((result) => {
				if(result) {
					var iId = getParameterByName('iId');
					
					location.href='inquiryDelete?iId=' + iId;
					location.href='inquiryView?iId=' + iId;
				}
			});
		}
	})
}