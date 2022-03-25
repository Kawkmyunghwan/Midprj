package co.micol.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.common.Command;

public class BoardView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
		request.setAttribute("boarders", boardDao.boardSelect(vo));
		boardDao.boardUpdateHit(vo.getBoardNum()); // 조회수 증가
		return "board/boardView";
	}

}
