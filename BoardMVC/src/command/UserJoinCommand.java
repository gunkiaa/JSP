package command;

import java.io.*;

import javax.servlet.http.*;

import dao.*;
import dto.*;

public class UserJoinCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8"); 
			response.setContentType("text/html; charset=UTF-8");
			
			String id = request.getParameter("ID");
			String pw = request.getParameter("PW");
			String name = request.getParameter("NAME");
			String eMail = request.getParameter("EMAIL");
			String gender = request.getParameter("GENDER");
			System.out.println(gender);
			UserDAO dao = new UserDAO();
			int cnt = dao.insert(id, pw, name, eMail, gender);
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			if(cnt > 0) {
				out.println("alert('회원가입이 완료되었습니다')");
			}else {
				out.println("alert('회원가입이 실패되었습니다')");
			}
			out.println("</script>");
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
	}
	
}
