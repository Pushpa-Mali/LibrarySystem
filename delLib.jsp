<%-- 
    Document   : delLib
    Created on : 17-Aug-2022, 10:59:58 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.LibrarianBean"%>
<%@page import="dao.LibrarianDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Librarian</title>
    </head>
    <body>
        <%String sid = request.getParameter("id");
            int id = Integer.parseInt(sid);%>
            <%LibrarianDao.delete(id);
            response.sendRedirect("viewLibrarian.jsp");%>
    </body>
</html>
