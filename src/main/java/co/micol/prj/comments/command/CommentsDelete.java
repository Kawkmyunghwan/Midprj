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

public class CommentsDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentsService dao = new CommentsServiceImpl();
		CommentsVO vo = new CommentsVO();
		HttpSession session = request.getSession();
		
		vo.setMemberId((String) session.getAttribute("memberId"));
		int commentsNum = Integer.parseInt(request.getParameter("commentsNum"));
		vo.setCommentsNum(commentsNum);
		int n = dao.commentsDelete(vo);
		BoardService boardDao= new BoardServiceImpl();
		BoardVO bVo = new BoardVO();
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		bVo.setBoardNum(boardNum);
		
		if (n != 0) {
			request.setAttribute("message", "댓글 삭제를 성공하였습니다.");
			request.setAttribute("boarders", boardDao.boardSelect(bVo));
			request.setAttribute("comments", dao.commentsSelectList(boardNum));
			return "board/boardView";
		}else {
			request.setAttribute("boarders", boardDao.boardSelect(bVo));
			request.setAttribute("comments", dao.commentsSelectList(boardNum));
			request.setAttribute("message", "댓글 삭제를 실패하였습니다.");
			return "board/boardView";
		}
	}

}
