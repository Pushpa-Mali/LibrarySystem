<%-- 
    Document   : viewLibrarian
    Created on : 31-Jul-2022, 4:33:35 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.LibrarianBean"%>
<%@page import="dao.LibrarianDao"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Librarian</title>
        <link rel="stylesheet" href="viewLibrarian.css">
    </head>
    <body>
        
       <%@include file="AdminNav.jsp"%>
        
       
        <table border="1" cellpadding="0" cellspacing="0">
            <tr class="headingRow"><th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Mobile</th>
                <th>Joining Date</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>Till Date</th>
             </tr>
             <jsp:useBean id="LibrarianBean" class="beans.LibrarianBean" scope="session"></jsp:useBean>
                  <%List<LibrarianBean> list =LibrarianDao.view();%>
                <%for(LibrarianBean bean:list){%>
            <tr>

                <td><%=bean.getId()%></td>
                <td><%=bean.getName()%></td>
                <td><%=bean.getEmail()%></td>
                <td><%=bean.getPassword()%></td>
                <td><%=bean.getmobile()%> </td>
                <td><%=bean.getJDate()%></td>
                
                <td><a href="editLibForm.jsp?id=<%=bean.getId()%>"><span style="color:black;">Edit</span></a></td>
                <td><a href="delLib.jsp?id=<%=bean.getId()%>"><span style="color:black;">Delete</span></a></td>
                
                <td><%=bean.getRDate()%></td>
            </tr>
            <%}%>
            
        </table>
          
        
                   
    </body>
</html>
