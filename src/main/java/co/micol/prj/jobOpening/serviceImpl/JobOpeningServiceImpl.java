package co.micol.prj.jobOpening.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.jobOpening.service.JobOpeningMapper;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;
import co.micol.prj.member.service.MemberVO;

public class JobOpeningServiceImpl implements JobOpeningService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private JobOpeningMapper map = sqlSession.getMapper(JobOpeningMapper.class);

	@Override
	public List<JobOpeningVO> selectJobOpeningList() {
		// TODO Auto-generated method stub
		return map.selectJobOpeningList();
	}

	@Override
	public List<JobOpeningVO> selectJobOpeningListByHit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<JobOpeningVO> selectJobOpeningListByZzim() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JobOpeningVO selectJobOpening(JobOpeningVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JobOpeningVO selectJobOpeningByNum(JobOpeningVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
