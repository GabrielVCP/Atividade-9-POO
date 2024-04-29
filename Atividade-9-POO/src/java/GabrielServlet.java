import jakarta.servlet.*;
import jakarta.servlet.http.*;
import org.json.JSONObject;

import java.io.IOException;

public class GabrielServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JSONObject gabriel = new JSONObject();
        gabriel.put("id", 1290482222033L);
        gabriel.put("nome", "Gabriel");
        gabriel.put("disciplinas", new String[] {
            "Banco de Dados",
            "Engenharia de Software III",
            "Programação Orientada a Objetos",
            "Linguagem de Programação IV",
            "Sistemas Operacionais II",
            "Inglês IV",
            "Metodologia da Pesquisa Científico-Tecnológica"
        });

        response.getWriter().write(gabriel.toString());
    }
}