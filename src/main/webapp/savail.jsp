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
  
.contain{
    position:absolute;
    left:13%;
    top: 40%;
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
  <form action="stuwelcome.jsp?">
    <button class="open-button">HOME</button></div>
</form> 
  <table>
    <tr>
     <td><label for=" choose your branch"> BRANCH:</label></td>
     <td> 
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
</td>
<form action="savailbackend" method="post">
    <td><label for=" choose your teacher"> TEACHER:</label ></td>
    <td>
  <select name="tname" id="branch name">
            <%
            String url="jdbc:mysql://localhost:3306/findyourteacher";
        	String uname="root";
        	String pass="anup";
        	
        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");
        	    Connection con = DriverManager.getConnection(url,uname,pass);
        	    
        	    Statement st=con.createStatement();
        	    ResultSet rs = st.executeQuery("select name from teacherdetails;");
        	    
        	    while(rs.next())
        	    {
        	    	String a=rs.getString("name");
        	    	//"<option value=\""+a+"\">"+a+"</option>"
        		    out.println("<option value=\""+a+"\">"+a+"</option>");
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
</td>
<td><input type="submit" name="submit" value="Check"></td>
</tr>
</table>
</form>

<br></br>
<div class="contain" style="font-size: 2em;">
   <label>${xavl }<p id="name"></p></label></div>
        

</body>
</html>