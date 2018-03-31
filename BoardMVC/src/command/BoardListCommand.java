package command;

import java.util.*;

import javax.servlet.http.*;

import dao.*;
import dto.*;

public class BoardListCommand implements Command {

	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			reqeust.setCharacterEncoding("UTF-8");

			BoardDAO dao = new BoardDAO();
			ArrayList<BoardDTO> dtos = dao.selectListBoard();
			reqeust.setAttribute("list", dtos);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
