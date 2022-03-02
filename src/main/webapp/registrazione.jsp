<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<br>
<br>
<br>
<br>
<br>

<link href="stylesheet2.css" rel="stylesheet" id="bootstrap-css2">
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
			<form action="dispatcher_registrazione?action=registrazione"
				method="POST">
				<div class="tab-content" id="myTabContent">
					<div class="" id="home" role="tabpanel" aria-labelledby="home-tab">
						<h3 class="register-heading">Registrati</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Nome *"
										value="" name="nome" required style="border-color: black;border-width: 1.5px" />
								</div>
								<br>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Cognome *"
										value="" name="cognome" required
										style="border-color: black;border-width: 1.5px" />
								</div>
								<br>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Nome Squadra *" value="" name="nome_squadra"
										required style="border-color: black;border-width: 1.5px" />

								</div>
								<br>

							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control" placeholder="Email *"
										value="" name="email" required style="border-color: black;border-width: 1.5px" />
								</div>
								<br>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Password *" value="" name="password" required style="border-color: black;border-width: 1.5px" />
								</div>
								<br>
								<div class="form-group">
									<select class="form-select show-tick" name="colore" required style="border-color: black;border-width: 1.5px">
										<option value="" selected>Scegli il colore del tuo
											team</option>
										<option value="Viola" style="color: purple;">Viola</option>
										<option value="Rosso" style="color: red;">Rosso</option>
										<option value="Verde" style="color: green;">Verde</option>
										<option value="Giallo" style="color: darkgoldenrod;">Giallo</option>
										<option value="Blu" style="color: blue;">Blu</option>
										<option value="Nero" style="color: black;">Nero</option>
										<option value="Arancione" style="color: darkorange;">Arancione</option>
									</select>
								</div>

								<button type="submit" class="btnRegister">Registrati</button>
							</div>
						</div>
					</div>
				</div>
				<%if (request.getAttribute("emailtrovata") != null) {%>
				<div class="alert alert-danger" role="alert"
					style="text-align: center;">Email e/o Nome della Squadra già
					in uso!</div>
				<%}%>
			</form>
		</div>
	</div>

</div>

<%@ include file="footer.jsp"%>