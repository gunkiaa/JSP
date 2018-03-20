package command;

import java.io.*;

import javax.servlet.http.*;

import dao.*;

public class BoardInsertCommand implements BoardCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		BoardDAO dao = new BoardDAO();
		int insertCnt = dao.insert(title, content);

		request.setAttribute("insertCnt", insertCnt);
	}
}
