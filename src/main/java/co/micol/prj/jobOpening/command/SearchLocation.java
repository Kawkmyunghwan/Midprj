package co.micol.prj.jobOpening.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class SearchLocation implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "jobOpening/searchLocation.tiles";
	}

}
