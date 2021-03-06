package co.micol.prj.jOComment.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.micol.prj.common.Command;
import co.micol.prj.jOComment.service.JOCommentService;
import co.micol.prj.jOComment.service.JOCommentVO;
import co.micol.prj.jOComment.serviceImpl.JOCommentServiceImpl;

public class AjaxJobOpeningCommentSel implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html; charset=UTF-8");
		JOCommentService dao = new JOCommentServiceImpl();
		
		Gson gson = new GsonBuilder().create();
		String data = gson.toJson(dao.selectJOCommentList());
		
		return "ajax:" + data;
	}

}
