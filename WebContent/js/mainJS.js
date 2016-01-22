function logincheak(form_1) {
	var id = document.login.id.value;
	var pw = document.login.pass.value;

	if (id == "") {
		alert("아이디를 입력해주세요.");
		document.login.id.focus();
	} else {
		if (pw == "") {
			alert("암호를 입력하세요.");
			document.login.pass.focus();
		} else {
			form_1.submit();
		}
	}
}

var join_Cheak;

function join_ID_Cheak(join_id) {
	if (document.join.id.value == "") {
		alert("아이디를 입력하세요.");
		document.join.id.focus();
		return;
	}

	// url 생성 / get방식으로 ctr접근 할 수 있는 페이지 생성.
	url = "main.do?reqview=cheakid&id=" + document.join.id.value;

	// 새로운 윈도우를 엽니다.
	open(
			url,
			"confirm",
			"toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");

}

var id_cheak_ok;

function join_id_cheak_ok() {
	id_cheak_ok = 1;
	close();
}
