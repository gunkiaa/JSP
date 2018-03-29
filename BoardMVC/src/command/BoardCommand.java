package command;

import javax.servlet.http.*;

public interface BoardCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);
}
