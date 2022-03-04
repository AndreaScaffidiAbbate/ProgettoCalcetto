<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>


<h1 style="margin-top: 150px; text-align: center;">La mia squadra</h1>

<div style="margin-top: 30px; margin-left: 50px; margin-right: 50px; background-color: white;" class="rounded-3">
<table class="table caption-top" >
  <caption>List of users</caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>

<div style=" margin-left: 50px; margin-right: 50px;  margin-top: 50px; margin-bottom: 50px;">
<input type="button" class="btn btn-dark" value="Prenotati ora" style="width: 100%; height: 60px;" onclick=" relocate_home()">
			
			<script>
			function relocate_home()
			{
			     location.href = "calendar_day.jsp";
			} 
			</script>
</div>


<div style="margin-left: 50px; margin-right: 50px; background-color: white;" class="rounded-3">
<table class="table caption-top" >
  <caption>List of users</caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>
      <input type="button" class="btn btn-dark" value="Modifica"onclick=" relocate_home()">
			
			<script>
			function relocate_home()
			{
			     location.href = "calendar_day.jsp";
			} 
			</script>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>


<br><br><br><br>
<%@ include file="footer_user.jsp"%>
