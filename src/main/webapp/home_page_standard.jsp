<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<br><br><br>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


	<div class="container">
  <h2>Sporting club Roma</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="https://wips.plug.it/cips/paginegialle.it/magazine/cms/2018/06/dimensioni-campo-da-calcetto.jpg?w=744&h=418&a=c" alt="Campo1" style="width: 1200px; height: 500px;">
      </div>

      <div class="item">
        <img src="http://www.adamsport.it/wp-content/uploads/2015/04/calcio-o-calcetto-a-5-cinque.jpg" alt="Campo2" style="width: 1200px; height: 500px;">
      </div>
    
      <div class="item">
        <img src="https://www.calcioefinanza.it/wp-content/uploads/2020/05/campo-di-calcio-societ%C3%A0-sportiva-dilettantistica.jpg" alt="Campo3" style="width: 1200px; height: 500px;">
      </div>
      
      <div class="item">
        <img src="https://bim.acca.it/wp-content/uploads/2019/09/progetto-di-un-campo-da-calcetto_rendering01.jpg" alt="Campo4" style="width: 1200px; height: 500px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>




<%@ include file="footer.jsp"%>
