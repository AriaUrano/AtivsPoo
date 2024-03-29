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
    if (request.getParameter("random")!= null){
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
        <h2>Numeros Aleatórios</h2>
      
          <form action="random.jsp">
                    <input type="number" name="n"/>
                    <input type="submit" name="random" value="Gerar"/>
        </form>
        <hr/>
        <table border='1'>
            <tr>
                <th>Index</th>
                <th>Number</th>
            </tr>
            <%for (int i = 1; i <= n; i++){%>
            <% int random = ((int)(100*Math.random()));%>

            <tr>
                <td><%=i%></td>
                <td><%=random%></td>
            </tr>
            <%}%>
            
        </table>
        
    </body>
</html>