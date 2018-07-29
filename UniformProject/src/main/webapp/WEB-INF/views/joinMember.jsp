<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin - Start Bootstrap Template</title>
<!-- Bootstrap core CSS-->
<link
	href="${pageContext.request.contextPath}/resources/vendor_join/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/resources/vendor_join/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin.css"
	rel="stylesheet">

</head>

<body class="bg-dark">
	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">Register an Account</div>
			<div class="card-body">
				<form class="form col-md-12 center-block"
					action="<%=request.getContextPath()%>/join/insertMember"
					name="userInfo">
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<label for="exampleInputName">Name</label> <input type="text"
									class="form-control input-lg" name="name" placeholder="name">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">ID</label> <input type="text"
							class="form-control input-lg" name="id" placeholder="id">
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control input-lg" name="password"
									placeholder="password">
							</div>
							<div class="col-md-6">
								<label for="exampleConfirmPassword">Confirm password</label> <input
									type="password" class="form-control input-lg"
									name="passwordCheck" placeholder="password">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Phone</label> <input type="int"
							class="form-control input-lg" name="phone" placeholder="phone">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Type</label> <input type="text"
							class="form-control input-lg" name="type" placeholder="type">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block" onclick="checkValue()">Register</button>
					</div>
					<!--<input type="submit" value="Register" onclick="checkValue()">
					<!-- <a class="btn btn-primary btn-block" href="/join/insertMember">Register</a>
				 -->
				</form>
				<div class="text-center">
					<input type="button" value="Login Page" onclick="goLoginForm()">
					<!--<a class="d-block small mt-3" href="/">Login Page</a>
					 <a class="d-block small" href="forgot-password.html">Forgot Password?</a> -->
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script
		src="<c:url value="resources/vendor_join/jquery/jquery.min.js"/>"></script>
	<script
		src="<c:url value="resources/vendor_join/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value="resources/vendor_join/jquery-easing/jquery.easing.min.js"/>"></script>

	<script type="text/javascript">
		// 필수 입력정보인 아이디, 비밀번호, 이름이 입력되었는지 확인하는 함수
		function checkValue() {
			if (!document.userInfo.id.value) {
				alert("Input your ID.");
				return false;
			}

			if (!document.userInfo.password.value) {
				alert("Input your password.");
				return false;
			}

			if (!document.userInfo.name.value) {
				alert("Input your name.");
				return false;
			}

			// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
			if (document.userInfo.password.value != document.userInfo.passwordCheck.value) {
				alert("Check your password.");
				return false;
			}

			else
				location.href = "/join/insertMember";
		}

		// 취소 버튼 클릭시 로그인 화면으로 이동
		function goLoginForm() {
			location.href = "/login";
		}
	</script>
</body>

</html>