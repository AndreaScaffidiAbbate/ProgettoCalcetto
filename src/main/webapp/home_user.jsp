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
<table  class="table caption-top" style="  text-align: center;" >
 <thead>
    <tr>
       <th scope="col">VITTORIE</th>
      <th scope="col">SCONFITTE</th>
      <th scope="col">PAREGGI</th>
    </tr>
  </thead>
   <tbody> 
   <tr>
      <td><%= utente.getVittoriaSquadra() %></td> 
      <td><%= utente.getSconfittaSquadra() %></td> 
      <td><%= utente.getPareggioSquadra() %></td>       
    </tr>

  </tbody>
</table>
</div>
<h3 style="margin-top:20px; text-align: center;">STORICO PARTITE</h3>
<div style="margin-top: 30px; margin-left: 50px; margin-right: 50px; background-color: white;" class="rounded-3">
<table class="table caption-top"  style="  text-align: center;">
  <caption></caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">OSPITANTE</th>
      <th scope="col">OSPITE</th>
      <th scope="col">DATA</th>
      <th scope="col">ORARIO</th>
      <th scope="col">CAMPO</th>
       <th scope="col">ESITO</th>
    
    </tr>
  </thead>
  <tbody> 
 <% if(session.getAttribute("partite") != null) {
	listapartite = (List<Partita>)session.getAttribute("partite");

	%>
  <% for(Partita partita : listapartite) { %> 
    <tr>
    <% String esito = partita.getEsitoPartita() != null ? partita.getEsitoPartita() : "Partita Da Disputare"; %>    
      <th scope="row"><%= listapartite.indexOf(partita)+1 %></th>
      <td><%= partita.getSquadra1().getNomeSquadra() %></td>
      <td><%= partita.getSquadra2().getNomeSquadra() %></td>
      <td><%= partita.getDataPartita() %></td>
      <td><%= partita.getOrarioPartita() %></td>      
      <td><%= partita.getCampoPartita() %></td> 
      <td><%= esito %></td> 
          
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
<table class="table caption-top" style="  text-align: center;" >
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
   

		
			

    
    
  </tbody>
</table>
</div>

<script>
			function relocate_home()
			{
			     location.href = "modifica_squadra.jsp";
			} 
			</script>

<div  class= "d-flex justify-content-center">
	<input type="button" class="btn btn-danger" value="Modifica"onclick=" relocate_home()">
</div>
<br><br><br><br>
<%@ include file="footer_user.jsp"%>
