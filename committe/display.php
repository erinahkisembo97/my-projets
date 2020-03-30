
<?php
$host = "localhost";
$username = "root";
$password= "";
$database="committee";
$con= mysqli_connect($host, $username, $password, $database);
if(!$con){
	die("database not connected");
}else{
	$select2 = "SELECT Person_to_meet, DAY_DATE, DAY_TIME, Room, Subject,Committee_Name FROM committeenames INNER JOIN committeemeeting ON committeenames.CommitteeID = committeemeeting.CommitteeID";
	

$query2=mysqli_query($con,$select2);
if( $query2){
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="display.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    	<script type="text/javascript">
    	$.fn.infiniteScrollUp=function(){
    		var self=this,tableBody=self.children()
    		tableBody.slice(40).hide(6000)
    		setInterval(function(){
    			tableBody.filter(':hidden').eq(0).fadeIn()
    			tableBody.eq(0).fadeOut(function(){
    				$(this).appendTo(self)
    				tableBody=self.children()
    			})
    		},6000)
    		return this
    	}
    	$(function(){
    		$('tbody').infiniteScrollUp()
    	})
    	</script>
    	<title>infiniteScrollUp</title>
</head>
<body>

 <div class="main-text hidden-xs">
    <div class="col-md-12">
	<h1 ><center>TODAY'S COMMITTEE MEETINGS</center></h1>
				
    <table class="table table-striped">
	 
    <thead>
	
      <tr>
        <th>COMMITTEE</th>
        <th>PERSON TO MEET</th>
        <th>DATE</th>
		<th>TIME</th>
		<th>ROOM</th>
		<th>SUBJECT</th>
      </tr>
    </thead>
    <tbody>
<?php	 
while($row=mysqli_fetch_array($query2)){
	?>
	 <tr>
	    <td><?php echo $row['Committee_Name']?></td>
        <td><?php echo $row['Person_to_meet'] ?></td>
        <td><?php echo $row['DAY_DATE'] ?></td>
		<td><?php echo $row['DAY_TIME'] ?></td>
		<td><?php echo $row['Room'] ?></td>
		<td><?php echo $row['Subject'] ?></td>
      </tr> 
<?php
}}else{
echo mysqli_error();
}
}

?>
  </tbody>

  </table>
          
                </div>
            </div>
        
	</body>
	</html>