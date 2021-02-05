<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>웹개발 메모장 : 자바스크립트 : 다음 우편번호 검색 초간단 예제</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=addr1]').val(data.address);
		}
	}).open();
}
</script>
</head>
<body>

<!-- 예제 시작 -->

우편번호 : <input type="text" name="zip" style="width:80px; height:26px;" />
<button type="button" style="width:60px; height:32px;" onclick="openZipSearch()">검색</button><br>
주소 : <input type="text" name="addr1" style="width:300px; height:30px;"/><br>

<!-- 예제 종료 -->

</body>
</html>