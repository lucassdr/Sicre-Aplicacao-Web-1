package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Linhas;
import modelo.dao.LinhasDAO;

/**
 * Servlet implementation class ServletExcluir
 */
@WebServlet("/excluirLinha")
public class ServletExcluirLinha extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletExcluirLinha() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idLinhaStr = request.getParameter("idLinha");
		Integer idLinha = Integer.parseInt(idLinhaStr);
		
		
		//criar a instacia da DAO para persistencia
		LinhasDAO dao = new LinhasDAO();
		
		//carregar produto escolhido do banco
		Linhas linha = dao.obter(idLinha);
		
		//excluir produto do banco de dados
		dao.excluir(linha);
		
		// fazer redirect para listar os produtos, a fim de evitar
		// vários envios repetidos
		response.sendRedirect("listarLinhas");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
