<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.common.dao.FormInfo"%>
<%-- DAO import --%>
<%@ page import="com.common.dao.SubmitFormDAO"%>
<%@ page import="com.common.dao.SubmitFormDAOImpl"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>클래스 신청 확인</title>
</head>
<body>
	<jsp:useBean id="formInfo" class="com.common.dao.FormInfo" />
	<jsp:setProperty property="*" name="formInfo" />
	<script type="text/javascript">
		//JoinMemberDAO dao = JoinMemberDAOImpl.getInstance();
		SubmitFormDAO dao = SubmitFormDAOIMpl.getInstance();

		// 회원정보를 담고있는 memberBean을 dao의 insertMember() 메서드로 넘긴다.
		// insertMember()는 회원 정보를 JSP_MEMBER 테이블에 저장한다.
		//dao.insertMember(loginInfo);
		dao.insertForm(formInfo);
	</script>
		
	<script type="text/javascript">
		function goMain() {
			location.href = "/";
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
		<br> <b><font size="5" color="gray">클래스 신청 정보를 확인하세요.</font></b> <br>
		<br> <font color="blue"><%=formInfo.getName()%></font>님 신청 정보 <br>
		<br>

		<%-- login에서 입력된 값을 추출한다. --%>
		<table>
			<tr>
				<td id="title">신청자 이름</td>
				<td><%=formInfo.getName()%></td>
			</tr>

			<tr>
				<td id="title">메일주소</td>
				<td><%=formInfo.getMail()%></td>
			</tr>

			<tr>
				<td id="title">전화번호</td>
				<td><%=formInfo.getTel()%></td>
			</tr>

			<tr>
				<td id="title">클래스 시간</td>
				<td><%=formInfo.getClass_time()%></td>
			</tr>
			
			<tr>
				<td id="title">인원</td>
				<td><%=formInfo.getMember()%></td>
			</tr>
			
			<tr>
				<td id="title">요청사항</td>
				<td><%=formInfo.getMemo()%></td>
			</tr>
		</table>

		<br> <input type="button" value="확인" onclick="goMain()">
	</div>

</body>
</html>