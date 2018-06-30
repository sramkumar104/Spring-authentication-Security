<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css//bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/animate.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/select2.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/main.css">
	 <script src="${pageContext.servletContext.contextPath}/js/jquery.js"></script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${pageContext.servletContext.contextPath}/images/img-01.png" alt="IMG">
				</div>

				<div class="login100-form validate-form" >
					<span class="login100-form-title">
						User Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="userName" id="userName" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" id="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="return logincontroller();">
							Login
						</button>
					</div>
					<div class="container-login100-form-btn">
						<p id="error" class="text-danger"></p>
					</div>
					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

	<script type="text/javascript">
	function logincontroller(){
		var user=$('#userName').val();
		var pass=$('#pass').val();
		$.ajax('/login', {
	        type: 'POST',  // http method
	        data: { "userName":user,"pass":pass},  // data to submit
	        success: function (data, status, xhr) {
	        	location.href="dashboard";
	           
	        },
	        error: function (jqXhr, textStatus, errorMessage) {
	        	$('#error').html('Please Enter the Correct UserName Or Password')
	            }
	    });	
		
		
	}
	
	
	</script>
<!--===============================================================================================-->	
	<script src="${pageContext.servletContext.contextPath}/js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.servletContext.contextPath}/js//popper.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.servletContext.contextPath}/js/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.servletContext.contextPath}/js/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.servletContext.contextPath}/js/main.js"></script>

</body>
</html>