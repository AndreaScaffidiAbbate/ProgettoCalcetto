<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>


<br><br><br><br>

<h1 style="text-align: center;">Prenotati ora</h1>

<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
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
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Martedì</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Mercoledì</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Giovedì</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Venerdì</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div><div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Sabato</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div><div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Domenica</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
</div>

<%@ include file="footer_user.jsp"%>