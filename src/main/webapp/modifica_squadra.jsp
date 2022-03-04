<%@page import="model.Giocatore"%>
<%@page import="java.util.List"%>
<%@page import="model.Squadra"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar_login.jsp"%>

<link href="stylesheet3.css" rel="stylesheet" id="bootstrap-css3">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<br><br><br><br><br>
<%Squadra utente = (Squadra) session.getAttribute("userLogin");%>
<%List<Giocatore> listagiocatori = utente.getGiocatores(); %>
<div class="container register">
	<div class="row">
		<div class="col-md-3 register-left">
			<img src="https://i.ibb.co/xD4jCMS/palla.png" alt="" />
			<h4>Modifica i componenti del tuo team</h4>
		</div>
		<div class="col-md-9 register-right">
			<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
				
			</ul>
			<form action="GestioneConfermaModifica?action=modificasquadra" method = "POST">
			<div class="tab-content" id="myTabContent">
				<div class="" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<h3 class="register-heading"><%= utente.getNomeSquadra() %></h3>
					<div class="row register-form">
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="<%=listagiocatori.get(0).getNomeGiocatore()%>" name="nome1"  required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="<%=listagiocatori.get(1).getNomeGiocatore()%>" name="nome2" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="<%=listagiocatori.get(2).getNomeGiocatore()%>" name="nome3" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="<%=listagiocatori.get(3).getNomeGiocatore()%>" name="nome4" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Nome *" value="<%=listagiocatori.get(4).getNomeGiocatore()%>" name="nome5" required style="border-color: black;border-width: 1.5px"/>
							</div>
							
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="<%=listagiocatori.get(0).getCognomeGiocatore()%>" name="cognome1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="<%=listagiocatori.get(1).getCognomeGiocatore()%>" name="cognome2" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="<%=listagiocatori.get(2).getCognomeGiocatore()%>" name="cognome3" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="<%=listagiocatori.get(3).getCognomeGiocatore()%>" name="cognome4" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="cognome *" value="<%=listagiocatori.get(4).getCognomeGiocatore()%>" name="cognome5" required style="border-color: black;border-width: 1.5px"/>
							</div>

							<button type="submit" class="btnRegister">Conferma</button>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo1"  required style="border-color: black;border-width: 1.5px">
								<option value="<%=listagiocatori.get(0).getRuoloGiocatore()%>" selected><%=listagiocatori.get(0).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(1).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(1).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(2).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(2).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(3).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(3).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(4).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(4).getRuoloGiocatore()%></option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo2"  required style="border-color: black;border-width: 1.5px">
								<option value="<%=listagiocatori.get(1).getRuoloGiocatore()%>" selected><%=listagiocatori.get(1).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(2).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(2).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(3).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(3).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(4).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(4).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(0).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(0).getRuoloGiocatore()%></option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo3"  required style="border-color: black;border-width: 1.5px">
								<option value="<%=listagiocatori.get(2).getRuoloGiocatore()%>" selected><%=listagiocatori.get(2).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(3).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(3).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(4).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(4).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(0).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(0).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(1).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(1).getRuoloGiocatore()%></option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo4"  required style="border-color: black;border-width: 1.5px">
							<option value="<%=listagiocatori.get(3).getRuoloGiocatore()%>" selected><%=listagiocatori.get(3).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(4).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(4).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(0).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(0).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(1).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(1).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(2).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(2).getRuoloGiocatore()%></option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<select  class="form-select show-tick" name="ruolo5" required style="border-color: black;border-width: 1.5px">
								<option value="<%=listagiocatori.get(4).getRuoloGiocatore()%>" selected><%=listagiocatori.get(4).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(0).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(0).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(1).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(1).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(2).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(2).getRuoloGiocatore()%></option>
								<option value="<%=listagiocatori.get(3).getRuoloGiocatore()%>" style="border-color: black;border-width: 1.5px"><%=listagiocatori.get(3).getRuoloGiocatore()%></option>
								</select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value="<%=listagiocatori.get(0).getNumeroGiocatore()%>" name="n_maglia1" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value="<%=listagiocatori.get(1).getNumeroGiocatore()%>"  name="n_maglia2" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value="<%=listagiocatori.get(2).getNumeroGiocatore()%>"  name="n_maglia3" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value="<%=listagiocatori.get(3).getNumeroGiocatore()%>"  name="n_maglia4" required style="border-color: black;border-width: 1.5px"/>
							</div>
							<br>
							<div class="form-group">
								<input type="number" min="1" max="99" class="form-control"
									placeholder="N maglia *" value="<%=listagiocatori.get(4).getNumeroGiocatore()%>"  name="n_maglia5" required style="border-color: black;border-width: 1.5px"/>
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