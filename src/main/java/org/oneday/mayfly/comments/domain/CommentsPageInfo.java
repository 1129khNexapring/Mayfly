package org.oneday.mayfly.comments.domain;

public class CommentsPageInfo {
	
	private int currentPage; // 현재 페이지
	private int commentsLimit;  // 한 페이지 당 게시글 갯수
	private int naviLimit;   // 한 페이지 당 pageNavi 수
	private int startNavi;   // pageNavi 시작값
	private int endNavi;	 // pageNavi 끝값
	private int totalCount;  // 전체 게시글 갯수
	private int maxPage;	 // 페이지의 마지막 번호
	
	public CommentsPageInfo() {}

	public CommentsPageInfo(int currentPage, int commentsLimit, int naviLimit, int startNavi, int endNavi,
			int totalCount, int maxPage) {
		super();
		this.currentPage = currentPage;
		this.commentsLimit = commentsLimit;
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

	public int getCommentsLimit() {
		return commentsLimit;
	}

	public void setCommentsLimit(int commentsLimit) {
		this.commentsLimit = commentsLimit;
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
		return "CommentsPageInfo [currentPage=" + currentPage + ", commentsLimit=" + commentsLimit + ", naviLimit="
				+ naviLimit + ", startNavi=" + startNavi + ", endNavi=" + endNavi + ", totalCount=" + totalCount
				+ ", maxPage=" + maxPage + "]";
	}
	
	
}
