package co.micol.prj.comments.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comments.service.CommentsService;
import co.micol.prj.comments.service.CommentsVO;
import co.micol.prj.comments.serviceImpl.CommentsServiceImpl;
import co.micol.prj.common.Command;

public class CommentsList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentsService commentsDao = new CommentsServiceImpl();
		CommentsVO vo = new CommentsVO();
		vo.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
		request.setAttribute("comments", commentsDao.commentsSelectList());
		return "board/boardView";
	}

}
