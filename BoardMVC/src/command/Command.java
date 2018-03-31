package command;

import javax.servlet.http.*;

public interface Command {
	void execute(HttpServletRequest request, HttpServletResponse response);
}
