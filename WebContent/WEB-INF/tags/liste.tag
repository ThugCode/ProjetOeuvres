<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@attribute name="titre" %> <!--  Titre au dessus du tableau -->
<%@attribute name="classe" %> <!-- Servlet name -->
<%@attribute name="ajout" %> <!-- Label du bouton ajouter -->
<%@attribute name="nbPage" %> <!-- Nombre de page pour la pagination -->
<%@attribute name="currentPage" %> <!-- Num�ro de page -->
<%@attribute name="currentNumberPerPage" %> <!-- Nombre d'objet par page -->

<div class="liste" id="liste">
	
	<p id="titleList">
		${titre}
	</p>
	
	<div class="buttonHeader">
		<a type="button" class="btn btn-warning" href="index.jsp">
			<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span> Retour accueil
		</a>
		<a type="button" class="btn btn-success" href="${classe}?action=ajouter">
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> ${ajout}
		</a>
		
		<div id="dropdownDisplayPerPage" class="dropdown">
			Afficher
			<button class="btn btn-default dropdown-toggle" type="button" id="dropdownDPPButton" 
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			  ${currentNumberPerPage}
			  <span class="caret"></span>
			</button>
			par page

			<ul class="dropdown-menu" aria-labelledby="dropdownDPPButton">
			  <li class="parPageButton" data-value="5"><a>5</a></li>
			  <li class="parPageButton" data-value="10"><a>10</a></li>
			  <li class="parPageButton" data-value="20"><a>20</a></li>
			  <li class="parPageButton" data-value="50"><a>50</a></li>
			  <li class="parPageButton" data-value="-1"><a>Tous</a></li>
			</ul>
		</div>
	</div>
	
	<div class="table-body">
		<jsp:doBody/>
	</div>
		
	<div class="buttonFooter">
		<ul class="pagination">
			<li class="pageButton" data-value="1">
				<a aria-label="Premi�re">
					<span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
				</a>
			</li>
			<li class="pageButton" data-value="${currentPage-1}">
				<a aria-label="Pr�c�dente">
					<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>
				</a>
			</li>
			
			<c:forEach var="i" begin="1" end="${nbPage}">
				<li class="pageButton" data-value="${i}"><a>${i}</a></li>
			</c:forEach>
			
			<li class="pageButton" data-value="${currentPage+1}">
				<a aria-label="Prochaine">
					<span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>
				</a>
			</li>
			<li class="pageButton" data-value="${nbPage}">
				<a aria-label="Derni�re">
					<span class="glyphicon glyphicon-step-forward" aria-hidden="true"></span>
				</a>
			</li>
		</ul>
	</div>
	
	<form id="changeTab" class="form-horizontal" method="post" action="${classe}?action=liste">
		<input type="hidden" id="currentPage" name="currentPage" class="form-control" value="${currentPage}">
		<input type="hidden" id="currentNumberPerPage" name="currentNumberPerPage" class="form-control" value="${currentNumberPerPage}">
	</form>	
		
</div>