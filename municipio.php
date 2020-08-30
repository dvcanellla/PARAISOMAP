<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
 
<!-- conectar a bbdd-->
  
    <?php
$servername = "localhost";
$username = "id14491263_dvcanella";
$password = "xQ=xU+Eg8)E\Jh*t";
$database = "id14491263_paraisomap";
    
//$sql = "SELECT nombre FROM Destinos";
    
$sql = "SELECT Municipio.NombreMunicipio, Municipio.Descripcion, FotoPortada.Foto, Sitio.NombreSitio, Sitio.DescripcionSitio, TipoSitio.Tipo
FROM TipoSitio INNER JOIN ((Municipio INNER JOIN FotoPortada ON Municipio.IdMunicipio = FotoPortada.Municipio) INNER JOIN Sitio ON Municipio.IdMunicipio = Sitio.IdMunicipio) ON TipoSitio.IdTipoSitio = Sitio.TipoSitio;    
";    

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully"; 
    } catch(PDOException $e) {    
    echo "Connection failed: " . $e->getMessage();
    }
    
    echo $_GET["nombre"];
    echo $_GET["contraseña"];
    
    
foreach ($conn->query($sql) as $row) {
        print $row['nombre'] . "</br>";
}
    
    
//$resultado = mysql_query("SELECT nombre  FROM Destinos");
//echo mysql_result($resultado, 2); 
?>
 
 
<!--    fin conectar a bbdd-->
  
   
    <p>Hola: <?php echo $_GET["nombre"]; ?></p>
    <p>tu contraseña es: <?php echo $_GET["contraseña"]; ?></p>
    <p>check <?php echo $_GET["check"]; ?></p> 
    
    Municipio: <?php echo $_GET["l"]; ?><br>  
    
    
    
    
<!--https://www.php.net/manual/es/function.mysql-query.php-->
<!--https://www.000webhost.com/forum/t/how-to-connect-to-database-using-php/42093-->   
    
</body>
</html>