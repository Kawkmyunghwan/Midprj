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

public class CommentsUpdate implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      CommentsService dao = new CommentsServiceImpl();
      CommentsVO vo = new CommentsVO();
      HttpSession session = request.getSession();
      BoardService boardDao = new BoardServiceImpl();
      BoardVO boardVo = new BoardVO();
      
      int cNum = Integer.parseInt(request.getParameter("commentsNum"));
      int bNum = Integer.parseInt(request.getParameter("boardNum"));
      vo.setCommentsNum(cNum);
      vo.setCommentsContent(request.getParameter("commentsContent"));
      
      int n = dao.commentsUpdate(vo);
      
      boardVo.setBoardNum(bNum);
      if (n != 0) {
         request.setAttribute("message", "댓글 수정이 성공하였습니다.");
         request.setAttribute("boarders", boardDao.boardSelect(boardVo));
         request.setAttribute("comments", dao.commentsSelectList(bNum ));
         
         
         
         return "board/boardView";
      }else {
         request.setAttribute("message", "댓글 수정이 실패하였습니다.");
         request.setAttribute("boarders", boardDao.boardSelect(boardVo));
         request.setAttribute("comments", dao.commentsSelectList(bNum));
         return "board/boardView";
      }
   }

}