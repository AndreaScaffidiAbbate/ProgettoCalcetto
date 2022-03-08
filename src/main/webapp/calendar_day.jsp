<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>
<%@page import="model.Partita"%>
<%@page import="model.Giocatore"%>
<%@page import="java.util.List"%>
<%@page import="model.Squadra"%>
<link href="stylesheetday.css" rel="stylesheet" id="bootstrap-css10">


<br><br><br><br>
<%Squadra utente = (Squadra) session.getAttribute("utente");%>
<%Partita [][] prenotazioni = (Partita[][]) session.getAttribute("prenotazioni");%>
<h1 class="titolo">Prenotati ora</h1>

<br><br><br><br>

<div class="row row-cols-1 row-cols-md-5 g-4" style="margin-left: 200px; margin-right: 300px; padding-bottom: 50px;">
  <div class="col">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <h2 style="font-family: 'Anton', sans-serif; color: black;">CAMPO 1</h2>
    </div>
    <div class="flip-box-back">
       <!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')">Mattina</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Pomeriggio</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Sera</button>
</div>

<!-- Tab content -->
<div id="London" class="tabcontent">
  <h3>Mattina</h3>
  <% if(prenotazioni[0][0]!=null){ %>
  <% if(prenotazioni[0][0].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[0][0].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[0][0].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="1" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[0][0].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="1" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>

<div id="Paris" class="tabcontent">
  <h3>Pomeriggio</h3>
   <% if(prenotazioni[0][1]!=null){ %>
  <% if(prenotazioni[0][1].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[0][1].getSquadra1().getNomeSquadra() %>" hidden=true>
      <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[0][1].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="1" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[0][1].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="1" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>
<div id="Tokyo" class="tabcontent">
  <h3>Sera</h3>
  
 <% if(prenotazioni[0][2]!=null){ %>
  <% if(prenotazioni[0][2].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[0][2].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[0][2].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="1" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[0][2].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="1" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div> 
    </div>
  </div>
</div>
</div>

  <div class="col" style="margin-left: 400px;">
<div class="flip-box" style="margin-left: 100px;">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <h2 style="font-family: 'Anton', sans-serif; color: black;">CAMPO 2</h2>
    </div>
    <div class="flip-box-back">
       <!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity1(event, 'London1')">Mattina</button>
  <button class="tablinks" onclick="openCity1(event, 'Paris1')">Pomeriggio</button>
  <button class="tablinks" onclick="openCity1(event, 'Tokyo1')">Sera</button>
</div>

<!-- Tab content -->
<div id="London1" class="tabcontent1">
  <h3>Mattina</h3>
  <% if(prenotazioni[1][0]!=null){ %>
  <% if(prenotazioni[1][0].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[1][0].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[1][0].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="2" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[1][0].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="2" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>

<div id="Paris1" class="tabcontent1">
  <h3>Pomeriggio</h3>
   <% if(prenotazioni[1][1]!=null){ %>
  <% if(prenotazioni[1][1].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[1][1].getSquadra1().getNomeSquadra() %>" hidden=true>
      <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[1][1].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="2" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[1][1].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="2" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>
<div id="Tokyo1" class="tabcontent1">
  <h3>Sera</h3>
  
 <% if(prenotazioni[1][2]!=null){ %>
  <% if(prenotazioni[1][2].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[1][2].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[1][2].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="2" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[1][2].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="2" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>
</div> 
    </div>
  </div>
</div>
</div>

</div>

<div class="row row-cols-1 row-cols-md-5 g-4" style="margin-left: 200px; margin-right: 300px; padding-bottom: 50px;">
  <div class="col">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <h2 style="font-family: 'Anton', sans-serif; color: black;">CAMPO 3</h2>
   </div>
    <div class="flip-box-back">
       <!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity2(event, 'London2')">Mattina</button>
  <button class="tablinks" onclick="openCity2(event, 'Paris2')">Pomeriggio</button>
  <button class="tablinks" onclick="openCity2(event, 'Tokyo2')">Sera</button>
</div>

<!-- Tab content -->
<div id="London2" class="tabcontent2">
  <h3>Mattina</h3>
  <% if(prenotazioni[2][0]!=null){ %>
  <% if(prenotazioni[2][0].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[2][0].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[2][0].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="3" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[2][0].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="3" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>

<div id="Paris2" class="tabcontent2">
  <h3>Pomeriggio</h3>
   <% if(prenotazioni[2][1]!=null){ %>
  <% if(prenotazioni[2][1].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[2][1].getSquadra1().getNomeSquadra() %>" hidden=true>
      <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[2][1].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="3" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[2][1].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="3" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>
<div id="Tokyo2" class="tabcontent2">
  <h3>Sera</h3>
  
 <% if(prenotazioni[2][2]!=null){ %>
  <% if(prenotazioni[2][2].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[2][2].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[2][2].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="3" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[2][2].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="3" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>
</div> 
    </div>
  </div>
</div>
</div>

  <div class="col" style="margin-left: 400px;">
<div class="flip-box" style="margin-left: 100px;">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <h2 style="font-family: 'Anton', sans-serif; color: black;">CAMPO 4</h2>
    </div>
    <div class="flip-box-back">
       <!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity3(event, 'London3')">Mattina</button>
  <button class="tablinks" onclick="openCity3(event, 'Paris3')">Pomeriggio</button>
  <button class="tablinks" onclick="openCity3(event, 'Tokyo3')">Sera</button>
</div>

<!-- Tab content -->
<div id="London3" class="tabcontent3">
  <h3>Mattina</h3>
  <% if(prenotazioni[3][0]!=null){ %>
  <% if(prenotazioni[3][0].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[3][0].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[3][0].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="4" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[3][0].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="4" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>

<div id="Paris3" class="tabcontent3">
  <h3>Pomeriggio</h3>
   <% if(prenotazioni[3][1]!=null){ %>
  <% if(prenotazioni[3][1].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[3][1].getSquadra1().getNomeSquadra() %>" hidden=true>
      <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[3][1].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="4" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[3][1].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="4" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>
<div id="Tokyo3" class="tabcontent3">
  <h3>Sera</h3>
  
 <% if(prenotazioni[3][2]!=null){ %>
  <% if(prenotazioni[3][2].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[3][2].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[3][2].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="4" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[3][2].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="4" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>
</div> 
    </div>
  </div>
</div>
</div>
</div>

<div class="row row-cols-1 row-cols-md-5 g-4" style="margin-left: 600px; margin-right: 300px; padding-bottom: 50px;">
  <div class="col">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <h2 style="font-family: 'Anton', sans-serif; color: black;">CAMPO 5</h2>
   </div>
    <div class="flip-box-back">
       <!-- Tab links -->
<div class="tab">
  <button class="tablinks" onclick="openCity4(event, 'London4')">Mattina</button>
  <button class="tablinks" onclick="openCity4(event, 'Paris4')">Pomeriggio</button>
  <button class="tablinks" onclick="openCity4(event, 'Tokyo4')">Sera</button>
</div>

<!-- Tab content -->
<div id="London4" class="tabcontent4">
  <h3>Mattina</h3>
  <% if(prenotazioni[4][0]!=null){ %>
  <% if(prenotazioni[4][0].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[4][0].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[4][0].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="5" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[4][0].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="mattina" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="5" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>

<div id="Paris4" class="tabcontent4">
  <h3>Pomeriggio</h3>
   <% if(prenotazioni[4][1]!=null){ %>
  <% if(prenotazioni[4][1].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[4][1].getSquadra1().getNomeSquadra() %>" hidden=true>
      <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[4][1].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="5" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[4][1].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="pomeriggio" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="5" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>

</div>
<div id="Tokyo4" class="tabcontent4">
  <h3>Sera</h3>
  
 <% if(prenotazioni[4][2]!=null){ %>
  <% if(prenotazioni[4][2].getSquadra2() != null ){ %>
 <div>Non Prenotabile</div>
  <% } else { %>
    <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspite" hidden=true>
   <input type="text" id="data"  name="data" value="2022/03/09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="<%= utente.getNomeSquadra()%>" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%=prenotazioni[4][2].getSquadra1().getNomeSquadra() %>" hidden=true>
       <input type="text" id="idPartita"  name="idPartita" value="<%=prenotazioni[4][2].getIdPartita()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="5" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospite</button>
  <div><%= prenotazioni[4][2].getSquadra1().getNomeSquadra() %></div>
  </form>
  <% }}else{ %>
  <form action="gestione_partita" method="post">
   <input type="text" id="azione"  name="azione" value="prenotaOspitante" hidden=true>
   <input type="text" id="data"  name="data" value="2022-03-09" hidden=true>
      <input type="text" id="orario"  name="orario" value="sera" hidden=true>
      <input type="text" id="ospite"  name="ospite" value="" hidden=true>
      <input type="text" id="ospitante"  name="ospitante" value="<%= utente.getNomeSquadra()%>" hidden=true>
     <input type="text" id="numeroCampo"  name="numeroCampo" value="5" hidden=true>
  <button type="submit" value="Submit" >Prenota come Ospitante</button>
  <div>---------------</div>
  </form>
  <% } %>
</div> 
    </div>
  </div>
</div>
</div>

</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
<script>
function openCity1(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent1");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks1");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
</script>

<script>
function openCity2(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent2");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks2");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
</script>

<script>
function openCity3(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent3");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks3");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
</script>

<script>
function openCity4(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent4");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks4");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
</script>

<br><br><br><br>
<%@ include file="footer_user.jsp"%>