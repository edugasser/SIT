<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
if ($_POST['password'] = ""){
	$password = '';
}else{
	$password = $_POST['password'];
}
$enlace = mysql_connect('localhost', $_POST['username'], $password);
if (!$enlace) {
    die('No pudo conectarse: ' . mysql_error());
}
if (@mysql_select_db("mydb")){
  echo "existe la BBDD .. conectado a ella (para seguir creando tablas y datos ..)";

} else {
	$sql = 'CREATE DATABASE mydb';
	mysql_query($sql, $enlace);

	$mysqli = new mysqli('localhost', 'root', '', 'mydb');
	 
	if (mysqli_connect_error()) {
		die('Connect Error (' . mysqli_connect_errno() . ') '
				. mysqli_connect_error());
	}
	 
	if ($_POST['tipo'] == 'sin'){
		$file ="mydb_truncate.sql";
	}else{
		$file ="mydb.sql";
	}
	 
	$sql = file_get_contents($file);
	if (!$sql){
		die ('Error opening file');
	}
	 

	mysqli_multi_query($mysqli,$sql);
	 


	$mysqli->close();
	}
	rename("index.php", "index_antiguo.php");
	rename("index2.php", "index.php");
	sleep(3);
	header("Location: http://localhost/igovern");
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
 
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Instal·lacio iGovern</title>
<link rel="stylesheet" href="assets/css/style.default.css" type="text/css" />
<script type="text/javascript" src="assets/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="assets/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="assets/js/custom/general.js"></script>
<script type="text/javascript" src="assets/js/custom/index.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body class="loginpage">

	<div class="loginbox">
    	<div class="loginboxinner">
        	
            <div class="logo">
            	<h1><img width="200"src="assets/images/logo.png"></h1>
                <p>Instal·lació de l'aplicació</p>
            </div><!--logo-->
            
            <br clear="all" /><br />
            
            
            <form action="index.php" method="post">
				 
				 <p style="font-size:13pt;color:white">Crear base de dades</p><br>
				 <div class="username">
                	<div class="usernameinner">
                    	<input type="text" name="username" id="username" value="root" />
                    </div>
                </div>
                
                <div class="password">
                	<div class="passwordinner">
                    	<input type="password" name="password" id="password" value=""/>
                    </div>
                </div>
                

				 <input type="radio" name="tipo" id="1" value="con" checked> <label  for="1" style="color:white;font-size:11pt"> Amb dades d'exemple</label><br>
				 <input type="radio" name="tipo" id="2 " value="sin"> <label for="2"style="color:white;font-size:11pt"> Sense dades</label> 
				 <br><br>
                <button>Instal·lar</button>
                
               
            
            </form>
            
        </div><!--loginboxinner-->
    </div><!--loginbox-->


</body>

</html>


