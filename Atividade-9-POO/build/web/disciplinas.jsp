<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/jspf/header.jspf"/>
<%
    String jsonData = "{\"disciplinas\":[\"Banco de Dados\", \"Engenharia de Software III\", \"Programação Orientada a Objetos\", \"Linguagem de Programação IV\", \"Sistemas Operacionais II\", \"Inglês IV\", \"Metodologia da Pesquisa Científico-Tecnológica\"]}";
    JSONObject jsonObject = new JSONObject(jsonData);
    String[] disciplinas = jsonObject.getJSONArray("disciplinas").toList().toArray(new String[0]);

    out.println("<table border='1'><tr><th>Disciplinas</th></tr>");
    for (String disciplina : disciplinas) {
        out.println("<tr><td>" + disciplina + "</td></tr>");
    }
    out.println("</table>");
%>