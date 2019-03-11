<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <c:choose>
  		<c:when test="${ !empty sessionScope['utilisateur']}">
  	    <span>welcome ${ sessionScope['utilisateur'].login }</span>
  	    <a href="/projets2/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
		</c:when>
		<c:when test="${ empty sessionScope.login }">
			<a href="/projets2/login"><span class="glyphicon glyphicon-log-in"></span> Login</a>
			<a href="/projets2/signin"><span class="glyphicon glyphicon-log-in"></span> S'inscrire</a>
  		</c:when>
  	</c:choose>
    </ul>
  </div>
  <c:if test="${ !empty resultatCD}">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	swal({
		  title: "Demande créée avec succès",
		  text: "Vous recevrez un mail très prochainement",
		  icon: "success",
		});
	</script>
  </c:if>
</nav>