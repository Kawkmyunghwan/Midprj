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

public class AjaxJobOpeningComment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html; charset=UTF-8");
		
		JOCommentVO vo = new JOCommentVO();
		vo.setCommentContent(request.getParameter("commentContent"));
		vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
		vo.setMemberNum(Integer.parseInt(request.getParameter("memberNum")));
		JOCommentService dao = new JOCommentServiceImpl();
		dao.insertJOComment(vo);
		
		System.out.println(request.getParameter("jobOpeningNum"));
		
		Gson gson = new GsonBuilder().create();
		String data = gson.toJson(dao.selectJOCommentList());		
		
		return "ajax:" + data;
	}

}
