<%@page import="java.util.Locale"%>
<%@page import="java.time.format.TextStyle"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.LocalDate"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<link href="stylesheetcalendar.css" rel="stylesheet" id="bootstrap-css10">


<br><br><br><br>

<h1 class="titolo">Prenotati ora</h1>
 <% LocalDate currentdate = LocalDate.now();
 	
 	
 %> 

<br><br><br><br>

<div class="row row-cols-1 row-cols-md-5 g-4" style="margin-left: 300px; margin-right: 300px; padding-bottom: 50px;">
  <div class="col">
    <div class="card h-100 cards">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;"><%= currentdate %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
         <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(1)">
			
		

			
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
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(1)  %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(1).getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
        <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(2)">
			
	
		</div>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(2)  %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(2).getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
        <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(3)">
			
		

			
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
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(3)  %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(3).getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
         <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(4)">
			
	

			
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
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(4)  %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(4).getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
         <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(5)">
			
	

			
			<script>
			function relocate_home()
			{
			     location.href = "calendar_day.jsp";
			} 
			</script>
		</div>
      </div>
    </div>
  </div><div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(5)  %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(5).getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
         <div style="padding-top: 30px; padding-left: 40px;">

        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(6)">
			
			<script>
			function relocate_home()
			{
			     location.href = "calendar_day.jsp";
			} 
			</script>
		</div>
      </div>
    </div>
  </div><div class="col">
    <div class="card h-100">
      <img src="https://media.istockphoto.com/vectors/soccer-football-field-ground-vector-id1171762234?k=20&m=1171762234&s=612x612&w=0&h=9nftWoloABB6_g4dKd5OPKgk-I7di07DxnxNa-PjU2o=" class="card-img-top" alt="pitch">
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(6)  %></h5>
        <h5 class="card-title" style="text-align: center;"><%= currentdate.plusDays(6).getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.ITALIAN) %></h5>
         <div style="padding-top: 30px; padding-left: 40px;">
        <input type="button" class="btn btn-dark" value="Prenotati ora" onclick=" relocate_home(7)">
			
			
			
			
		</div>
      </div>
    </div>
  </div>
</div>
	<script>
			function relocate_home(ngiorno)
			{
				var today = new Date();
			     location.href = "GestionePrenotazione?ngiorno=" + ngiorno+"&dataP="+today.getFullYear()+'-'+("0" + (today.getMonth() + 1)).slice(-2)+'-'+("0" +( today.getDate()+ngiorno-1)).slice(-2);
			} 
			</script>
<%@ include file="footer_user.jsp"%>