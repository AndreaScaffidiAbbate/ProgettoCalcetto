<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<br><br><br><br><br>

<link
	href="stylesheet2.css"
	rel="stylesheet" id="bootstrap-css2">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container register">
	<div class="row">
		<div class="col-md-3 register-left">
			<img src="https://i.ibb.co/xD4jCMS/palla.png" alt="" />
			<h3>Benvenuto/a!</h3>
			<p>Entra a far parte della nostra community</p>
			<a class="btnLogin" href="login.jsp" role="button">Log in</a><br />
		</div>
		<div class="col-md-9 register-right">
			<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
				
			</ul>
			<form action="/dispatcher_registrazione" method = "POST">
			<div class="tab-content" id="myTabContent">
				<div class="" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<h3 class="register-heading">Registrati</h3>
					<div class="row register-form">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="First Name *" value="" />
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Last Name *" value="" />
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome Squadra *" value="" />
							</div>
							
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="email" class="form-control"
									placeholder="Your Email *" value="" />
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Password *" value="" />
							</div>
							<div class="form-group">
								<select  class="form-select show-tick">
								<option value="" selected>Scegli il colore del tuo team</option>
								<option value="Bianco">Bianco</option>
								<option value="Rosso">Rosso</option>
								<option value="Verde">Verde</option>
								<option value="Giallo">Giallo</option>
								<option value="Blu">Blu</option>
								<option value="Nero">Nero</option>
								<option value="Arancione">Arancione</option>
								</select>
							</div>
							<button type="submit" class="btnRegister"> Registrati </button>
						</div>
					</div>
				</div>
			</div>
		  </form>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>