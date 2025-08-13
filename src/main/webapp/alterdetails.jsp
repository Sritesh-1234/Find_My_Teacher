<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>sdetails</title>
    <link rel="stylesheet" type="text/css" href="./style.css">
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
</head>
<body>
    <form action="teawelcome.jsp">
        <button class="open-button">Home</button></div>
    </form>
	<%response.setHeader("Cache-Control","no-store,must-revalidate"); %>
    <center><div class="form-container">
        <form action="submitdetails" method="post">
        <table>

            <tr>
                <td>
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px; ">NAME:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chname" id="name" value="${name}" ${editable}>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name"style="margin-top:25px;">ID:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="id" id="name" value="${id}" readonly>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name"style="margin-top:25px;">PHONE_NO:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chnumber" id="name" value="${number}" ${editable}>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px;">EMAIL_ID:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chmail" id="name" value="${mail_id}" ${editable}>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px;">DEPARTMENT:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chdept" id="name" value="${branch}" ${editable}>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px;">POST:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chpost" id="name" value="${post}" ${editable}>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px;">BUILDING:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chbuilding" id="name" value="${building}" ${editable}>
                    </div>
                </td>
            </tr>
    
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px;">FLOOR:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chfloor" id="name" value="${floor}" ${editable}>
                    </div>
                </td>
            </tr>
            
            <tr>
                <td >
                    <div class="control2" style="display:flex">
                        <label for="name" style="margin-top:25px;">ROOM_NO:</label>
                    </div>
                </td>
                <td >
                    <div class="control2" style="display:flex">
                        <input type="text" name="chroomno" id="name" value="${roomno}" ${editable}>
                    </div>
                </td>
            </tr>
        

    </table>
    <div class="control3">
        <input type="submit" name="submit" value="SAVE">
    </div>
    </form>
        <div class="control3">
            <form action="editenabler" method="post">
                <input type="submit" name="submit" value="EDIT">
            </form>
        </div>
        
    </div></center>
    
</body>
</html>