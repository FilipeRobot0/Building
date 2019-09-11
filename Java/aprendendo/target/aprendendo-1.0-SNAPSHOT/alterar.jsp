<%-- 
    Document   : alterar
    Created on : 11/09/2019, 09:14:23
    Author     : aluno
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="utilidade.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="classe.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        Usuario usuario = new Usuario();
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        usuario = (Usuario) sessionRecheio.createQuery("from Usuario where nome='nn' ").uniqueResult();
        tr.commit();
        String nome = usuario.getNome();
        String id = usuario.getId();
            %>
            
            <form>
                Nome <input type="text" name="nome" value="<%=nome%>">
                ID <input type="text" name="id" value="<%=id%>">
                <input type="submit">
            </form>
    </body>
</html>
