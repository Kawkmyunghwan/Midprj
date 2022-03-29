package co.micol.prj.contact.service;

public class SearchCriteria extends Criteria {
	
	private String search_nm = "";
	private String keyword = "";

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSearch_nm() {
		return search_nm;
	}

	public void setSearch_nm(String search) {
		this.search_nm = search;
	}

}
