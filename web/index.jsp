<%-- 
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("listaper")==null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
                //agregamos lista a la coleccion
                lista.add(new Persona(1,"freddy condori","72012345","freddy@hotmail.es"));
                lista.add(new Persona(2,"german condori","72012345","freddy@hotmail.es"));
                lista.add(new Persona(3,"noel condori","72012345","freddy@hotmail.es"));
                //colocamos la lista como un atributo de session
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplo de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp">probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recorriendo la coleccion con foreach</a></li>
        </ul>
    </body>
</html>
