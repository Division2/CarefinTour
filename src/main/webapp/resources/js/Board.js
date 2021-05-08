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
	$( "#NoticeWrite").submit();
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
	$( "#NoticeModify").submit();
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
		confirmButtonText: '승인',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			Swal.fire('공지사항', '게시물이 삭제되었습니다.', 'success')
		}
	})
}