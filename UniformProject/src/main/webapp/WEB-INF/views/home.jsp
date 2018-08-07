<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>UniForm - Home</title>

<!-- Bootstrap core CSS -->
<!--<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">-->
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav" style="background-color: #6799FF;">
		<div class="container">
			<a class="navbar-brand" href="index.html">UNIform</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#joinModal" data-toggle="modal">Join</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/form">Form</a>
					</li>
					<c:choose>
						<c:when test="${sessionScope.id ne null}">
							<!--<div class="navbar-header pull-right">-->
								<!-- <span class="navbar-brand">  -->
								<li class="nav-item"><a class="nav-link"> ${sessionScope.id}님 반갑습니다</li>
								<li class="nav-item"><a class="nav-link" href="/logout">logout</a>
								</li>
							<!--</div>-->
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="#loginModal" data-toggle="modal">login</a>
							</li>

						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('${pageContext.request.contextPath}/resources/img/home-bg.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="site-heading">
						<h1>Clean Blog</h1>
						<span class="subheading">A Blog Theme by Start Bootstrap</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<!-- Page Features -->
	<div class="row text-center">
		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325"
					alt="폼 사진...">
				<div class="card-body">
					<h4 class="card-title">폼 제목1</h4>
					<p class="card-text">내용</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">폼 제목2</h4>
					<p class="card-text">내용</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">폼 제목3</h4>
					<p class="card-text">긴 내용 - Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">폼 제목4</h4>
					<p class="card-text">더 긴 내용 - Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Explicabo magni sapiente, tempore
						debitis beatae culpa natus architecto.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

	</div>
	<!-- <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
                Man must explore, and this is exploration at its greatest
              </h2>
              <h3 class="post-subtitle">
                Problems look mighty small from 150 miles up
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#">Start Bootstrap</a>
              on September 24, 2018</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
                I believe every human has a finite number of heartbeats. I don't intend to waste any of mine.
              </h2>
            </a>
            <p class="post-meta">Posted by
              <a href="#">Start Bootstrap</a>
              on September 18, 2018</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
                Science has not yet mastered prophecy
              </h2>
              <h3 class="post-subtitle">
                We predict too much for the next year and yet far too little for the next ten.
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#">Start Bootstrap</a>
              on August 24, 2018</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
                Failure is not an option
              </h2>
              <h3 class="post-subtitle">
                Many say exploration is part of our destiny, but it’s actually our duty to future generations.
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#">Start Bootstrap</a>
              on July 8, 2018</p>
          </div> -->
	<hr>
	
	<!--join modal-->
	<div id="joinModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog">
	  <div class="modal-content">
	      <div class="modal-header">
	      	<center><h1 class="text-center">회원가입</h1></center>
	          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	          
	      </div>
	      <div class="modal-body">
	          <form class="form col-md-12 center-block" action="<%=request.getContextPath()%>/join/insertMember"
					name="userInfo"
					onsubmit="return checkValue()">
	            <div class="form-group">
	              <input type="text" class="form-control input-lg" name="name" placeholder="이름">
	            </div>
	            <div class="form-group">
	              <input type="text" class="form-control input-lg" name="id" placeholder="아이디">
	            </div>
	            <div class="form-group">
	              <input type="password" class="form-control input-lg" name="password" placeholder="비밀번호">
	            </div>
	            <div class="form-group">
	              <input type="password" class="form-control input-lg" name="passwordCheck" placeholder="비밀번호 확인">
	            </div>
	            <div class="form-group">
	              <input type="text" class="form-control input-lg" name="phone" placeholder="전화번호">
	            </div>
	            <div class="form-group">
	              <input type="text" class="form-control input-lg" name="type" placeholder="학생 or 일반인">
	            </div>
	            <div class="form-group">
	              <button type="submit" class="btn btn-primary btn-lg btn-block"onclick="checkValue()">가입하기</button>
	              <span><a href="#"><h6>아이디/비밀번호를 잊으셨나요?</h6></a></span>
	            </div>
	          </form>
	      </div>
	      <div class="modal-footer">
	          <div class="col-md-12">
	          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
			  </div>	
	      </div>
	  </div>
	  </div>
	</div>
	
	
	<!--login modal-->
	<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog">
	  <div class="modal-content">
	      <div class="modal-header">
	      	<center><h1 class="text-center">Login</h1></center>
	          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	      </div>
	      <div class="modal-body">
	          <form class="form col-md-12 center-block" action="<%=request.getContextPath()%>/login/loginCheck">
	            <div class="form-group">
	              <input type="text" class="form-control input-lg" name="id" placeholder="id">
	            </div>
	            <div class="form-group">
	              <input type="password" class="form-control input-lg" name="password" placeholder="password">
	            </div>
	            <div class="form-group">
	              <button type="submit" class="btn btn-primary btn-lg btn-block">Sign In</button>
	              <span class="pull-right"><a href="#joinModal" data-toggle="modal">Register</a></span><span><a href="#">Need help?</a></span>
	            </div>
	          </form>
	      </div>
	      <div class="modal-footer">
	          <div class="col-md-12">
	          <button class="btn" data-dismiss="modal" aria-hidden="true" onClick="goMain()">Cancel</button>
			  </div>	
	      </div>
	  </div>
	  </div>
	</div>
	
	
	<!-- Pager -->
	<div class="clearfix">
		<a class="btn btn-primary float-right" href="/board">Older Posts &rarr;</a>
	</div>
	</div>
	</div>
	</div>

	<hr>
	
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-facebook fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy; Your Website
						2018</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="<c:url value="/js/bootstrap.min.js" />"></script>
		<script src="<c:url value="/js/scripts.js" />"></script>
	
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

	<!-- Custom scripts for this template -->
	<script src="<c:url value="/resources/js/clean-blog.min.js" />"></script>
	
	<script type="text/javascript">
	$(document).on('hidden.bs.modal', function(event) {
		if ($('.modal:visible').length) {
			$('body').addClass('modal-open');
		}
	});
	
	// 필수 입력정보인 아이디, 비밀번호, 이름이 입력되었는지 확인하는 함수
	function checkValue() {
		if (!document.userInfo.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.userInfo.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (!document.userInfo.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.userInfo.password.value != document.userInfo.passwordCheck.value) {
			alert("비밀번호를 확인하세요.");
			return false;
		}

		else
			location.href = "/join/insertMember";
	}

	// 취소 버튼 클릭시 로그인 화면으로 이동
	function goLoginForm() {
		location.href = "/login";
	}
	
		// 취소 버튼 클릭시 메인 화면으로 이동
		function goMain() {
			location.href = "/";
		}
	</script>

</body>

</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>

<body>
    <h1>Hello world!</h1>
 
    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td>${member.pw}</td>
                    <td>${member.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
 
 
</body>
</html>
 --%>