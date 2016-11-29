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
/* 	   		 out.println("Input positive integer.");
 */	   		%>
	   		
	   		<div>
	   		<h1 style="color:red">Input positive integer.</h1>
	   		</div>
	   			
	   		<%@ include file="index.jsp" %>
	   	
<% 
	   	 }
	   	 else{
	   		out.print("<h1 style=color:red><pre>");
	   		if(num % 2 == 0)
	   		{
	   			for(int i=0; i < num/2; i++ ) {
	   			  for(int j = num - i; j < num; j++) {
	   			     out.print("");
	   			  }
	   			  for(int j = 0; j < num - 2*i; j++) {
	   			     out.print(pattern);
	   			  }
	   			  out.println();
	   			}

	   			for(int i=num/2 -1; i >=0; i-- )  // based on first half, in reverse order
	   			{
	   			  for(int j = num - i; j < num; j++) {
	   			     out.print("");
	   			  }
	   			  for(int j = 0; j < num - 2*i; j++) {
	   			     out.print(pattern);
	   			  }
	   			  out.println();
	   			}
	   		}
	   		else{
	   			
	   			for(int i=0; i < num/2; i++ ) {
	   			    for(int j = num - i; j < num; j++) {
	   			        out.print("");
	   			    }
	   			    for(int j = 0; j < num - 2*i; j++) {
	   			        out.print(pattern);
	   			    }
	   			    out.println();
	   			}


	   			for(int i=0; i < (num+1)/2; i++ )
	   			{
	   			    for(int j = 1; j <= num/2 - i; j++)
	   			        out.print("");
	   			    for(int j = 0; j <= i*2; j++)
	   			        out.print(pattern);
	   			    out.println();
	   			}
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