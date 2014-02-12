package br.com.ftec.pav;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 6667367399056172987L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		throw new ServletException("not yet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email != null && !email.trim().isEmpty()) {
			if (password != null && !password.trim().isEmpty()) {
				if (email.equals("admin@ftec") && password.equals("123qwe")) {
					HttpSession session = request.getSession();
					session.setAttribute("session_user", new User("admin@ftec", "123qwe"));
					
					request.getRequestDispatcher("home").forward(request, response);
					return;
				}
			}
		}

		// response.sendRedirect("/insertServlet");
		request.getRequestDispatcher("index.html").forward(request, response);
	}
}