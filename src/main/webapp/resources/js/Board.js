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
					var auth = getParameterByName('auth');
					
					location.href='noticeDelete?nId=' + nId + '&auth=' + auth;
					location.href='notice'
				}
			});
		}
	})
}

/* 1:1문의 등록 유효성 검사 */
function InquiryWrite() {
	var Name = $("#Name").val();
	var Phone = $("#Phone").val();
	var Title = $("#Title").val();
	var Content = $("#Content").val();
	
	if(!Name) {
		swal({
			title: "1:1 문의",
			text: "제목이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Phone) {
		swal({
			title: "1:1 문의",
			text: "휴대폰 번호가 입력되지 않았습니다.",
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