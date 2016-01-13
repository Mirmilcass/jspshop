package ctr;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/main.do")
public class mainctr extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEWPATH = "/page/";
	private static final String ERRORPATH = "/errors/";

	public mainctr() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// user request page
		String requestpage = request.getParameter("reqview");

		// service

		ServletContext ctx = request.getServletContext();

		// user request handle

		if (requestpage.equals("index")) {
			ctx.getRequestDispatcher(VIEWPATH + "index.jsp").forward(request,
					response);
		} else if (requestpage.equals("main")) {
			ctx.getRequestDispatcher(VIEWPATH + "mainpage.jsp").forward(
					request, response);
		}

	}
}
