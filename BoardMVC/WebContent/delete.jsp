<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${deleteCnt > 0}">
			<script type="text/javascript">
				alert(${idx}+"번 글이 삭제되었습니다.");
				history.go(-1);
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert(${idx}+"번 글의 삭제에 실패하였습니다.");
				history.go(-1);
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>