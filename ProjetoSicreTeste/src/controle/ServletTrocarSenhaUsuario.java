package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import dominio.Usuario;
import modelo.dao.UsuarioDAO;


@WebServlet("/trocarSenha")
public class ServletTrocarSenhaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletTrocarSenhaUsuario() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String senha = request.getParameter("passwordOne");
		String confirmacao = request.getParameter("passwordTwo");
		String idUsuarioStr = request.getParameter("idUsuario");
		
		Integer idUsuario;
		try {
			idUsuario = Integer.parseInt(idUsuarioStr);
		} catch (NumberFormatException e) {
			idUsuario = null;
		}
		
		UsuarioDAO dao = new UsuarioDAO();
		
		Usuario usuario;
		
		usuario = dao.obter(idUsuario);
		
		usuario.setIdUsuario(idUsuario);
		usuario.setSenha(senha);

		
		if(senha.equals(confirmacao)) {
			senha = confirmacao;
			usuario.setSenha(DigestUtils.sha256Hex(senha));
			usuario = dao.salvar(usuario);
			
			response.sendRedirect("login.jsp");
		}else {
			System.out.println("Senhas incorretas");
		}
	}

}
