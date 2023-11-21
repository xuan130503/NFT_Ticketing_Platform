<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
body {
	background: url("/images/1140-2.png");
}

.container {
	opacity: 0.8;
	backdrop-filter: blur(1px);
}

.login {
color: var(--clr-accent);
 background-color: var(--clr-rgba);
	transition: all 2s;
}
.login:hover {
	transform:translateY(-5px);
	background-color: var(--clr-accent);
	color : var(--clr-light);
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>

	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="text-center my-5">
						<img
							src="https://getbootstrap.com/docs/5.0/assets/brand/bootstrap-logo.svg"
							alt="logo" width="100">
					</div>
					<div class="card shadow-lg">
						<div class="card-body p-5">
							<h1 class="fs-4 card-title fw-bold mb-4">Login</h1>
							<h5 style="color: red">${message}</h5>
							<form method="POST" class="needs-validation" novalidate=""
								autocomplete="off" action="/login/check">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="email">UserName</label> <input
										id="username" type="text" class="form-control" name="username"
										value="" required autofocus>
									<div class="invalid-feedback">Email is invalid</div>
								</div>

								<div class="mb-3">
									<div class="mb-2 w-100">
										<label class="text-muted" for="password">Password</label> <a
											href="forgot.html" class="float-end"> Forgot Password? </a>
									</div>
									<input id="password" type="password" class="form-control"
										name="password" required>
									<div class="invalid-feedback">Password is required</div>
								</div>

								<div class="d-flex align-items-center">
									<div class="form-check">
										<input type="checkbox" name="remember" id="remember"
											class="form-check-input"> <label for="remember"
											class="form-check-label">Remember Me</label>
									</div>
									<button type="submit" class="login btn btn-primary ms-auto">
										Login</button>
								</div>
							</form>
						</div>
						<div class="card-footer py-3 border-0">
							<div class="text-center">
								Don't have an account? <a href="register.html" class="text-dark">Create
									One</a>
							</div>
						</div>
					</div>
					<div class="text-center mt-5 text-muted">Copyright &copy;
						2017-2021 &mdash; Your Company</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>