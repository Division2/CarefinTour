ClassicEditor.create(document.querySelector('#TravelContent'))
	.then(editor => {
		console.log(editor);
	})
	.catch(error => {
		console.error(error);
	});