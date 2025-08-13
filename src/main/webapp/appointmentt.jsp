<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./style.css">
    <title>Document</title>
</head> 
<body>
    <style>
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
    <form action="teawelcome.jsp">
        <button class="open-button">Home</button></div>
    </form>
    <h1>
        APPOINMENT LIST:
    </h1>
    <center>
        <table>
        <%
                String url="jdbc:mysql://localhost:3306/findyourteacher";
                String uname="root";
                String pass="anup";
                String tid=(String) session.getAttribute("id");
                
                String query="select rollno,reason from appoin where tid='"+tid+"';";

                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url,uname,pass);
                    
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next())
                    {
                        String a=rs.getString("rollno");
                        String b=rs.getString("reason");


                        out.println("<tr>");

                        out.println("<td>"+a+"</td>");
                        out.println("<td>"+b+"</td>");
                        out.println("<td>");
                            out.println("<input type=\"submit\" name=\"submit\" value=\"Approve\"> ");//<input type=\"submit\" name=\"submit\" value=\"Approve\"> 
                        out.println("<td>");
                        out.println("<td>");
                            out.println("<input type=\"submit\" name=\"submit\" value=\"Discard\"> ");
                        out.println("<td>");

                        out.println("</tr>");
                    }
                    st.close();
                    con.close();
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
        %>
        </table>
    </center>
</body>
</html>