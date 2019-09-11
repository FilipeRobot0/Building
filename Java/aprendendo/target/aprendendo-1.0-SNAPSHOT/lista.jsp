<%-- 
    Document   : lista
    Created on : 11/09/2019, 09:25:53
    Author     : aluno
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="utilidade.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="classe.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista dos usuários</h1>
        <%
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            String hql = "from Usuario";
            List<Usuario> lista = (List)sessionRecheio.createQuery(hql).list();
            request.setAttribute("usuario", lista);
        %>
    <display:table name="usuario">
        <display:column property="id" title="ID"/>
        <display:column property="nome" title="Nome completo"/>
    </display:table>
    </body>
</html>