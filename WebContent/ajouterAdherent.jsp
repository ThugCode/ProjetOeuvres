<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="lib/jquery/jquery-1.11.2.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<title>Ajouter un  adhérent</title>
</head>
<script language="Javascript" type="text/javascript"></script>
<script type="text/javascript" src="js/foncControle.js"></script>


<body>
	<H1> Ajout d'un adhérent </H1> 

<DIV align="center">
<FORM  name='identification' method="post" action="Controleur?action=insererAdherent" onsubmit="return teste()">
     <P align="left"><FONT face="Arial" color="#004080"></FONT>     
		<FONT face="Arial" color="#004080"> <BR>&nbsp;  &nbsp;  &nbsp; Nom de l'adherent : </FONT>
	    <INPUT type="text" name="txtnom" value=""  id ="nom"> <BR>
        <FONT face="Arial" color="#004080">
		<BR>Prenom de l'adherent : </FONT>
        <INPUT type="text" name="txtprenom"  id ="prenom"  > <BR>
        
        <FONT face="Arial" color="#004080"> <BR>&nbsp;  &nbsp;  &nbsp; Ville de l'adherent :</FONT>
        <INPUT type="text" name="txtville" id ="ville">
        <FONT face="Arial" color="#004080">	<BR></FONT><BR>
        
          <!-- Boutons Ajouter -->
          
        <INPUT type="submit" name="bt"  value="Ajouter" >
        <FONT face="Arial" color="#004080"></FONT>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
</P></FORM>
</DIV>
<BR>
</body>
</html>