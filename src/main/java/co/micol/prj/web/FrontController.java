package co.micol.prj.web;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import co.micol.prj.apply.command.NotilesApply;
import co.micol.prj.board.command.AjaxBoardSearch;
import co.micol.prj.board.command.AjaxSortBoard;
import co.micol.prj.board.command.BoardDelete;
import co.micol.prj.board.command.BoardInsert;
import co.micol.prj.board.command.BoardInsertForm;
import co.micol.prj.board.command.BoardList;
import co.micol.prj.board.command.BoardUpdate;
import co.micol.prj.board.command.BoardView;
import co.micol.prj.common.Command;
import co.micol.prj.contact.comm.ContactForm;
import co.micol.prj.contact.comm.InquiryForm;
import co.micol.prj.contact.comm.InquiryInsert;
import co.micol.prj.contact.comm.InquiryInsertForm;
import co.micol.prj.contact.comm.InquiryUpdate;
import co.micol.prj.contact.comm.InquiryView;
import co.micol.prj.home.command.HomeCommand;
import co.micol.prj.jobOpening.command.HotSearch;
import co.micol.prj.jobOpening.command.JobDetail;
import co.micol.prj.jobOpening.command.LoginPage;
import co.micol.prj.jobOpening.command.Sample;
import co.micol.prj.jobOpening.command.SearchLocation;
import co.micol.prj.jobOpening.command.ZzimSearch;
import co.micol.prj.member.command.AjaxMemberIdCheck;
import co.micol.prj.member.command.MemberDelete;
import co.micol.prj.member.command.MemberJoin;
import co.micol.prj.member.command.MemberJoinForm;
import co.micol.prj.member.command.MemberList;
import co.micol.prj.member.command.MemberLogin;
import co.micol.prj.member.command.MemberSearch;
import co.micol.prj.member.command.MemberUpdate;
import co.micol.prj.member.command.MemberUpdateForm;
import co.micol.prj.myinfo.command.MyInfo;
import co.micol.prj.myinfo.command.NotesListForm;
import co.micol.prj.zzim.command.Zzim;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/home.do", new HomeCommand()); // 처음 들어오는 페이지
		map.put("/memberList.do", new MemberList()); // 전체 조회
		map.put("/memberSearch.do", new MemberSearch()); // 단건 조회
		map.put("/memberLogin.do", new MemberLogin()); // 로그인
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck()); // ajax로 아이디 중복체크
		map.put("/memberJoinForm.do", new MemberJoinForm()); // 회원가입 폼 호출
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/borderList.do", new BoardList()); // 게시글 목록
		map.put("/borderInsertForm.do", new BoardInsertForm()); // 게시글 작성폼 호출
		map.put("/borderInsert.do", new BoardInsert()); // 게시글 등록
		map.put("/borderView.do", new BoardView());
		map.put("/ajaxBorderSearch.do", new AjaxBoardSearch()); // 게시글 리스트에서 검색
		map.put("/ajaxSortBorder.do", new AjaxSortBoard()); // 게시글 정렬
		
// ----------------------곽명환------------------------
		map.put("/hotSearch.do", new HotSearch());
		map.put("/zzimSearch.do", new ZzimSearch());
		map.put("/notilesApply.do", new NotilesApply());
		map.put("/sample.do", new Sample());
		map.put("/jobDetail.do", new JobDetail());
		map.put("/loginPage.do", new LoginPage());
		map.put("/zzim.do", new Zzim());
		map.put("/zzimSearch.do", new ZzimSearch());
		map.put("/searchLocation.do", new SearchLocation());
// ---------------------------------------------------

		
		//고객센터
		map.put("/contactForm.do", new ContactForm()); //고객센터 메인폼
		map.put("/inquiryForm.do", new InquiryForm()); //문의게시판
		map.put("/inquiryInsertForm.do", new InquiryInsertForm()); //문의게시판 글쓰기 폼
		map.put("/inquiryInsert.do", new InquiryInsert()); // 게시판 등록
		map.put("/inquiryView.do", new InquiryView()); //상세보기
		map.put("/inquiryUpdate.do", new InquiryUpdate());
		map.put("/searchLocation.do", new SearchLocation());

		

		// 마이페이지
		map.put("/myInfo.do", new MyInfo()); // 마이페이지
		map.put("/memberUpdateForm.do", new MemberUpdateForm()); // 내 정보 수정 폼
		map.put("/memberUpdate.do", new MemberUpdate()); // 내 정보 수정
		map.put("/memberDelete.do", new MemberDelete()); // 회원 탈퇴

		map.put("/notesListForm.do", new NotesListForm()); // 쪽지함 폼

		map.put("/boardList.do", new BoardList()); // 게시글 목록
		map.put("/boardInsertForm.do", new BoardInsertForm()); // 게시글 작성폼 호출
		map.put("/boardInsert.do", new BoardInsert()); // 게시글 등록
		map.put("/boardUpdate.do", new BoardUpdate()); // 게시글 수정
		map.put("/boardDelete.do", new BoardDelete()); // 게시글 삭제
		map.put("/boardView.do", new BoardView());
		map.put("/ajaxBoardSearch.do", new AjaxBoardSearch()); // 게시글 리스트에서 검색
		map.put("/ajaxSortBoard.do", new AjaxSortBoard()); // 게시글 정렬

		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글 깨짐 방지
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command comm = map.get(page);
		String viewPage = comm.exec(request, response);

		if(!viewPage.endsWith(".do")) {
			if(viewPage.startsWith("ajax:")) {
				//ajax 처리
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
//				viewPage = "WEB-INF/view/" + viewPage + ".jsp";
				viewPage = viewPage + ".tiles";
			}
			
		}
		
		

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
