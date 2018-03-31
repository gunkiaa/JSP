package frontcontroller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import command.*;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("actionDo");

		request.setCharacterEncoding("UTF-8");

		String viewPage = null;
		Command command = null;

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());

		if (com.equals("/list.do")) {
			System.out.println("###### list.do");
			command = new BoardListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
		} else if (com.equals("/content_view.do")) {
			System.out.println("###### content_view.do");
			command = new BoardContentCommand();
			command.execute(request, response);
			viewPage = "content_view.jsp";
		} else if (com.equals("/writer.do")) {
			System.out.println("###### write.do");
			viewPage = "writer.jsp";
		} else if (com.equals("/insert.do")) {
			System.out.println("###### Insert.do");
			command = new BoardInsertCommand();
			command.execute(request, response);
			viewPage = "insert.jsp";
		} else if (com.equals("/delete.do")) {
			System.out.println("##### Delete.do");
			command = new BoardDeleteCommand();
			command.execute(request, response);
			viewPage = "delete.jsp";
		} else if (com.equals("/join.do")) {
			System.out.println("##### Join.do");
			command = new UserJoinCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}
		
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
	}
}
