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
import dominio.TipoDeLinha;
import modelo.dao.TipoDeLinhaDAO;

/**
 * Servlet implementation class ServletAbrirInclusao
 */
@WebServlet("/abrirInclusao")
public class ServletAbrirInclusaoLinha extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletAbrirInclusaoLinha() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// cria um novo objeto vazio
		Linhas linha = new Linhas();

		// guardar o novo produto no request para ser lido pela página
		request.setAttribute("linha", linha);

		//ler a lista de tipo de linhas
		TipoDeLinhaDAO daoTipoLinha = new TipoDeLinhaDAO();
		List<TipoDeLinha> listaTipoLinha = daoTipoLinha.listar();		

		// guardar a lista de categorias no request
		request.setAttribute("listaTipoLinha", listaTipoLinha);


		// enviar o processamento para a página
		RequestDispatcher desp = request.getRequestDispatcher("linhaEditar.jsp");
		desp.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
