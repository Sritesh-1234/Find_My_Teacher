<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"%>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
        <title>EMPLOYEE</title>
        <link rel="stylesheet" type="text/css" href="./style2.css">
        <style>
          .control input{
        width: 90%;
        display: block;
        padding: 10px;
        color: rgb(32, 26, 26);
        border:none;
        outline: none;
        margin: 1em 0;
        border-radius: 10px;
        margin-right: 30px;
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
    </head>
    
    <body> 
      <form action="stuwelcome.jsp">
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
    <form action="fdetailsbackend" method="post">
          <td><label for=" choose your branch"> TEACHER:</label></td>
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
          <td><input type="submit" name="submit" value="Search"></td>>
        </tr>
      </table>
    </form>
    <br></br>
           
            <label>
               NAME:${xname}
            </label><P id="sname"></P>
            <label>
              NUMBER:${xnumber}
            </label><P id="snumber"></P>
            <label>
              POST:${xpost}
            </label><P id="POST"></P>
            <label>
              DEPARTMENT:${xbranch}
            </label><P id="dept"></P>
            <label>
              BUILDING:${xbuilding}
            </label><P id="build"></P>
            <label>
              FLOOR:${xfloor}
            </label><P id="fname"></P>
            <label>
              ROOM NO:${xroomno}
            </label><P id="Rname"></P>
             
               
    
        </label>
            
    
    </body>
    </html>