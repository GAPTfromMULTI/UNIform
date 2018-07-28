<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.common.dao.LoginInfo"%>
<%-- DAO import --%>
<%@ page import="com.common.dao.JoinMemberDAO"%>
<%@ page import="com.common.dao.JoinMemberDAOImpl"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 처리</title>
</head>
<body>
	<jsp:useBean id="loginInfo" class="com.common.dao.LoginInfo" />
	<jsp:setProperty property="*" name="loginInfo" />
	<script type="text/javascript">
		JoinMemberDAO dao = JoinMemberDAOImpl.getInstance();

		// 회원정보를 담고있는 memberBean을 dao의 insertMember() 메서드로 넘긴다.
		// insertMember()는 회원 정보를 JSP_MEMBER 테이블에 저장한다.
		dao.insertMember(loginInfo);
	</script>
		
	<script type="text/javascript">
		function goLogin() {
			location.href = "/login";
		}
	</script>
	<%--
	<script>
	JoinMemberDAO dao = JoinMemberDAOImpl.getInstance();

		// 회원정보를 담고있는 memberBean을 dao의 insertMember() 메서드로 넘긴다.
		// insertMember()는 회원 정보를 JSP_MEMBER 테이블에 저장한다.
		dao.insertMember(loginInfo);
		</script>
	--%>

	<div id="wrap">
		<br>
		<br> <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b> <br>
		<br> <font color="blue"><%=loginInfo.getName()%></font>님 가입을
		축하드립니다. <br>
		<br>

		<%-- login에서 입력된 값을 추출한다. --%>
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><%=loginInfo.getId()%></td>
			</tr>

			<tr>
				<td id="title">비밀번호</td>
				<td><%=loginInfo.getPassword()%></td>
			</tr>

			<tr>
				<td id="title">이름</td>
				<td><%=loginInfo.getName()%></td>
			</tr>

			<tr>
				<td id="title">휴대전화</td>
				<td><%=loginInfo.getPhone()%></td>
			</tr>
		</table>

		<br> <input type="button" value="확인" onclick="goLogin()">
	</div>

</body>
</html>