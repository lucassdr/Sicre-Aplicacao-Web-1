package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dominio.Usuario;
import modelo.dao.UsuarioDAO;

@WebServlet("/abrirTrocarSenha")
public class ServletAbrirTrocarSenhaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletAbrirTrocarSenhaUsuario() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String cpf = request.getParameter("cpf");
		
		
		UsuarioDAO dao = new UsuarioDAO();

		List<Usuario> usuarios = dao.listar();
		
		
		
		Boolean seguir = false;
		Integer idUsuario = null;
		
		for (Usuario usuario : usuarios) {
			if ((usuario.getNomeUsuario().equals(username)) && (usuario.getCpf().equals(cpf))) {
				seguir = true;
				idUsuario = usuario.getIdUsuario();
			}
		}
		
		
		
		if (seguir == true) {
			HttpSession session = request.getSession();
			session.setAttribute("id", idUsuario);
			session.setAttribute("username",username);
			session.setAttribute("cpf", cpf);
			response.sendRedirect("senha2.jsp");
		}else {
			response.sendRedirect("senha1.jsp");
		}
		

	}

}
