/**
 * 
 */
function infoWriter() {
	if (document.wr_form.title.value == "") {
		alert("제목을 입력하세요.");
		document.wr_form.title.focus();

		return;
	}
	if (document.wr_form.content.value == "") {
		alert("내용을 입력하세요.");
		document.wr_form.content.focus();

		return;
	}
	document.wr_form.submit();
}