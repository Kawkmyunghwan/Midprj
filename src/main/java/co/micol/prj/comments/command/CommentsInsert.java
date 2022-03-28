package co.micol.prj.comments.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.comments.service.CommentsService;
import co.micol.prj.comments.service.CommentsVO;
import co.micol.prj.comments.serviceImpl.CommentsServiceImpl;
import co.micol.prj.common.Command;

public class CommentsInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentsService dao = new CommentsServiceImpl();
		CommentsVO vo = new CommentsVO();
		BoardVO boardVo = new BoardVO();
		HttpSession session = request.getSession();
		BoardService boardDao = new BoardServiceImpl();
		vo.setMemberId((String) session.getAttribute("memberId"));
		vo.setCommentsContent(request.getParameter("commentsContent"));
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));

		vo.setBoardNum(boardNum);

		boardVo.setBoardNum(boardNum);

		int n = dao.commentsInsert(vo);

		if (n != 0) {
			request.setAttribute("message", "댓글 등록이 성공하였습니다.");
			request.setAttribute("boarders", boardDao.boardSelect(boardVo));
			request.setAttribute("comments", dao.commentsSelectList(boardNum));
			return "board/boardView";
		} else {
			request.setAttribute("boarders", boardDao.boardSelect(boardVo));
			request.setAttribute("comments", dao.commentsSelectList(boardNum));
			request.setAttribute("message", "댓글 등록이 실패하였습니다.");
			return "board/boardView";
		}

	}

}
