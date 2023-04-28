<%-- 
    Document   : ViewIssuedBook
    Created on : 05-Sep-2022, 4:48:30 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.IssueBookBean"%>
<%@page import="dao.BookDao"%>
<%@page import ="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="viewbook.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Issued Book</title>
    </head>
    <body>
        <%@include file="Libnav.jsp"%>
        <table border="1" cellpadding="0" cellspacing="0">
            <tr><th>Callno</th>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Student Mobile</th>
                <th>Issued Date</th>
                <th>Return Status</th>
                
                 
             </tr>
             <jsp:useBean id="IssueBookBean" class="beans.IssueBookBean" scope="session"></jsp:useBean>
             <%List<IssueBookBean> list =BookDao.viewIssuedBooks();%>
                <%for(IssueBookBean bean:list){%>
                <tr>

                <td><%=bean.getCallno()%></td>
                <td><%=bean.getStudentid()%></td>
                <td><%=bean.getStudentname()%></td>
                <td><%=bean.getStudentmobile()%></td>
                <td><%=bean.getIssueddate()%> </td>
                <td><%=bean.getReturnstatus()%></td>
                
                </tr>
                <%}%>
                </table>
    </body>
</html>
