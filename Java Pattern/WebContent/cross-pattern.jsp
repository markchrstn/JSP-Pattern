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
	   		if(num % 2 != 0)
	   		{
	   			for(int i = 0; i < num; i++) {
		            for(int j = 0; j < num; j++) {
		                if((i == num / 2) || (j == num / 2)) 
		                    out.print(pattern);
		                else 
		                    out.print(" ");
		            }
		            out.println();
		        }
	   		}
	   		else{
	   			
	   			for(int row = 0; row  < num; row++)
	   			{
	   				for(int column = 0; column < num; column++)
	   				{
	   					if((column == num/2 - 1 || column == num/2)||(row == num/2-1 || row == num/2))
	   						out.print(pattern);
	   					else{
	   						out.print(" ");
	   					}
	   				}
	   				out.println();
	   			}
	   			
	   			
	   			
	   			
	   			
	   			/* for(int i = 1; i <= num; i++) 
	   		  {
	   		         for(int j = 1; j <= num; j++) 
	   		         {
	   		        	 int min = Math.min(i+1, num-i);
	   		             if((i == num / 2) || (j == num / 2)) 
	   		                 out.print(pattern);

	   		             else 
	   		                out.print(" ");

	   		     }
	   		     out.println();	
	   		   } */
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