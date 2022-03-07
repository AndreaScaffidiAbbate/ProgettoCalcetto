<%@page import="model.Partita"%>
<%@page import="model.Giocatore"%>
<%@page import="java.util.List"%>
<%@page import="model.Squadra"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<%Squadra utente = (Squadra) session.getAttribute("userLogin");%>
<%List<Giocatore> listagiocatori; %>
<%if (session.getAttribute("listagiocatori") == null) {
	 listagiocatori = utente.getGiocatores();
}
else listagiocatori = (List<Giocatore>) session.getAttribute("listagiocatori");
%>
<% List<Partita> listapartite; %>




<h1 style="margin-top: 150px; text-align: center;">Team : <%= utente.getNomeSquadra() %></h1>

<div style="margin-top: 30px; margin-left: 50px; margin-right: 50px; background-color: white;" class="rounded-3">
<table class="table caption-top" >
  <caption></caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">OSPITE</th>
      <th scope="col">OSPITANTE</th>
      <th scope="col">DATA</th>
      <th scope="col">ORARIO</th>
      <th scope="col">CAMPO</th>
       <th scope="col">V</th>
      <th scope="col">S</th>
      <th scope="col">P</th>
    </tr>
  </thead>
  <tbody> 
 <% if(session.getAttribute("partite") != null) {
	listapartite = (List<Partita>)session.getAttribute("partite");

	%>
  <% for(Partita partita : listapartite) { %> 
    <tr>    
      <th scope="row"><%= listapartite.indexOf(partita)+1 %></th>
      <td><%= partita.getSquadra1().getNomeSquadra() %></td>
      <td><%= partita.getSquadra2().getNomeSquadra() %></td>
      <td><%= partita.getDataPartita() %></td>
      <td><%= partita.getOrarioPartita() %></td>      
      <td><%= partita.getCampoPartita() %></td> 
      <td><%= utente.getVittoriaSquadra() %></td> 
      <td><%= utente.getSconfittaSquadra() %></td> 
      <td><%= utente.getPareggioSquadra() %></td>            
    </tr>
    <% } %> 
  <% } %>
  </tbody>
</table>
</div>

<div style=" margin-left: 50px; margin-right: 50px;  margin-top: 50px; margin-bottom: 50px;">
<input type="button" class="btn btn-dark" value="Prenotati ora" style="width: 100%; height: 60px;" onclick=" relocate1_home()">
			
			<script>
			function relocate1_home()
			{
			     location.href = "calendar_home.jsp";
			} 
			</script>
</div>


<div style="margin-left: 50px; margin-right: 50px; background-color: white;" class="rounded-3">
<table class="table caption-top" >
  <caption></caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">NOME</th>
      <th scope="col">COGNOME</th>
      <th scope="col">RUOLO</th>
      <th scope="col">N. MAGLIA</th>
    </tr>
  </thead>
  <tbody>
  <% for(Giocatore giocatore : listagiocatori) {%>
    <tr>
      <th scope="row"><%= listagiocatori.indexOf(giocatore)+1 %></th>
      <td><%= giocatore.getNomeGiocatore() %></td>
      <td><%= giocatore.getCognomeGiocatore() %></td>
      <td><%= giocatore.getRuoloGiocatore() %></td>
      <td><%= giocatore.getNumeroGiocatore() %></td>
    </tr>
    <% } %>
   <div class= "d-flex justify-content-center">
      <input type="button" class="btn btn-danger" value="Modifica"onclick=" relocate_home()">
			
			<script>
			function relocate_home()
			{
			     location.href = "modifica_squadra.jsp";
			} 
			</script>
  </div>
    
    
  </tbody>
</table>
</div>


<br><br><br><br>
<%@ include file="footer_user.jsp"%>
