<%-- 
    Document   : ramdom
    Created on : 28 de mar. de 2024, 21:44:38
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String errorMessage = null;
int n=10;
try{
    if (request.getParameter("tab")!= null){
        n = Integer.parseInt(request.getParameter("n"));
      
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
        <h2>Tabuada</h2>
      
        <form action="tabuada.jsp">
                    <input type="number" name="n"/>
                    <input type="submit" name="tab" value="Gerar"/>
        </form>
        <hr/>
        <table>
            <%for (int i = 1; i <= 10; i++){%>
            <tr>
                <td><%=n%></td>
                <td>x <%=i%></td>
                <td> <%=(n*i)%></td>
            </tr>
            <%}%>
            
        </table>
        
    </body>
</html>