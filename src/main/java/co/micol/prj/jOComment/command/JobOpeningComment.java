package co.micol.prj.jOComment.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.micol.prj.common.Command;
import co.micol.prj.jOComment.service.JOCommentService;
import co.micol.prj.jOComment.service.JOCommentVO;
import co.micol.prj.jOComment.serviceImpl.JOCommentServiceImpl;

public class JobOpeningComment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getParameter("commentContent");
		request.getParameter("jobOpeningNum");
		request.getParameter("memberNum");
		JOCommentVO vo = new JOCommentVO();
		vo.setCommentContent(request.getParameter("commentContent"));
		vo.setJobOpeningNum(Integer.parseInt(request.getParameter("jobOpeningNum")));
		vo.setMemberNum(Integer.parseInt(request.getParameter("memberNum")));
		
		JOCommentService dao = new JOCommentServiceImpl();
		dao.insertJOComment(vo);
		
		Gson gson = new GsonBuilder().create();
		try {
			response.getWriter().print(gson.toJson(dao.insertJOComment(vo)));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
