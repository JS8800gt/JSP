<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 페이지</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<!-- 나이를 입력받고 만 나이로 계산하여 이름 밑에 출력, 만 나이는 그냥 -1로 처리한다. -->
<!-- 성별 남자, 여자, 선택안함 세 가지 radio 버튼을 구현한 뒤 나이 밑에 성별 출력 -->
	<form action="Hello" method="post">
		<input type="text" name="userName" placeholder="이름">
		<input type="text" name="userAge" placeholder="나이">
		<label> 남자</label>
		<input type="radio" name="gender" value="남자">
		<label>여자</label>
		<input type="radio" name="gender" value="여자">
		<label>선택안함</label> 
		<input type="radio" name="gender" value="선택안함">
		<button>전송</button>
	</form>

	<h2><%=request.getAttribute("userName")%></h2>
	<h2><%=request.getAttribute("userAge")%></h2>
	<h2><%=request.getAttribute("gender")%></h2>
	
<jsp:include page="footer.jsp"/>
</body>
</html>