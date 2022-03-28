package co.micol.prj.zzim.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.zzim.service.ZzimMapper;
import co.micol.prj.zzim.service.ZzimService;
import co.micol.prj.zzim.service.ZzimVO;

public class ZzimServiceImpl implements ZzimService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ZzimMapper map = sqlSession.getMapper(ZzimMapper.class);

	@Override
	public List<ZzimVO> selectZzimList() {
		// TODO Auto-generated method stub
		return map.selectZzimList();
	}

	@Override
	public List<ZzimVO> selectZzim(ZzimVO vo) {
		// TODO Auto-generated method stub
		return map.selectZzim(vo);
	}

	@Override
	public int insertZzim(ZzimVO vo) {
		// TODO Auto-generated method stub
		return map.insertZzim(vo);
	}

	@Override
	public int updateZzim(ZzimVO vo) {
		// TODO Auto-generated method stub
		return map.updateZzim(vo);
	}

	@Override
	public int deleteZzim(ZzimVO vo) {
		// TODO Auto-generated method stub
		return map.deleteZzim(vo);
	}

}
