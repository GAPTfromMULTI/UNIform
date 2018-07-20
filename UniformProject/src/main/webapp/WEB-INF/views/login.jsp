<!DOCTYPE html>
<html lang="en">

  <head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  </head>

  <body>


	<!--login modal-->
	<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog">
	  <div class="modal-content">
	      <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	          <h1 class="text-center">Login</h1>
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
	              <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
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


  </body>