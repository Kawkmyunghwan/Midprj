package co.micol.prj.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.common.Command;

public class AjaxSortBoard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDao = new BoardServiceImpl();
		String key = request.getParameter("key");
		System.out.println(key + "=========");
		List<BoardVO> list = boardDao.boardSortList(key);
		String data = null;
		try {
			data = new ObjectMapper().writeValueAsString(list); //json 객체로 변환
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" + data;
	}

}
