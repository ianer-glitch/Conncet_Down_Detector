<%-- 
    Document   : newjsp
    Created on : 21 de out de 2020, 19:49:22
    Author     : ianer
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="com.mycompany.down_detector_unisagrado_connect.Ping"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.InetSocketAddress"%>
<%@page import="java.net.Socket"%>
<%@page import="java.net.Socket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt_BR">
  <head>
    <link rel="stylesheet" href="./index.css" />
    <link rel="stylesheet" href="./buttons.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&display=swap"
      rel="stylesheet"
    />
   

   
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Down Detector</title>
  </head>
  <body>
    <main class="container">
      <h1>Connect Down Detector</h1>

      <img src="./connect_svg.svg" alt="Unisagrado Connect" />

      <div class="button-select">
        <button type="button" class="active">ONLINE</button>
        <button type="button">OFFLINE</button>
      </div>
    </main>
     <%    
        
        response.setIntHeader("Refresh", 60);//pagina recarregada a cada 60s
        if(Ping.ping_get_test("https://moodle.unisagrado.ceta.ceo")==false){
            response.sendRedirect("index2.jsp");
        }
        
     
     %>
  </body>

</html>

