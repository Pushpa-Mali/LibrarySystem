<%-- 
    Document   : editLibForm
    Created on : 16-Aug-2022, 7:27:29 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.LibrarianBean"%>
<%@page import="dao.LibrarianDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Librarian Form</title>
         <link rel="stylesheet" href="editLibrarian.css">
    </head>
    <body>
        <%@include file="AdminNav.jsp"%>
        
         <%String ids = request.getParameter("id");%>
         <%int i = Integer.parseInt(ids);%>
         
        <div class="card">
            <div class="content">
        <span class="head">Edit Librarian Form</span>
        <form action="editLibrarian" method = "post">
         <jsp:useBean id="LibrarianBean" class="beans.LibrarianBean" scope="session"></jsp:useBean>
         <%LibrarianBean bean = LibrarianDao.viewById(i);%>
         <input type='hidden' name='id' value=<%=bean.getId()%>> <br/>
            <div class="name">
                <label for="name">Enter Name</label>
                <input type="text" id="name" name="name" class="nameTxt" value=<%=bean.getName()%>><br>
            </div>
            
            <div class="email">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" class="emailText" value=<%=bean.getEmail()%>><br>
            </div>
        
            <div class="password">
                <label for="pasw">Password</label>
                <input type="password" id="pasw" name="pasw" class="passText" value=<%=bean.getPassword()%>><br>
            </div>
        
            <div class="mobile">
                <label for="mn">Mobile Number</label>
                <input type="text" id="mn" name="mn" class="mobtxt" value=<%=bean.getmobile()%>>
            </div><br>
            
            <div class="joiningDate">
                <label for="joinDate">Joining Date</label>
                <input type="date" id="joinDate" name="joinDate" value=<%=bean.getJDate()%>>
            </div>
            
            <div class="resignDate">
                <label for="resignDate">Resigning Date</label>
                <input type="date" id="resignDate" name="resignDate">
            </div><br>
       
            <div class="submit"> <input type="submit" id="sub" name="submit" value="Update" class="btn"></div>
            
        </div>
        </div>
        </form>
    </body>
</html>
