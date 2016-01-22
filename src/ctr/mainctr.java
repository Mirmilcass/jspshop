package ctr;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.CustomerServiceImpl;

@WebServlet("/main.do")
public class mainctr extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEWPATH = "/page/";
	private static final String ERRORPATH = "/errors/";
	private static final String BODYPATH = "/body/";

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
		CustomerServiceImpl customerService = new CustomerServiceImpl();
		ServletContext ctx = request.getServletContext();

		// user request handle

		if (requestpage.equals("index")) {
			ctx.getRequestDispatcher("index.jsp").forward(request, response);
		} else if (requestpage.equals("main")) {

			String requestbody = request.getParameter("bodyview").toLowerCase();

			if (requestbody.equals("main")) {
				request.setAttribute("bodyview", BODYPATH + requestbody
						+ ".jsp");
			} else if (requestbody.equals("admin")) {
				request.setAttribute("bodyview", BODYPATH + requestbody
						+ ".jsp");
			} else {
				request.setAttribute("bodyview", BODYPATH + requestbody
						+ "_form.jsp");
			}

			ctx.getRequestDispatcher(VIEWPATH + "mainpage.jsp").forward(
					request, response);
		} else if (requestpage.equals("category")) {
			ctx.getRequestDispatcher(VIEWPATH + "mainpage.jsp").forward(
					request, response);
		}
		// JOIN ID Cheak
		else if (requestpage.equals("cheakid")) {
			String id = request.getParameter("id").trim();
			int result = customerService.idCheak(id);
			if (result > 0) {
				ctx.getRequestDispatcher(ERRORPATH + "idCheakSuccess.jsp")
						.forward(request, response);
			} else {
				ctx.getRequestDispatcher(ERRORPATH + "fail.jsp").forward(
						request, response);
			}
		}

	}
}
