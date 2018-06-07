package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Linhas;
import modelo.dao.LinhasDAO;

/**
 * Servlet implementation class ServletLinhaListar
 */
@WebServlet("/listarLinhas")
public class ServletListarLinha extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletListarLinha() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// criar instãncia do DAO para persistencia
		LinhasDAO dao = new LinhasDAO();

		// carregar do banco a lista de produtos
		List<Linhas> lista = dao.listar();

		// enviar a lista de produtos para a página
		request.setAttribute("lista", lista);

		// enviar o processamento para a página
		RequestDispatcher desp = request.getRequestDispatcher("linhaListar.jsp");
		desp.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
