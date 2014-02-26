package br.com.ftec.pav;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/listarusuarios")
public class ListarUsuariosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Usuario> usuarios = new ArrayList<Usuario>();
		for (int i = 0; i < 10; i += 1) {
			usuarios.add(new Usuario("email" + i + "@ftec", "senha"+i*3));
		}
		request.setAttribute("usuarios", usuarios);
		request.getRequestDispatcher("listarusuarios.jsp").forward(request, response);
	}
}