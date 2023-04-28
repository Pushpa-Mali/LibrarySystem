<%-- 
    Document   : ViewBook
    Created on : 05-Sep-2022, 1:17:30 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.BookBean"%>
<%@page import="dao.BookDao"%>
<%@page import ="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="viewbook.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Book</title>
    </head>
    <body>
        <%@include file="Libnav.jsp"%>
        <table border="1" cellpadding="0" cellspacing="0">
            <tr><th>Callno</th>
                <th>Name</th>
                <th>Author</th>
                <th>Publisher</th>
                <th>Total Quantity</th>

                <th>Issued</th>
                <th>Stream</th>
                <th>Delete</th>    
             </tr>
             <jsp:useBean id="BookBean" class="beans.BookBean" scope="session"></jsp:useBean>
             <%List<BookBean> list =BookDao.view();%>
                <%for(BookBean bean:list){%>
                
                 <tr>

                <td><%=bean.getCallno()%></td>
                <td><%=bean.getName()%></td>
                <td><%=bean.getAuthor()%></td>
                <td><%=bean.getPublisher()%></td>
                <td><%=bean.getQuantity()%> </td>
                <td><%=bean.getIssued()%></td>
                <td><%=bean.getStream()%></td>
                <td><a href="delBook?callno=<%=bean.getCallno()%>"><span style="color:black;">Delete|</span></td>
                </tr>
                <%}%>
                </table>
    </body>
</html>
