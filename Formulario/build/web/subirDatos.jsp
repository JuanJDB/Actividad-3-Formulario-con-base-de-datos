<%-- 
    Document   : subirDatos
    Created on : 25/08/2017, 12:26:32 AM
    Author     : Carlos Nevarez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("Nombre");
            String paterno = request.getParameter("ApePaterno");
            String materno = request.getParameter("ApeMaterno");
            String edad = request.getParameter("Edad");
            String escuela = request.getParameter("Escuela");
            
            Connection c = null;
            Statement s = null;
            ResultSet r = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/formulario","root","n0m3l0");
                s = c.createStatement();
                s.executeUpdate("INSERT INTO tablaDatos VALUES("+nombre+"','"+paterno+"','"+materno+"',"
                        +edad+",'"+escuela+"')");
                 %>
                <script>alert('Se ha registrado en la BD');</script>
                <%
                c.close();
                response.sendRedirect("index.html");
            }
            catch(SQLException error){
                out.print(error.toString());
                %>
                <script>alert('Algo salio mal');</script>
                <%
            }
            %>  
    </body>
</html>
