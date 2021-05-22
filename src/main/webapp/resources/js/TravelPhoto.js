/*여행 후기 등록 유효성 검사*/
function Write() {
	var Title = $("#Title").val();
	var Content = $("#Content").val();
	
	if(!Title) {
		swal({
			title: "여행포토",
			text: "제목이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Content) {
		swal({
			title: "여행포토",
			text: "내용이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else {
		Swal.fire({
			title: '여행포토',
			text: "정말 등록하시겠습니까?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '확인',
			cancelButtonText: '취소'
		}).then((result) => {
			if (result.isConfirmed) {
				swal({
					title: '여행포토',
					text: "게시글이 성공적으로 등록되었습니다.",
					icon: "success",
					buttons : {
						confirm : {
							value : true
						}
					}
				}).then((result) => {
					if(result) {
						$("#add").submit();
					}
				});
			}
		})
	}		
}
	
/*여행 후기 등록 유효성검산*/
function Modify() {
	var Title = $("#Title").val();
	var Content = $("#Content").val();
	
	if(!Title) {
		swal({
			title: "여행포토",
			text: "제목이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else if(!Content) {
		swal({
			title: "여행포토",
			text: "내용이 입력되지 않았습니다.",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
	else {
		Swal.fire({
			title: '여행포토',
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
					title: '여행포토',
					text: "게시글이 성공적으로 수정되었습니다.",
					icon: "success",
					buttons : {
						confirm : {
							value : true
						}
					}
				}).then((result) => {
					if(result) {
						$("#modify").submit();
					}
				});
			}
		})
	}		
}