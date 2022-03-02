<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<link href="stylesheet.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="https://i.ibb.co/xD4jCMS/palla.png" id="icon" alt="User Icon" style="height: 150px; width: 150px;"/>
    </div>

    <!-- Login Form -->
    <form action="dispatcher_login?action=login"method="POST">
      <input type="email" id="email" class="fadeIn second" name="email" placeholder="email">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
  </div>
</div>
