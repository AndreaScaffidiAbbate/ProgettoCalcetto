<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<link href="stylesheet3.css" rel="stylesheet" id="bootstrap-css3">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<br><br><br><br><br>

<div class="container register">
	<div class="row">
		<div class="col-md-3 register-left">
			<img src="https://i.ibb.co/xD4jCMS/palla.png" alt="" />
			<h3>Ci sei quasi!</h3>
			<h4>Inserisci i componenti del tuo team</h4>
		</div>
		<div class="col-md-9 register-right">
			<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
				
			</ul>
			<form action="/dispatcher_registrazione" method = "POST">
			<div class="tab-content" id="myTabContent">
				<div class="" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<h3 class="register-heading">Registra la tua squadra</h3>
					<div class="row register-form">
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="" name="nome1"  required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="" name="nome2" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="" name="nome3" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="" name="nome4" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="" name="nome5" required style="border-color: black;border-width: 1.5px"/>
							</div>
							
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="" name="cognome1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="" name="cognome2" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="" name="cognome3" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="" name="cognome4" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="" name="cognome5" required style="border-color: black;border-width: 1.5px"/>
							</div>

							<button type="submit" class="btnRegister"> Registrati </button>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo1"  required style="border-color: black;border-width: 1.5px">
								<option value="" selected disabled>Scegli il ruolo</option>
								<option value="Pivot" style="border-color: black;border-width: 1.5px">Pivot</option>
								<option value="Portiere" style="border-color: black;border-width: 1.5px">Portiere</option>
								<option value="Laterale 1" style="border-color: black;border-width: 1.5px">Laterale 1</option>
								<option value="Laterale 2" style="border-color: black;border-width: 1.5px">Laterale 2</option>
								<option value="Centrale" style="border-color: black;border-width: 1.5px">Centrale</option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo2"  required style="border-color: black;border-width: 1.5px">
								<option value="" selected disabled>Scegli il ruolo</option>
								<option value="Pivot" style="border-color: black;border-width: 1.5px">Pivot</option>
								<option value="Portiere" style="border-color: black;border-width: 1.5px">Portiere</option>
								<option value="Laterale 1" style="border-color: black;border-width: 1.5px">Laterale 1</option>
								<option value="Laterale 2" style="border-color: black;border-width: 1.5px">Laterale 2</option>
								<option value="Centrale" style="border-color: black;border-width: 1.5px">Centrale</option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo3"  required style="border-color: black;border-width: 1.5px">
								<option value="" selected disabled>Scegli il ruolo</option>
								<option value="Pivot" style="border-color: black;border-width: 1.5px">Pivot</option>
								<option value="Portiere" style="border-color: black;border-width: 1.5px">Portiere</option>
								<option value="Laterale 1" style="border-color: black;border-width: 1.5px">Laterale 1</option>
								<option value="Laterale 2" style="border-color: black;border-width: 1.5px">Laterale 2</option>
								<option value="Centrale" style="border-color: black;border-width: 1.5px">Centrale</option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo4"  required style="border-color: black;border-width: 1.5px">
								<option value="" selected disabled>Scegli il ruolo</option>
								<option value="Pivot" style="border-color: black;border-width: 1.5px">Pivot</option>
								<option value="Portiere" style="border-color: black;border-width: 1.5px">Portiere</option>
								<option value="Laterale 1" style="border-color: black;border-width: 1.5px">Laterale 1</option>
								<option value="Laterale 2" style="border-color: black;border-width: 1.5px">Laterale 2</option>
								<option value="Centrale" style="border-color: black;border-width: 1.5px">Centrale</option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo5" required style="border-color: black;border-width: 1.5px">
								<option value="" selected disabled>Scegli il ruolo</option>
								<option value="Pivot" style="border-color: black;border-width: 1.5px">Pivot</option>
								<option value="Portiere" style="border-color: black;border-width: 1.5px">Portiere</option>
								<option value="Laterale 1" style="border-color: black;border-width: 1.5px">Laterale 1</option>
								<option value="Laterale 2" style="border-color: black;border-width: 1.5px">Laterale 2</option>
								<option value="Centrale" style="border-color: black;border-width: 1.5px">Centrale</option>
								</select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value="" name="n_maglia1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value=""  name="n_maglia1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value=""  name="n_maglia1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value=""  name="n_maglia1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value=""  name="n_maglia1" required style="border-color: black;border-width: 1.5px"/>
							</div>
						</div>
					</div>
				</div>
			</div>
		  </form>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>