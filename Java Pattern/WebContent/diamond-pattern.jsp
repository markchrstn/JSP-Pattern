<html>
<head>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />	
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<script>
	function redirect()
	{
		window.location = 'index.jsp';
	}
</script>
<body>

<div class="container" style="text-align:center;">
<% 

String no = request.getParameter("number");
String pattern = request.getParameter("pat");
try{	
		
	int num =  Integer.valueOf(no);
		
		if(num<0){
	   		%>
	   		<div>
	   		<h1 style="color:red">Input positive integer.</h1>
	   		</div>
	   		<%@ include file="index.jsp" %>
<% 
	   	 }
	   	 else{
	   		out.print("<h1><pre>");
	   		for (int row = 0; row < num; row++) {
	        	for (int column = 0; column < num; column++) {
	            	int min = Math.min(row+1, num-row);
	            	if (column <= num / 2 - min || column >= num / 2 + min) {
	                	out.print(" ");
	            	} else {
	                	out.print(pattern);
	            	}
	        	}
	        	out.println();
	    	}
	   		out.print("</pre></h1>");
	   		%>
	   		<input type="submit" class="btn btn-default" value="Back" onclick="redirect()">
	   		<%
	   	 }
	}catch(Exception e)
	{
		/* out.println("Input an integer."); */
		%>
			<div>
	   		<h1 style="color:red">Input an integer.</h1>
	   		</div>
   		<%@ include file="index.jsp" %>
<% 
	}
	
	

%>
</div> 
</body>
</html>