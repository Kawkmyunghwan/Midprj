package co.micol.prj.home.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class HomeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		JobOpeningService dao = new JobOpeningServiceImpl();
		request.setAttribute("jobList", dao.selectJobOpeningList());	
		List<JobOpeningVO> list = new ArrayList<>();
		List<JobOpeningVO> recommendList = new ArrayList<>();
		int a[] = new int[4];

		
		if(session.getAttribute("memberNum") != null) {			
			String[] jobGroup = new String[dao.selectJobOpeningList().size()];
			
			for(int i=0; i<dao.selectJobOpeningList().size(); i++) {
				jobGroup[i] = dao.selectJobOpeningList().get(i).getJobGroup();
			}		
					
			String favorite = (String)session.getAttribute("favorite"); //
			String favoriteArr[] = favorite.split(",");	
			
			for(int i=0; i<favoriteArr.length; i++) {					
				boolean result = favoriteArr[i].contains(jobGroup[i]);				
				if(result == true) {
					for(i=0; i<favoriteArr.length; i++) {
						dao.selectRecommendation(favoriteArr[i]);
						list.addAll(dao.selectRecommendation(favoriteArr[i]));						
					}
				}
			}			

			for(int i=0; i<4; i++) {
				a[i] = (int)(Math.random()*list.size());
				for(int j=0; j<i; j++) {
					if(a[i]==a[j]) {
						i--;
					}
				}
			}
			for(int value : a) {
				recommendList.add(list.get(value));
			}
			request.setAttribute("recommendList", recommendList);
		}
		
		if(session.getAttribute("favorite") == null || session.getAttribute("memberNum") == null) {
			request.setAttribute("zzim", dao.selectJobOpeningListByZzimTop4());
//			관심직군이 없거나, 로그인을 하지 않은 유저는 찜순으로 조회한 기업을 볼 수 있음.
		}
		System.out.println(session.getAttribute("memberId"));
		return "home/home.tiles";
	}
}
//모든 구인공고의 직군 컬럼을 배열(1)로 들고와서 jobGroup 이라는 배열에 넣어줌.
//로그인한 유저의 관심직군 세션을 들고와서 배열(2)로 만들어줌
//배열(2)에 들어있는 관심직군이, 배열(1)의 관심직군에 포함된다면 true를 반환,
//true를 반환 받았을 때, 쿼리문으로 구인공고 테이블에서 '로그인 한 유저가 관심있는 직군'만 검색해서 조회해줌.
//생성한 난수 중 중복된 숫자들은 제거하고 다시 생성.
//조회해준 결과값들을 메인 페이지로 반환.		
