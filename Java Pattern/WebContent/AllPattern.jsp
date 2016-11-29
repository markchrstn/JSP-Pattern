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
			
	<%@page import="java.util.*" %>
	<%
		Object[][] result = (Object[][])request.getAttribute("result");
	
	out.println("<h1><pre>");
	 for(int k = 0; k <= result.length-1; k++)
   	 {
   		 for(int kk = 0; kk < result[k].length; kk++)
   		 {
   			 if(result[k][kk] == null)
   			 {
   				 result[k][kk] = " ";
   			 }
   			 else{
   			 out.print(result[k][kk]);
   			 }
   		 }
   		 out.println();
   	 }
	out.print("</pre></h1>");
	%>
	  
 	<input type="submit" class="btn btn-success" value="Back" onclick="redirect()">

</div>
</body>
</html>