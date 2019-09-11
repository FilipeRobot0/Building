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
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar dados</title>
    </head>
    <body>
        <h1>Lista de Usuários:</h1>
        <%
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        List<Usuario> lista = (List)sessionRecheio.createQuery("from Usuario").list();
        tr.commit();
        request.setAttribute("usuarios",lista);
          %>
          
          <display:table name="usuarios">
              <display:column property="nome" title="Nome Completo"/>
              <display:column property="id" title="ID"/>
          </display:table>
    </body>
</html>