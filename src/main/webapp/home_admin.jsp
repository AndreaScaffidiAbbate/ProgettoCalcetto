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




<h1 style="margin-top: 150px; text-align: center;">TUTTE LE PARTITE
</h1>

<div
	style="margin-top: 30px; margin-left: 50px; margin-right: 50px; background-color: white;"
	class="rounded-3">
	<table class="table caption-top">
		<caption></caption>
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">OSPITE</th>
				<th scope="col">OSPITANTE</th>
				<th scope="col">DATA</th>
				<th scope="col">ORARIO</th>
				<th scope="col">CAMPO</th>
				<th scope="col">V1</th>
				<th scope="col">S1</th>
				<th scope="col">P1</th>
				<th scope="col">V2</th>
				<th scope="col">S2</th>
				<th scope="col">P2</th>
				<th scope="col"></th>
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
				<td><%= partita.getSquadra1().getVittoriaSquadra() %></td>
				<td><%= partita.getSquadra2().getVittoriaSquadra() %></td>
				<td><%= partita.getSquadra1().getSconfittaSquadra() %></td>
				<td><%= partita.getSquadra2().getSconfittaSquadra() %></td>
				<td><%= partita.getSquadra1().getPareggioSquadra() %></td>
				<td><%= partita.getSquadra2().getPareggioSquadra() %></td>
				<td><input type="button" class="btn btn-danger btn-sm "
					value="Modifica" onclick=" relocate3_home()">
				</td>
			</tr>
			<% } %>
			<% } %>
		</tbody>
	</table>
</div>





</tbody>



<br>
<br>
<br>
<br>

<script>
			function relocate3_home()
			{
			     location.href = "GestioneLogin?action=modificap";
			} 
			</script>
<%@ include file="footer_user.jsp"%>

