<%-- 
    Document   : AddLibrarian
    Created on : 23-Jun-2022, 1:38:26 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Librarian</title>
        <link rel="stylesheet" href="addLibrarian.css">
    </head>
    <body>
        
        <%@include file="AdminNav.jsp"%>
        <div class="card">
            <div class="content">
        <span class="head">Add Librarian Form</span>
        <form action="AddLibrarian" method = "post">
         
            <div class="name">
                <label for="name">Enter Name</label>
                <input type="text" id="name" name="name" class="nameTxt"><br>
            </div>
            
            <div class="email">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" class="emailText"><br>
            </div>
        
            <div class="password">
                <label for="pasw">Password</label>
                <input type="password" id="pasw" name="pasw" class="passText"><br>
            </div>
        
            <div class="mobile">
                <label for="mn">Mobile Number</label>
                <input type="text" id="mn" name="mn" class="mobtxt">
            </div><br>
            
            <div class="joiningDate">
                <label for="joinDate">Joining Date</label>
                <input type="date" id="joinDate" name="joinDate">
            </div><br>
       
            <div class="submit"> <input type="submit" id="sub" name="submit" value="Submit" class="btn"></div>
            <p class="errmssg">${sccsMssg}</p>
        </div>
        </div>
        </form>
        <div class="svg1"><img src="addLibrarian.svg"/></div>
    </body>
</html>
