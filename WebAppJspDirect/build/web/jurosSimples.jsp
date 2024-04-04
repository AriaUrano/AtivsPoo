<%-- 
    Document   : jurosSimples
    Created on : 2 de abr. de 2024, 22:00:05
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<%
DecimalFormat df = new DecimalFormat("#.##");

String errorMessage = null;
double cap=0, tj=0, mont=0;
int pm=0;
try{
    if (request.getParameter("jsimples")!= null){
        cap = Double.parseDouble(request.getParameter("cap"));
        tj = Double.parseDouble(request.getParameter("tj"));
        pm = Integer.parseInt(request.getParameter("pm"));
        mont = Double.parseDouble(request.getParameter("mont"));
      
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
        
      <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Juros Simples</h2>
        
        <form action="jurosSimples.jsp">
           
            <h4>Capital Inicial:</h4><input type="number" name="cap"/>
            <h4>Taxa de Juros decimal:</h4> <input type="number" name="tj"/>
            <h4>Periodo em Meses:</h4> <input type="number" name="pm"/>
            <input type="submit" name="jsimples" value="Calcular"/>
        </form>
        
         <hr/>
        <table border='1'>
            <tr>
               
                <th>Taxa de Juros</th>
                <th>Periodo em Meses</th>
                <th>Montante</th>
            </tr>
            
           
            <% double jsimples = cap * Math.pow(1+(tj/100), pm);%>

            <tr>
                
                <td><%=tj%></td>
                <td><%=pm%></td>
                <td><%= df.format(jsimples)%></td>
            </tr>
         
            
        </table>
            
    </body>
</html>
