package command;

import javax.servlet.http.*;

import dao.*;

public class BoardDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String idx = request.getParameter("bId");

		BoardDAO dao = new BoardDAO();

		int deleteCnt = dao.delete(idx);

		request.setAttribute("deleteCnt", deleteCnt);
		request.setAttribute("idx", idx);

	}
}
