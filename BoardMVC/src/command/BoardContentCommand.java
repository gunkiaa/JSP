package command;

import java.util.*;

import javax.servlet.http.*;

import dao.*;
import dto.*;

public class BoardContentCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int bId = Integer.parseInt(request.getParameter("bId"));

		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.contentView(bId);

		request.setAttribute("content_view", dto);
	}

}
