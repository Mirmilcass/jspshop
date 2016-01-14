package ctr;

import java.io.IOException;

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
		String requestbody = request.getParameter("bodyview");

		// service

		ServletContext ctx = request.getServletContext();

		// user request handle

		if (requestpage.equals("index")) {
			ctx.getRequestDispatcher("index.jsp").forward(request, response);
		} else if (requestpage.equals("main")) {
			if (requestbody.equals("main")) {
				request.setAttribute("bodyview", BODYPATH + requestbody
						+ ".jsp");
			} else if (requestbody.equals("JOIN")) {
				request.setAttribute("bodyview", BODYPATH + "join_form.jsp");
			} else if (requestbody.equals("LOGIN")) {
				request.setAttribute("bodyview", BODYPATH + "login_form.jsp");
			} else if (requestbody.equals("MYPAGE")) {
				request.setAttribute("bodyview", BODYPATH + "mypage_form.jsp");
			} else if (requestbody.equals("CART")) {
				request.setAttribute("bodyview", BODYPATH + "cart_form.jsp");
			} else if (requestbody.equals("QnA")) {
				request.setAttribute("bodyview", BODYPATH + "qna_form.jsp");
			}
			ctx.getRequestDispatcher(VIEWPATH + "mainpage.jsp").forward(
					request, response);
		}

	}
}
