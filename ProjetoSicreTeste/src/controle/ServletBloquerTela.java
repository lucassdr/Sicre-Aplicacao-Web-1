package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/bloquear")
public class ServletBloquerTela extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("username") != null) {
			request.getSession().setAttribute("pagina", request.getHeader("REFERER"));
			String nomeUsuario = (String) request.getSession().getAttribute("username");
			String senhaUsuario = (String) request.getSession().getAttribute("password");
			request.getSession().setAttribute("usuario", nomeUsuario);
			request.getSession().setAttribute("senha", senhaUsuario);
			request.getSession().setMaxInactiveInterval(604800);
			response.sendRedirect("lockScreen.jsp");

		}
	}

}
