
/*여행 후기 등록 유효성검산*/
	function Write() {
		var Title = $("#Title").val();
		var Content = $("#Content").val();
		
		if(!Title) {
			swal({
				title: "제목입력",
				text: "제목이 입력되지 않았습니다.",
				icon: "warning",
				timer: 3000
			});
			return false;
		}
		else if(!Content) {
			swal({
				title: "내용입력",
				text: "내용이 입력되지 않았습니다.",
				icon: "warning",
				timer: 3000
			});
			return false;
		}else {
			Swal.fire({
				title: '등록',
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
						title: '여행후기',
						text: "여행후기 가 입력 되었습니다.",
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