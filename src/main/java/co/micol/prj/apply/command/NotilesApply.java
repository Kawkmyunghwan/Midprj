package co.micol.prj.apply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import co.micol.prj.common.Command;

public class NotilesApply implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		return "jobOpening/apply.tiles";
	}

}
