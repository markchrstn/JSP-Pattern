<html>
<head>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />	
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<script>
	function redirect()
	{
		window.location = 'index.jsp';
	}
</script>

</head>
<body>
<div class="container" style="text-align:center;">
<% 

String no = request.getParameter("number");
String pattern = request.getParameter("pat");
try{	
		
	int num =  Integer.valueOf(no);
		
		if(num<0){
	   		 /* out.println("Input positive integer."); */
	   		%>
	   		<div>
	   		<h1 style="color:red">Input positive integer.</h1>
	   		</div>
	   		<%@ include file="index.jsp" %>
<% 
	   	 }
	   	 else{
	   		out.print("<h1 style=color:red><pre>");
	   		for(int i=1; i<=num; i++) {       
	             out.println();	
	             if(i==1 || i==num) {
	                 for(int j=1; j<=num; j++){
	                     out.print(pattern);
	                 }
	             } 
	             else {
	                 for(int k=1; k<=num;k++) {
	                     if(k==1 || k == num) {
	                         out.print(pattern);
	                     }                    
	                     else { 
	                         out.print(" ");
	                     }
	                 }
	             }
	   		 }
	   		out.print("</pre>");
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