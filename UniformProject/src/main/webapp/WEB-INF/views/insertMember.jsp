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
<title>ȸ������ ó��</title>
</head>
<body>
	<jsp:useBean id="loginInfo" class="com.common.dao.LoginInfo" />
	<jsp:setProperty property="*" name="loginInfo" />
	<script type="text/javascript">
		JoinMemberDAO dao = JoinMemberDAOImpl.getInstance();

		// ȸ�������� ����ִ� memberBean�� dao�� insertMember() �޼���� �ѱ��.
		// insertMember()�� ȸ�� ������ JSP_MEMBER ���̺� �����Ѵ�.
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

		// ȸ�������� ����ִ� memberBean�� dao�� insertMember() �޼���� �ѱ��.
		// insertMember()�� ȸ�� ������ JSP_MEMBER ���̺� �����Ѵ�.
		dao.insertMember(loginInfo);
		</script>
	--%>

	<div id="wrap">
		<br>
		<br> <b><font size="5" color="gray">ȸ������ ������ Ȯ���ϼ���.</font></b> <br>
		<br> <font color="blue"><%=loginInfo.getName()%></font>�� ������
		���ϵ帳�ϴ�. <br>
		<br>

		<%-- login���� �Էµ� ���� �����Ѵ�. --%>
		<table>
			<tr>
				<td id="title">���̵�</td>
				<td><%=loginInfo.getId()%></td>
			</tr>

			<tr>
				<td id="title">��й�ȣ</td>
				<td><%=loginInfo.getPassword()%></td>
			</tr>

			<tr>
				<td id="title">�̸�</td>
				<td><%=loginInfo.getName()%></td>
			</tr>

			<tr>
				<td id="title">�޴���ȭ</td>
				<td><%=loginInfo.getPhone()%></td>
			</tr>
		</table>

		<br> <input type="button" value="Ȯ��" onclick="goLogin()">
	</div>

</body>
</html>