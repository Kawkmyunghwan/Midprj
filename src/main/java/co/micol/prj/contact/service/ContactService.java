package co.micol.prj.contact.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ContactService {
	
	List<ContactVO> contactSelectList();
	ContactVO contactSelect(ContactVO vo);
	int contactInsert(ContactVO vo);
	int contactUpdate(ContactVO vo);
	int contactDelete(ContactVO vo);
	int contactUpdateHit(int id);
	List<ContactVO> contactSelectSearchList(@Param("key") String key, @Param("val") String val);
	//검색할 항목, 검색할 내용	
	//넘어온 파라미터 키 값을, String key에 담겠다는 뜻.
	List<ContactVO> contactSortList(String key);
	int rewiewInsert(ContactVO vo);
}