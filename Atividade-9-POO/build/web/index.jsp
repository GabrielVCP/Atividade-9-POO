<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/jspf/header.jspf"/>
<%
    // Simular a leitura do JSON
    String jsonData = "{\"nome\":\"Gabriel Vicente Cobianqui Pacheco\", \"ra\":1290482222033, \"disciplinas\":[\"Banco de Dados\", \"Engenharia de Software III\", \"Programação Orientada a Objetos\", \"Linguagem de Programação IV\", \"Sistemas Operacionais II\", \"Inglês IV\", \"Metodologia da Pesquisa Científico-Tecnológica\"]}";
    JSONObject jsonObject = new JSONObject(jsonData);

    out.println("<p>RA: " + jsonObject.getLong("ra") + "</p>");
    out.println("<p>Nome: " + jsonObject.getString("nome") + "</p>");
%>