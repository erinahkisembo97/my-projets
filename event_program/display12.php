
<?php
$host = "localhost";
$username = "root";
$password= "";
$database="cpc_events";

$con= mysql_connect($host, $username, $password);
if(!$con){
	die("database not connected");
}else{
	mysql_select_db('cpc_events');
	$select2 = "SELECT * FROM tbl_events where  DATE = ".'CURDATE()'."";
	

$query2=mysql_query($select2);
if( $query2){
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="display.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
    	<title>frontend</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy"
		crossorigin="anonymous">
<style>
html, body{
  height: 100%;
  /*background: url('BA5.png');*/
  background-repeat: no-repeat;
  font-family: 'Saira Condensed', Arial, "Helvetica Neue", Helvetica, sans-serif;

  font-size: 14px;
  font-style: bold;
    -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#container {
      position: absolute;
     bottom:0px; 
    top: 120px;  
     width: 100%;
}

 table {
  bottom:0px; 
  border-collapse: collapse;
  width: 100%;
  position: static;
 table-layout:fixed;
  margin: 0 auto;


}


.sub{
border-color: white;
}



.noborder{
      border: none!important;
}
table tr:last-child td {
  border: 4px solid white;
}

table tr:last-child th {
 padding: 1rem;
  border: 4px solid white;
}

table td {
  padding: 1rem;
  border: 4px solid white; 
}
table tr:first-child td {
 border: 4px solid white;
}
table tr td:first-child {
   border: 4px solid white;
}
table tr:last-child td {
  border: 4px solid white;
}
table tr td:last-child {
 border: 4px solid white;
  
}
		</style>

</head>
<body>
<small style="float: right;font-size:12px">  
<iframe   src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=en&size=large&timezone=Africa%2FKampala" 
  frameborder="0" seamless></iframe> 
</small> 
 <?php 
if(mysql_num_rows($query2) > 0){
?>  
 <div  class="main-text hidden-xs " id="container">
    <div class="col-md-15"  > 
 <table   id="dtBasicExample" class="table table-striped table-sm table-dark" cellspacing="0" width="100%"  style="height: 100%; ">

        <thead>
      <tr>
        <th class="sub "  style="width: 290px">TIME</th>
        <th class="sub "  width="750px">EVENT</th>
        <th class="sub ">VENUE</th>
      </tr>
    </thead>
 
   <tbody>
<?php    
while($result=mysql_fetch_array($query2)){
    ?>
     <tr >
        <td class="sub " height="50px"><?php echo $result['start_time']."-".$result['end_time'];?></td>
        <td class=" sub "><?php echo $result['events']; ?></td>
        <td class=" sub "><?php echo $result['venue']; ?></td>
      </tr> 
<?php
 } ?>
  </tbody>

  </table>
  </div></div>
</body>
<?php } } } ?>
</html>