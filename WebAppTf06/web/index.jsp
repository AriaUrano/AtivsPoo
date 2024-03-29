<%-- 
    Document   : index
    Created on : 28 de mar. de 2024, 21:43:07
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h4><a href="dataHora.jsp">Data Hora</a></h4>
        
        
          <h4>Soma</h4>
        <form action="soma.jsp">
            <input type="number" name="n1"/>+
            <input type="number" name="n2"/>
            <input type="submit" name="soma" value="="/>
        </form>
        
        <h4>Numeros Aleatórios</h4>
        <form action="random.jsp">
                    <input type="number" name="n" value='10'/>
                    <input type="submit" name="random" value="Gerar"/>
        </form>
  
        <h4>Tabuada</h4>
        <form action="tabuada.jsp">
                    <input type="number" name="n" value='2'/>
                    <input type="submit" name="tab" value="Gerar"/>
        </form>
    </body>
</html>
