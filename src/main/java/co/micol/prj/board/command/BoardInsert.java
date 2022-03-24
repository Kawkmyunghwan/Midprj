package co.micol.prj.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.common.Command;

public class BoardInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardWriter(request.getParameter("boardWriter"));
		vo.setBoardDate(Date.valueOf(request.getParameter("boardDate")));
		vo.setBoardName(request.getParameter("boardName"));
		vo.setBoardContents(request.getParameter("boardContents"));
		int n = boardDao.boardInsert(vo);
		if(n != 0) {
			return "boardList.do";
		}else {
			request.setAttribute("message", "게시글 등록에 실패했습니다.");
			return "board/boardError";
		}
	}
}
