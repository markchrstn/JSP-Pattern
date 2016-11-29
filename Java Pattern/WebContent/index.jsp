<html>
<head>

	<title>Insert a title.</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container" style="text-align:center;margin-bottom:100px">

<!-- <h1 style="margin:auto">...</h1> -->

</div>

<div class="container-fluid" style="width:500px;border-radius: 25px; border: 2px solid #73AD21; padding: 20px;margin-bottom:12px">
	<form action="Controller" method="post">
		<div style="margin-bottom:12px">
			 <label for="number">Enter an integer:</label>
			 <input class="form-control" required="required" type="text" name="number" id="number" oncut="return false" onpaste="return false" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
		</div>
	<div style="margin-bottom:12px">
		<label>Choose a pattern:</label> 					
		<select class="form-control" name="pat">
  			<option value="$">$</option>
  			<option value="*">*</option>
  			<option value="#">#</option>
  			<option value="@">@</option>
  			<option value="^">^</option>
		</select>
	</div>
	
	<label>Select Image</label>
	
	<div class="container" style="width:500px;margin-bottom:15px">
			  <input class="radio-inline" type="radio" name="pattern" value="diamond" checked="checked" style="padding-bottom:25px"> 
			  <img src="img/Diamon.png" width="75" height="100">
  			  <input type="radio" name="pattern" value="square"> 
  			  <img src="img/Square.PNG" width="75" height="100">
  			  <input type="radio" name="pattern" value="cross"> 
  			  <img src="img/Cross.PNG" width="75" height="100">
  			  <input type="radio" name="pattern" value="hourglass"> 
  			  <img src="img/HourGlass.png" width="75" height="100">	
	</div>
	
	<div class="container-fluid" style="text-align:center;margin-bottom:12px">
	<input class="btn btn-success" type="submit" name="action" value="Submit">
	<input class="btn btn-success" type="reset" name="action" value="Clear">
	</div>
	
</form>

</div>

</body>
</html>