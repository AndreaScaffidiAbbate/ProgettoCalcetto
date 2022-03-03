<%@ include file="header.jsp"%>
<%@ include file="navbar_login.jsp"%>



<link href="stylesheet.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="https://i.ibb.co/xD4jCMS/palla.png" id="icon" alt="User Icon" style="height: 130px; width: 130px;"/>
    </div>

    <!-- Login Form -->
    <form action="dispatcher_login?action=login3"method="POST">
      <input type="email" id="email" class="fadeIn second" name="email" placeholder="email">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
      
  <div class="form-check form-switch form-group">
  <input style="margin-left: 45px;"class="form-check-input " type="checkbox" value="" id="check" name="check"/>
  <label style="margin-right: 70px;"class="form-check-label " for="flexSwitchCheckDefault">Spunta per accettare i Cookie.</label>
</div>
        <%if (request.getAttribute("emailnontrovata") != null) {%>
				<div class="alert alert-danger" role="alert"
					style="text-align: center;">Email e/o Password non corretti.
					</div>
				<%}%>

    </form>


  </div>
</div>
