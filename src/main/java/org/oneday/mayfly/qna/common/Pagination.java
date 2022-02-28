package org.oneday.mayfly.qna.common;

import org.oneday.mayfly.qna.domain.PageInfo;

public class Pagination {
	public static PageInfo getPageInfo(int currentPage, int totalCount) {
		PageInfo pi = null;
		int qnaLimit = 10;
		int naviLimit = 10;
		int maxPage;
		int startNavi;
		int endNavi;
		
		maxPage = (int)((double)totalCount/qnaLimit + 0.9);
		
		startNavi = (((int)((double)currentPage/naviLimit+0.9))-1)*naviLimit+1;
		endNavi = startNavi + naviLimit - 1;
		if(maxPage < endNavi) {
			endNavi = maxPage;
		}
		pi = new PageInfo(currentPage, qnaLimit, 
				naviLimit, startNavi, endNavi, totalCount, maxPage);
		return pi;
	}
}
