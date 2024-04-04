<%-- 
    Document   : jurosCompostos
    Created on : 2 de abr. de 2024, 22:01:19
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
    if (request.getParameter("jcomp")!= null){
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
        <h2>Juros Compotos</h2>
        
        <form action="jurosCompostos.jsp">
           
            <h4>Capital Inicial:</h4><input type="number" name="cap"/>
            <h4>Taxa de Juros decimal:</h4> <input type="number" name="tj"/>
            <h4>Periodo em Meses:</h4> <input type="number" name="pm"/>
            <input type="submit" name="jcomp" value="Calcular"/>
        </form>
        
         <hr/>
        <table border='1'>
            <tr>
                <th>Mês</th>
                <th>Capital Inicial</th>
                <th>Taxa de Juros</th>
                <th>Periodo em Meses</th>
                <th>Montante</th>
            </tr>
            
           
            <% for (int i = 1; i <= pm; i++) {
                double jcomp = cap * Math.pow(1+(tj/100), i); %>

            <tr>
                <td><%=i%></td>
                <td><%=cap%></td>
                <td><%=tj%></td>
                <td><%=pm%></td>
                <td><%= df.format(jcomp)%></td>
            </tr>
            <%}%>
        </table>
            
    </body>
</html>
