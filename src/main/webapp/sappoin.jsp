<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"%>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
        <title>EMPLOYEE</title>
        
    </head>
    
    <body>  
    
      <style>
    
    body{
        background-image: url('4k.jpg');
        background-size: cover;
         
    }
    
    label{
        color: whitesmoke;
        text-transform: uppercase;
        font-size: 2.3em;
        opacity: .7;
        transition: opacity .3s ease;
        padding:30px;
        border-color:rgb(102, 0, 128);
        bottom:900px;
        
        left: 600px;
    } 
    .control3 input[type="submit"]{
        background: rgb(13, 219, 219);
        color: #fff;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
        padding: 8px;
    
    
    }
    .control3 input[type="submit"]:hover{
        opacity: 1;
    }
    .open-button {
  background-color: rgb(187, 23, 23);
  color: white;
  border: none;
  opacity: 0.8;
  margin-left: 1150px;
  bottom: 23px;
  width: 150px;
  height: 50px;
  border-radius: 10px;
}
      </style>
      <form action="stuwelcome.jsp">
        <button class="open-button">HOME</button></div>
    </form> 
    <label for=" choose your branch"> BRANCH:</label>
          
    <select name="branch name" id="branch name">
        <option value="CSE">BRANCH</option>
        <option value="CSE"> CSE</option>
        <option value="ECE"> ECE</option>
        <option value="EEE"> EEE</option>
        <option value="EE"> EE</option>
        <option value="BT"> BT</option>
        <option value="CV">CV</option>
        <option value="CST">CST</option>
        <option value="MBA"> MBA</option>
    </Select>
    <form action="sappoinbackend" method="post">
        <label for=" choose your teacher"> TEACHER:</label >
      
        <select name="tid" id="branch name">
            <%
            String url="jdbc:mysql://localhost:3306/findyourteacher";
        	String uname="root";
        	String pass="anup";
        	
        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");
        	    Connection con = DriverManager.getConnection(url,uname,pass);
        	    
        	    Statement st=con.createStatement();
        	    ResultSet rs = st.executeQuery("select name,id from teacherdetails;");
        	    
        	    while(rs.next())
        	    {
        	    	String a=rs.getString("name");
                    String b=rs.getString("id");
        	    	//"<option value=\""+a+"\">"+a+"</option>"
        		    out.println("<option value=\""+b+"\">"+a+"</option>");
        	    }
        	    
        	    st.close();
        	    con.close();
        	} catch (ClassNotFoundException e) {
        		e.printStackTrace();
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
            %>
        </Select>
      
        <br></br>
        <div class="control" style="margin-left: 380px ; margin-top: 100px;">
            <label for="name"> Appoinment Request:-</label><br></br>
            <div class="control" style="margin-left: 59px ; margin-top: 20px;" >
                <input type="text" id="name1" name="reason" size="50" height="60%">
            </div>
        </div>
        <div class="control3 " style="margin-left: 719px; margin-top: 20px;">
            <input type="submit" name="submit" value="SUBMIT">
        </div>
</form>
    </body></html>