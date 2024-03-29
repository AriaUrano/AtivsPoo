<%-- 
    Document   : soma
    Created on : 28 de mar. de 2024, 21:44:24
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String errorMessage = null;
double n1=0, n2=0, result=0;
try{
    if (request.getParameter("soma")!= null){
        n1 = Double.parseDouble(request.getParameter("n1"));
        n2 = Double.parseDouble(request.getParameter("n2"));
        result = n1 +n2;
    }
    }catch(Exception ex){
        errorMessage = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h4><a href="index.jsp">Voltar</a></h4>
        <h4>Soma</h4>
        <%if(errorMessage==null){%>
        <div><%=n1%> + <%=n2%> = <%=result%></div>
        <%}else{%>
        <div style="color:red"><%=errorMessage%></div>
        <%}%>
        
    </body>
</html>