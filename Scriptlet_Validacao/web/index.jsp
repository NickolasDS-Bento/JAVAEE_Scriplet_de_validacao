<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 20:25:54
    Author     : Nickolas Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

String usuario = request.getParameter("usuario");
String senha = request.getParameter("senha");

if (usuario != null) {
        session.setAttribute("usuario", usuario );
    }

 String sessionName = (String)request.getAttribute("usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NickolasDanielApp</title>
    </head>
    <body style="background-color: cadetblue">
        <%@include file="WEB-INF/jspf/header.jspf"%>
       
        </br>
        <hr>
        <div style="align-content: center">
        <form>
        <h1>Tela de Login</h1>
        <h3>Usuario</h3>
        <input type ="text"  name="usuario" value="" />
        </br>
        </br>
        <h3>Senha</h3>
        <input type ="password"  name="senha" value="" />
        </br>
        </br>
        <input type ="submit" value="Entrar" />;   
        </br>
        </form>
        <% 
            if( usuario != null){    
            out.println("<h2> Usuario Autenticado:"+usuario+"</h2>");
            }%>
        </div>
        <hr>
        <h1>Sorteio de números aleatorios!</h1>
        <table border = "1">
            <% 
            if( usuario != null){    
            for( int i = 1 ; i<=6; i++){
            int na = ((int)(Math.random()*100));
            out.println("<tr><td>"+na+"</td></tr>");
            }}%>    
        </table>
        
    </body>
</html>
