<%@page import="model.Partita"%>
<%@page import="model.Giocatore"%>
<%@page import="java.util.List"%>
<%@page import="model.Squadra"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar_admin.jsp"%>

<%Squadra utente = (Squadra) session.getAttribute("utente");%>


<%List<Giocatore> listagiocatori; %>

<%listagiocatori = (List<Giocatore>) session.getAttribute("listagiocatori");%>

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
				<th scope="col">CASA</th>
				<th scope="col">OSPITE</th>
				<th scope="col">DATA</th>
				<th scope="col">ORARIO</th>
				<th scope="col">CAMPO</th>
				<th scope="col">V1</th>
				<th scope="col">S1</th>
				<th scope="col">P1</th>
				<th scope="col">V2</th>
				<th scope="col">S2</th>
				<th scope="col">P2</th>
				<th scope="col">ESITO</th>
				<th scope="col"></th>
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
				<td><%= partita.getSquadra1().getVittoriaSquadra() %></td>				
				<td><%= partita.getSquadra1().getSconfittaSquadra() %></td>				
				<td><%= partita.getSquadra1().getPareggioSquadra() %></td>
				<td><%= partita.getSquadra2().getVittoriaSquadra() %></td>				
				<td><%= partita.getSquadra2().getSconfittaSquadra() %></td>				
				<td><%= partita.getSquadra2().getPareggioSquadra() %></td>
				<td><%= esito %></td>
				<td><form action="AssegnaVittoria" method="POST">				
				  <input type="text" id="esito"  name="esito" value="Reset" hidden=true>
				  <input type="text" id="partita"  name="partita" value="<%= partita.getIdPartita() %>" hidden=true>
				  <input type="text" id="s1"  name="s1" value="<%= partita.getSquadra1().getNomeSquadra() %>" hidden=true>
				  <input type="text" id="s2"  name="s2" value="<%= partita.getSquadra2().getNomeSquadra() %>" hidden=true>
				  <input type="submit" class="btn btn-primary btn-sm "
					value="reset">
				</form></td>
				<td><form action="AssegnaVittoria" method="POST">
				  <input type="text" id="s1"  name="s1" value="<%= partita.getSquadra1().getNomeSquadra() %>" hidden=true>
				  <input type="text" id="esito"  name="esito" value="Vittoria Casa" hidden=true>
				  <input type="text" id="partita"  name="partita" value="<%= partita.getIdPartita() %>" hidden=true>
     			  <input type="text" id="s2"  name="s2" value="<%= partita.getSquadra2().getNomeSquadra() %>" hidden=true>
     			  <input type="text" id="draw"  name="draw" value="no" placeholder="no" hidden=true>
				<input type="submit" class="btn btn-success btn-sm "
					value="1">
				</form>
				</td>
				<td><form action="AssegnaVittoria" method="POST">
				  <input type="text" id="s1"  name="s1" value="<%= partita.getSquadra1().getNomeSquadra() %>" hidden=true>
				  <input type="text" id="esito"  name="esito" value="Pareggio" hidden=true>
				  <input type="text" id="partita"  name="partita" value="<%= partita.getIdPartita() %>" hidden=true>
     			  <input type="text" id="s2"  name="s2" value="<%= partita.getSquadra2().getNomeSquadra() %>" hidden=true>
     			  <input type="text" id="draw"  name="draw" value="draw" placeholder="draw" hidden=true>
				<input type="submit" class="btn btn-warning btn-sm "
					value="X">
				</form></td>
				<td><form action="AssegnaVittoria" method="POST">
				  <input type="text" id="s1"  name="s1" value="<%= partita.getSquadra1().getNomeSquadra() %>" hidden=true>
				  <input type="text" id="esito"  name="esito" value="Vittoria Ospiti" hidden=true>
				  <input type="text" id="partita"  name="partita" value="<%= partita.getIdPartita() %>" hidden=true>
     			  <input type="text" id="s2"  name="s2" value="<%= partita.getSquadra2().getNomeSquadra() %>" hidden=true>
     			  <input type="text" id="draw" value="no" name="draw" placeholder="no" hidden=true>
				<input type="submit" class="btn btn-success btn-sm "
					value="2">
				</form></td>
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
		

			//function assegnaVittoria(chiHaVinto,chiHaPerso)
			//{
			//    location.href = "DispatcherVittoria?draw=no&s1="+chiHaVinto+"&s2="+chiHaPerso;
			     
			//} 
			//function draw(s1,s2)
			//{
			//     location.href = "DispatcherVittoria?draw=draw&s1="+s1+"&s2="+s2;
			     
			//} 
			</script>
<%@ include file="footer_admin.jsp"%>

