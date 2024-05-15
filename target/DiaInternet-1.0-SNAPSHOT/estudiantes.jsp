<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    List<Estudiante> estudiantes = (List<Estudiante>) request.getAttribute("estudiantes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Estudiantes</title>
        <style>
            .contenedor {
                width: 80%;
                margin: 0 auto;
                text-align: center;
                padding: 20px;
            }
            .caja {
                margin: 20px 0;
                margin-left: 250px;
                margin-right: 250px;
                text-align: left;
                padding: 20px;
                color: black;
            }
            .titulo {
                text-align: center;
                margin-bottom: 2px;
            }
        </style>
    </head>
    <body>
        <div class="contenedor">
            <div class="caja">
                <p>
                    SEGUNDO PARCIAL <br> 
                    Nombre: Ariel Alvaro Condori Larico <br>
                    CI: 10097382 LP
                </p>
            </div>

            <h1 class="titulo">Registro Dia Del Internet</h1>

            <p style="margin-right: 800px;"><a href="EstControlle?action=add">Nuevo</a></p>

            <table border="1">

                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha Inscripcion</th>
                    <th></th>
                    <th></th>
                </tr>

                <c:forEach var="item" items="${estudiantes}">

                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.seminario}</td>
                        <td>
                            <input type="checkbox" ${item.confirmado ? 'checked' : ''} />
                        </td>
                        <td>${item.fecha_inscripcion}</td>
                        <td><a href="EstControlle?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="EstControlle?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
