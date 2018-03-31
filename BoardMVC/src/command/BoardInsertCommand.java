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
			String title = new String(request.getParameter("title").getBytes("8859_1"),"UTF-8");
			String content = new String(request.getParameter("content").getBytes("8859_1"),"UTF-8");
			//Latin-1(8859_1)로 읽어들인 데이터를 다시 UTF-8로 재해석하는 코드
			
			System.out.println(title);
			System.out.println(content);
			BoardDAO dao = new BoardDAO();
			int insertCnt = dao.insert(title, content);

			request.setAttribute("insertCnt", insertCnt);
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
