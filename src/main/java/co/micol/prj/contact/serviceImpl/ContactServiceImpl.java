package co.micol.prj.contact.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.prj.common.DataSource;
import co.micol.prj.contact.service.ContactMapper;
import co.micol.prj.contact.service.ContactService;
import co.micol.prj.contact.service.ContactVO;

public class ContactServiceImpl implements ContactService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ContactMapper map = sqlSession.getMapper(ContactMapper.class);
	
	@Override
	public List<ContactVO> contactSelectList() {
		return map.contactSelectList();
	}

	@Override
	public ContactVO contactSelect(ContactVO vo) {
		return map.contactSelect(vo);
	}

	@Override
	public int contactInsert(ContactVO vo) {
		return map.contactInsert(vo);
	}

	@Override
	public int contactUpdate(ContactVO vo) {
		// TODO Auto-generated method stub
		return map.contactUpdate(vo);
	}

	@Override
	public int contactDelete(ContactVO vo) {
		// TODO Auto-generated method stub
		return map.contactDelete(vo);
	}

	@Override
	public int contactUpdateHit(int id) {
		// TODO Auto-generated method stub
		return map.contactUpdateHit(id);
	}

	@Override
	public List<ContactVO> contactSelectSearchList(String key, String val) {
		// TODO Auto-generated method stub
		return map.contactSelectSearchList(key, val);
	}

	@Override
	public List<ContactVO> contactSortList(String key) {
		// TODO Auto-generated method stub
		return map.contactSortList(key);
	}

	@Override
	public int rewiewInsert(ContactVO vo) {
		// TODO Auto-generated method stub
		return map.rewiewInsert(vo);
	}

}
