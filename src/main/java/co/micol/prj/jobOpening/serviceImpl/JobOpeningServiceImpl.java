package co.micol.prj.jobOpening.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.jobOpening.service.JobOpeningMapper;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;

public class JobOpeningServiceImpl implements JobOpeningService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private JobOpeningMapper map = sqlSession.getMapper(JobOpeningMapper.class);

	@Override
	public List<JobOpeningVO> selectJobOpeningList() {
		// TODO Auto-generated method stub
		return map.selectJobOpeningList();
	}

	@Override
	public JobOpeningVO selectJobOpening(JobOpeningVO vo) {
		// TODO Auto-generated method stub
		return map.selectJobOpening(vo);
	}

	@Override
	public int insertJobOpening(JobOpeningVO vo) {
		// TODO Auto-generated method stub
		return map.insertJobOpening(vo);
	}


	@Override
	public int deleteJobOpening(JobOpeningVO vo) {
		// TODO Auto-generated method stub
		return map.deleteJobOpening(vo);
	}

	@Override
	public List<JobOpeningVO> selectJobOpeningListByHit() {
		// TODO Auto-generated method stub
		return map.selectJobOpeningListByHit();
	}

	@Override
	public List<JobOpeningVO> selectJobOpeningListByZzim() {
		// TODO Auto-generated method stub
		return map.selectJobOpeningListByZzim();
	}

	@Override
	public JobOpeningVO selectJobOpeningByNum(JobOpeningVO vo) {
		// TODO Auto-generated method stub
		return map.selectJobOpeningByNum(vo);
	}

	@Override
	public List<JobOpeningVO> selectJobOpeningListByPost(String cond) {
		// TODO Auto-generated method stub
		return map.selectJobOpeningListByPost(cond);
	}

	@Override

	public List<JobOpeningVO> selectRecommendation(String jobGroup) {
		// TODO Auto-generated method stub
		return map.selectRecommendation(jobGroup);
	}
	@Override
	
	public List<JobOpeningVO> selectJobOpeningListByMyzzim() {
		// TODO Auto-generated method stub
		return map.selectJobOpeningListByMyzzim();

	}

	@Override
	public List<JobOpeningVO> selectJobOpeningListByZzimTop4() {
		// TODO Auto-generated method stub
		return map.selectJobOpeningListByZzimTop4();
	}

	@Override
	public int jobOpeningUpdateHit(int hit) {
		// TODO Auto-generated method stub
		return map.jobOpeningUpdateHit(hit);
	}

	@Override
	public List<JobOpeningVO> selectLocationList(String location) {
		// TODO Auto-generated method stub
		return map.selectLocationList(location);
	}

}
