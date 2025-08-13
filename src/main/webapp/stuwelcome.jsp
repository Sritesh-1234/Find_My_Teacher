<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>STUDENT</title>
</head>

<body>

    <style>
       body{
    background-image: url('4k.jpg');
    background-size: cover;
     
}
#cont{
    margin-left: 280px;
}


.control input{
    background: rgb(5, 238, 250);
    color:white;
    text-transform: uppercase;
    font-size: 1.2em;
    opacity: .7;
    transition: opacity .3s ease;
    padding: 50px;
    border-color: aqua;
    border-radius: 30px;
    position: relative;
    left: 60px;
    top:280px;
    width: 8cm;
    height: 4.3cm;
    text-align: center;

    
    
}

.control2 input{
    background:green;
    color:white;
    text-transform: uppercase;
    font-size: 1.2em;
    opacity: .7;
    transition: opacity .3s ease;
    padding:60px;
    border-color:green;
    top:350px;
    position: relative;
    left: 56%;
    border-radius: 30px;
    border-top: 30px;
    width: 8cm;
   
}


.control3 input{
    background:rgb(0, 109, 128);
    color:white;
    text-transform: uppercase;
    font-size: 1.2em;
    transition: opacity .3s ease;
    padding:60px;
    border-color:rgb(2, 99, 125);
     top:200px;
    position: relative;
    left: 60px;
    border-radius: 30px;
    width: 8cm;
    
    
}

.control4 input{
    background:rebeccapurple;
    color:white;
    text-transform: uppercase;
    font-size: 1.2em;
    opacity: .7;
    transition: opacity .3s ease;
    padding:71px;
    border-color:rgb(102, 0, 128);
    bottom:170px;
    position: relative;
    left: 56%;
    border-radius: 30px;
    width: 8cm;
    
}
label{
    color: whitesmoke;
    text-transform: uppercase;
    font-size: 1.8em;
    opacity: .7;
    transition: opacity .3s ease;
    padding:60px;
    border-color:rgb(102, 0, 128);
    bottom:580px;
    position: relative;
    border-radius: 30px;   
    left: 10px;

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
        <form action="logoutbackend" method="post">
            <button class="open-button"><-] LOG OUT</button></div>
        </form>
        <div class="control">
            <form action="fdetails2.jsp">
                <input type="submit" name="submit" value=" FACULTY DETAILS">
            </form> 
        </div>
        <div class="control2">
            <form action="map.html">
            <input type="submit" name="submit" value=" CLG MAP"> 
        </form>
        </div>
        <div class="control3">
            <form action="savail.jsp">
                <input type="submit" name="submit" value=" AVAILABILITY">
            </form>
        </div>
        <div class="control4">
            <form action="sappoin.jsp">
                <input type="submit" name="submit" value="APPOINMENT">
            </form>
        </div>
        <div id="cont">
        <label>
            NAME:&emsp;${name}
          </label><P id="sname"></P>
          <label>
           ROLL NO:&emsp;${rollno}
         </label><P id="Rollnum"></P>
         <label>
           SEMESTER:&emsp;${sem}
         </label><P id="SEMname"></P>
         <label>
           SECTION:&emsp;${section}
         </label><P id="SECname"></P>
        </div>
    </div>
     

</body>
</html>