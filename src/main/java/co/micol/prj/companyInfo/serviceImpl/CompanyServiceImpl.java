package co.micol.prj.companyInfo.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.companyInfo.service.CompanyMapper;
import co.micol.prj.companyInfo.service.CompanyService;
import co.micol.prj.companyInfo.service.CompanyVO;

public class CompanyServiceImpl implements CompanyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CompanyMapper map = sqlSession.getMapper(CompanyMapper.class);
	
	@Override
	public List<CompanyVO> CompanySelectList() {
		// TODO Auto-generated method stub
		return map.CompanySelectList();
	}
	@Override
	public CompanyVO CompanySelect(CompanyVO vo) {
		// TODO Auto-generated method stub
		return map.CompanySelect(vo);
	}
	@Override
	public int CompanyInsert(CompanyVO vo) {
		// TODO Auto-generated method stub
		return map.CompanyInsert(vo);
	}
	@Override
	public int CompanyUpdate(CompanyVO vo) {
		// TODO Auto-generated method stub
		return map.CompanyUpdate(vo);
	}
	@Override
	public int CompanyDelete(CompanyVO vo) {
		// TODO Auto-generated method stub
		return map.CompanyDelete(vo);
	}
	
}
