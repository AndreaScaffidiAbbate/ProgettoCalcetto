<%@page import="model.Giocatore"%>
<%@page import="java.util.List"%>
<%@page import="model.Squadra"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>
<%@page import="model.Partita"%>

<link href="stylesheet3.css" rel="stylesheet" id="bootstrap-css3">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<br><br><br><br><br>
<%Squadra utente = (Squadra) session.getAttribute("userLogin");%>
<%List<Giocatore> listagiocatori; %>
<%if (session.getAttribute("listagiocatori") == null) {
	 listagiocatori = utente.getGiocatores();
}
else listagiocatori = (List<Giocatore>) session.getAttribute("listagiocatori");
%>
<% Partita partita; %>





<div class="container register">
	<div class="row">
		<div class="col-md-3 register-left">
			<img src="https://i.ibb.co/xD4jCMS/palla.png" alt="" />
			<h4>MODIFICA PUNTEGGI</h4>
		</div>
		<div class="col-md-9 register-right">
			<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
				
			</ul>
			<form action="GestioneConfermaModifica?action=modificasquadra" method = "POST">
			<div class="tab-content" id="myTabContent">
				<div class="" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<h3 class="register-heading">ADMIN POWA</h3>
					<div class="row register-form">
						<div class="col-md-3">
							<div class="form-group">
							 <% if(session.getAttribute("partite") != null) {
									partita = ((Partita)session.getAttribute("partite"));
								 
							%>
						
							<label><%= partita.getSquadra1().getNomeSquadra() %></label>
								
							<% } %>

							<input type="number" class="form-control"  >
							</div>
						</div>
						
						<div class="col-md-3">
							<div class="form-group">
								
							</div>

						</div>
						<div class="col-md-3">
							<div class="form-group">
								
							</div>

							<button type="submit" class="btnRegister">Conferma</button>
						</div>
						
					</div>
				</div>
			</div>
		  </form>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>