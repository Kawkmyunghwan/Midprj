package co.micol.prj.myinfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class MyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "myInfo/myInfo";
	}

}
