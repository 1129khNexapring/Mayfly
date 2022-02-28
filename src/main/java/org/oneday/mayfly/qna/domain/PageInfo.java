package org.oneday.mayfly.qna.domain;

public class PageInfo {

	private int currentPage; // ���� ������
	private int qnaLimit;  // �� ������ �� �Խñ� ����
	private int naviLimit;   // �� ������ �� pageNavi ��
	private int startNavi;   // pageNavi ���۰�
	private int endNavi;	 // pageNavi ����
	private int totalCount;  // ��ü �Խñ� ����
	private int maxPage;	 // �������� ������ ��ȣ
	
	public PageInfo() {}

	public PageInfo(int currentPage, int qnaLimit, int naviLimit, int startNavi, int endNavi, int totalCount,
			int maxPage) {
		super();
		this.currentPage = currentPage;
		this.qnaLimit = qnaLimit;
		this.naviLimit = naviLimit;
		this.startNavi = startNavi;
		this.endNavi = endNavi;
		this.totalCount = totalCount;
		this.maxPage = maxPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getQnaLimit() {
		return qnaLimit;
	}

	public void setQnaLimit(int qnaLimit) {
		this.qnaLimit = qnaLimit;
	}

	public int getNaviLimit() {
		return naviLimit;
	}

	public void setNaviLimit(int naviLimit) {
		this.naviLimit = naviLimit;
	}

	public int getStartNavi() {
		return startNavi;
	}

	public void setStartNavi(int startNavi) {
		this.startNavi = startNavi;
	}

	public int getEndNavi() {
		return endNavi;
	}

	public void setEndNavi(int endNavi) {
		this.endNavi = endNavi;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	
	@Override
	public String toString() {
		return "PageInfo [���� ������=" + currentPage + ", �Խñ� ����=" + qnaLimit + ", pageNavi ��=" + naviLimit
				+ ", ���۰�=" + startNavi + ", ����=" + endNavi + ", ��ü �Խñ� ����=" + totalCount + ", ������ ��ȣ="
				+ maxPage + "]";
	}
	
	

}
