package co.micol.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.common.Command;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
		int n = boardDao.boardDelete(vo);
		return "boardList.do";
	}

}
