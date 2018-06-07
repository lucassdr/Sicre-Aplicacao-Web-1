package controle;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet("/salvarLinha")
public class ServletSalvarLinha extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletSalvarLinha() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendError(403, "Acesso proibido para método GET. Use o formulÃ¡rio para enviar.");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<String> erros = new ArrayList<String>();

		// ler campos do formulario e validação posterior
		String idLinhaStr = request.getParameter("idLinha");
		String numeroLinha = request.getParameter("numeroLinha");
		String extensaoKmStr = request.getParameter("extensaoKm");
		String tipoDeOnibus = request.getParameter("tipoDeOnibus");
		String valorPassagemStr = request.getParameter("valorPassagem");
		String tempoMedio = request.getParameter("tempoMedio");
		String horaInicioOperacao = request.getParameter("horaInicioOperacao");
		String horaFimOperacao = request.getParameter("horaFimOperacao");
		String tipoDeLinhaStr = request.getParameter("tipoDeLinha");
		
		

		// converter os tipos numérios
		Integer idLinha;
		try {
			idLinha = Integer.parseInt(idLinhaStr);
		} catch (NumberFormatException e) {
			idLinha = null;
		}

		Float extensaoKm;
		try {
			extensaoKm = Float.parseFloat(extensaoKmStr);
		} catch (NumberFormatException e) {
			extensaoKm = null;
		}
		
		Integer idTipoDeLinha;
		TipoDeLinha tipLin;
		try {
			idTipoDeLinha = Integer.parseInt(tipoDeLinhaStr);
			
			// ler o tipo de linha escolhida do banco
			TipoDeLinhaDAO daoTipLin = new TipoDeLinhaDAO();
			tipLin = daoTipLin.obter(idTipoDeLinha);
			
		} catch (NumberFormatException e) {
			idTipoDeLinha = null;
			tipLin = null;
		}
		
		//GAMBIARRA ABAIXO
		valorPassagemStr = valorPassagemStr.replace(",", ".");
		Float valorPassagem;
		try {
			valorPassagem = Float.parseFloat(valorPassagemStr);
		} catch (NumberFormatException e) {
			valorPassagem = null;
		}		
		

		// lista de erros
		if (numeroLinha == null || numeroLinha.trim().length() == 0)
			erros.add("O campo NÚMERO da linha é obrigatório.");

		if (extensaoKm == null)
			erros.add("O valor digitado no campo EXTENSÃO EM KM É inválido.");

		if (tipoDeOnibus == null || tipoDeOnibus.trim().length() == 0)
			erros.add("O valor digitado no campo TIPO DE ÔNIBUS é inválido.");

		if (tempoMedio == null || tipoDeOnibus.trim().length() == 0)
			erros.add("O valor digitado no campo TEMPO MÉDIO é inválido.");

		if (horaInicioOperacao == null)
			erros.add("O valor digitado no campo HORA DE INÍCIO DA OPERAÇÃO é inválido.");

		if (horaFimOperacao == null)
			erros.add("O valor digitado no campo HORA DE FIM DA OPERAÇÃO é inválido.");

		// cria a instacia da DAO para persistencia
		LinhasDAO dao = new LinhasDAO();
		
		
		// transferir os dados para o objeto do Modelo
		 Linhas linha;
		
		if(idLinha == null) {
			linha = new Linhas();
		}else {
			linha = dao.obter(idLinha);
		}
		
		// alterar os dados do objeto
		linha.setIdLinha(idLinha);
		linha.setNumeroLinha(numeroLinha);
		linha.setExtensaoKm(extensaoKm);
		linha.setTipoDeOnibus(tipoDeOnibus);
		linha.setValorPassagem(valorPassagem);
		linha.setTempoMedio(tempoMedio);
		linha.setHoraInicioOperacao(horaInicioOperacao);
		linha.setHoraFimOperacao(horaFimOperacao);
		linha.setTipoDeLinha(tipLin);
		
		

		// tester se os dados enviados estao certos
		if (erros.size() == 0) {
			
			// salva o objeto no banco de dados
			linha = dao.salvar(linha);

			// fazer redirect para listar os produtos, a fim de evitar
			// vÃ¡rios envios repetidos
			response.sendRedirect("listarLinhas");
		} else {
			// guardar o produto no request para ser lido pela página
			request.setAttribute("linha", linha);
			request.setAttribute("erros", erros);

			// criar um objeto para despachar a requisição
			RequestDispatcher desp = request.getRequestDispatcher("linhaEditar.jsp");
			desp.forward(request, response);
		}

	}

}
