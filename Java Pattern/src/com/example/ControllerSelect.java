package com.example;

public class ControllerSelect {

	public Object[][] getDiamond(int num, String pattern) {
	      Object[][] obj = new String[num][num];
	      for (int row = 0; row < num; row++) {
	        	for (int column = 0; column < num; column++) {
	            	int min = Math.min(row+1, num-row);
	            	if (column <= num / 2 - min || column >= num / 2 + min) {
	            		obj[row][column] = " ";
	            	} else {
	            		obj[row][column] = pattern;
	            	}
	        	}
	        	System.out.println();
	    	}
		return obj;
	 }
	
	public Object[][] getSquare(int num, String pattern){
		
		Object[][] obj = new String[num][num];
		
		for(int i=1; i<=num; i++) {       
            if(i==1 || i==num) {
                for(int j=1; j<=num; j++){
                    obj[i-1][j-1] = pattern;
                }
            } 
            else {
                for(int k=1; k<=num;k++) {
                    if(k==1 || k == num) {
                        obj[i-1][k-1] = pattern;
                    }                    
                    else { 
                        obj[i-1][k-1] = " ";
                    }
                }
            }
  		 }	
   		return obj;
	}
	
	public Object[][] getCross(int num, String pattern){
		Object[][] obj = new String[num][num];
		
		if(num % 2 != 0)
   		{
   			for(int i = 0; i < num; i++) {
	            for(int j = 0; j < num; j++) {
	                if((i == num / 2) || (j == num / 2)) 
	                	obj[i][j] = pattern;
	                else 
	                	obj[i][j] = " ";
	            }
	        }
   		}
		else
		{
			for(int row = 0; row  < num; row++)
   			{
   				for(int column = 0; column < num; column++)
   				{
   					if((column == num/2 - 1 || column == num/2)||(row == num/2-1 || row == num/2))
   							obj[row][column] = pattern;
   					else{
   							obj[row][column] = " ";
   					}
   				}
   			}
		}
		return obj;
	}
	
	public Object[][] getHourGlass(int input, String pattern){
		
		  Object[][] obj = new String[input][input];
		  
		  int i,j,k,l;

		if(input % 2 != 0)  
		    {
			
			int num = (input/2) + 1;
			
			for(i=0;i<num;i++) // i == row
		    {
		      for(j=0;j<i;j++) // j == col 1 row 0, col 2 row 0 & row 1, col 3 row 0, 1, 2
		    	  				//col 4 row 0, 1, 2, 3, col 4 row 0, 1, 2, 3
		      {
		    	  obj[i][j]= "";
		    
		      }
		      for(k=0;k<num-i;k++)
		      {
		    	obj[i][k + i] = pattern;
		        
		      }
		      for(l=0;l<num-i-1;l++)
		      {
		    	  if(i <= input/2-l) {
		    		  obj[i][num + l] = pattern;
		    	  } else {
		    		  obj[i][num + l] = " ";
		    	  }
		      }
		      
		    }
		    

		    for(i=0;i<num-1;i++)
		      {
		        for(j=0;j<num-i-2;j++)
		        {
		          obj[num + i][j] = "";
      
		        }
		        for(k=0;k<i+2;k++)
		        {
		         obj[num + i][num-k-1] = pattern;
		    
		          
		        }
		        for(l=0;l<i+1;l++)
		        {
		        	if(l <= i + l)
		        	{
		        		obj[num+i][num+l] = pattern;
		        	}
		        }
		      }
		return obj;
		   }
		
		else{
			
			int num = input / 2;
			
			for(i=0;i<num;i++)
		    {
		      for(j=0;j<i;j++)
		      {
		    	obj[i][j] = "";
		      }
		      for(k=0;k<num-i;k++)
		      {
		    	obj[i][k + i] = pattern;
		      }
		      for(l=0;l<num-i;l++)
		      {
		    	  if(i <= input/2-l)
		    	  {
		    		  obj[i][num + l] = pattern;
		    	  }
		      }
		    }

		  for(i=0;i<num;i++)
		    {
		      for(j=0;j<num-i-1;j++)
		      {
		    	obj[num + i][j] = "";  
		      }
		      for(k=0;k<i+1;k++)
		      {
		    	  obj[num + i][num-k-1] = pattern;
		      }
		      for(l=0;l<i+1;l++)
		      {
		    	  if(l <= i + l)
		      	{
		      		obj[num+i][num+l] = pattern;
		      	}
		      }
		    }
			return obj;
		}
	}
}
