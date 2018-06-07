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
import modelo.dao.LinhasDAO;
import modelo.dao.TipoDeLinhaDAO;

@WebServlet("/editar")
public class ServletAbrirAlteracaoLinha extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public ServletAbrirAlteracaoLinha() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idLinhaStr = request.getParameter("idLinha");
		Integer idLinha = Integer.parseInt(idLinhaStr);
		
		//criar instância do DAO para persistência
		LinhasDAO dao = new LinhasDAO();
		
		// carregar o produto escolhido do banco
		Linhas linha = dao.obter(idLinha);
		
		//guardar o produto no request para ser lido pela página
		request.setAttribute("linha", linha);
		
		//ler a lista de tipo de linhas
		TipoDeLinhaDAO daoTipoLinha = new TipoDeLinhaDAO();
		List<TipoDeLinha> listaTipoLinha = daoTipoLinha.listar();		
		
		// guardar a lista de categorias no request
		request.setAttribute("listaTipoLinha", listaTipoLinha);
		
		//criar um objeto para despachar a requisição
		RequestDispatcher desp = request.getRequestDispatcher("linhaEditar.jsp");
		
		//encaminhar para o servlet ou página selecionada
		desp.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

