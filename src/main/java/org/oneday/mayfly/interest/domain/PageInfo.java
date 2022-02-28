package org.oneday.mayfly.interest.domain;

public class PageInfo {
	private int currentPage; // 현재 페이지
	private int boardLimit;  // 한 페이지 당 게시글 수
	private int naviLimit;   // 한 페이지 당 pageNavi 수
	private int startNavi;   // pageNavi 시작 값
	private int endNavi;     // pageNavi 끝 값
	private int totalCount;  // 전체 게시글 개수
	private int MaxPage;     // 페이지의 마지막 번호
	
	public PageInfo() {}
	
	

	public PageInfo(int currentPage, int boardLimit, int naviLimit, int startNavi, int endNavi, int totalCount,
			int maxPage) {
		super();
		this.currentPage = currentPage;
		this.boardLimit = boardLimit;
		this.naviLimit = naviLimit;
		this.startNavi = startNavi;
		this.endNavi = endNavi;
		this.totalCount = totalCount;
		MaxPage = maxPage;
	}



	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getBoardLimit() {
		return boardLimit;
	}

	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
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
		return MaxPage;
	}

	public void setMaxPage(int maxPage) {
		MaxPage = maxPage;
	}


	@Override
	public String toString() {
		return "PageInfo [currentPage=" + currentPage + ", boardLimit=" + boardLimit + ", naviLimit=" + naviLimit
				+ ", startNavi=" + startNavi + ", endNavi=" + endNavi + ", totalCount=" + totalCount + ", MaxPage="
				+ MaxPage + "]";
	}
	
	
	
}
