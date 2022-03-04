<%@page import="model.Squadra"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<link href="stylesheetcalendar.css" rel="stylesheet" id="bootstrap-css10">


<br><br><br><br>

<h1 class="titolo">Prenotati ora</h1>

<br><br><br><br>
<%Squadra utente = (Squadra) session.getAttribute("userLogin"); %>
<div class="row row-cols-1 row-cols-md-5 g-4" style="margin-left: 300px; margin-right: 300px; padding-bottom: 50px;">
  <div class="col">
    <div class="card h-100 cards">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;">Lunedì</h5>
        <div class="form-group">
								<select  class="form-select show-tick" name="oario" required>
								<option value="" selected>Scegli l'orario</option>
								<option value="Mattina">Mattina</option>
								<option value="Pomeriggio">Pomeriggio</option>
								<option value="Sera">Sera</option>
								</select>
							</div>
							<div class="form-group">
						
								<input disabled value = "<%= utente.getNomeSquadra() %>" >
								
							</div><div class="form-group">
								<select  class="form-select show-tick" name="campo" required>
								<option value="" selected>Scegli il campo</option>
								<option value="Campo1">Campo 1</option>
								<option value="Campo2">Campo 2</option>
								<option value="Campo3">Campo 3</option>
								<option value="Campo4">Campo 4</option>
								<option value="Campo5">Campo 5</option>
								</select>
							</div>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;">Martedì</h5>
        <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home()">
			
			<script>
			function relocate_home()
			{
			     location.href = "calendar_day.jsp";
			} 
			</script>
		</div>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title">Mercoledì</h5>
        <div class="container" style="padding-top: 30px; padding-left: 40px;">
        <!-- Button trigger modal -->
		<button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal" >Prenotati ora</button>
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
								<select  class="form-select show-tick" name="oario" required>
								<option value="" selected>Scegli l'orario</option>
								<option value="Mattina">Mattina</option>
								<option value="Pomeriggio">Pomeriggio</option>
								<option value="Sera">Sera</option>
								</select>
							</div>
							<div class="form-group">
								<select  class="form-select show-tick" name="team" required>
								<option value="" selected>Scegli il tuo team</option>
								<option value="Bianco">Bianco</option>
								</select>
							</div><div class="form-group">
								<select  class="form-select show-tick" name="campo" required>
								<option value="" selected>Scegli il campo</option>
								<option value="Campo1">Campo 1</option>
								<option value="Campo2">Campo 2</option>
								<option value="Campo3">Campo 3</option>
								<option value="Campo4">Campo 4</option>
								<option value="Campo5">Campo 5</option>
								</select>
							</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
		</div>

      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title">Giovedì</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title">Venerdì</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div><div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title">Sabato</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div><div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title">Domenica</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
</div>

<%@ include file="footer_user.jsp"%>