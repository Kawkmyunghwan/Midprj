package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class LoginPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "member/memberLogin.tiles";
	}

}
