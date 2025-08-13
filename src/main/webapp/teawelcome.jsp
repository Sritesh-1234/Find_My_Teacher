<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        top:300px;
        width: 8cm;
        height: 4.3cm;
        text-align: center;
    
        
        
    }
    
    .control2 input{
        background:rgb(11, 212, 11);
        color:white;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
        padding:60px;
        border-color:rgb(12, 213, 12);
        top:360px;
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
         top:220px;
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
        padding:70px;
        border-color:rgb(102, 0, 128);
        bottom:140px;
        position: relative;
        left: 56%;
        border-radius: 30px;
        width: 8cm;
        
    }
    .control5 input{
        background:rgb(153, 51, 80);
        color:white;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
        padding:60px;
        border-color:rgb(128, 0, 60);
        top:100px;
        position: relative;
        left: 32%;
        border-radius: 30px;
        width: 8cm;
       
    }
    
    label{
        color: whitesmoke;
        text-transform: uppercase;
        font-size: 1.5em;
        opacity: .7;
        transition: opacity .3s ease;
        padding:30px;
        border-color:rgb(102, 0, 128);
        bottom:760px;
        position: relative;
        border-radius: 30px;   
        
    
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
           <%session.setAttribute("editable","readonly"); %> 
    
            <div class="control">
              <form action="alterdetails.jsp" method="post">
             <input type="submit" name="submit" value="MY DETAILS">
            </form>
             
            </div>
            <div class="control2">
              <form action="fdetails.jsp">
                <input type="submit" name="submit" value="FACULTY DETAILS"></form>
            </div>
            <div class="control3">
              <form action="eavail.jsp">
                <input type="submit" name="submit" value="MY AVAILABILITY">
              </form>
            </div>
            <div class="control4">
              <form action="appointmentt.jsp">
                <input type="submit" name="submit" value="APPOINMENT">
              </form>
            </div>
            <div class="control5">
              <form action="map.html">
              <input type="submit" name="submit" value="MAP">
            </form>
          </div>
              
               <div id="cont">
                <label>
                    NAME:&emsp;${name}
                  </label><P id="sname"></P>
                  <label>
                   POST:&emsp;${post}
                 </label><P id="post"></P>
                 <label>
                   DEPARTMENT:&emsp;${branch}
                 </label><P id="dptname"></P>
                 <label>
                   BUILDING:&emsp;${building}
                 </label><P id="buildname"></P>
                 <label>
                   FLOOR:&emsp;${floor}
                 </label><P id="fname"></P>
                 <label>
                   ROOM NO:&emsp;${roomno}
                 </label><P id="Rname"></P>
                </div>
        </div>
         
    
    </body>
    </html>