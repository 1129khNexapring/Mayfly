package org.oneday.mayfly.booking.common;

import org.oneday.mayfly.booking.domain.PageInfo;

public class Pagination {
	public static PageInfo getPageInfo(int currentPage, int totalCount) {
		PageInfo pi = null;
		
		int boardLimit = 5;
		int naviLimit = 5;
		int maxPage;
		int startNavi;
		int endNavi;
		
		maxPage = (int)((double)totalCount/boardLimit + 0.9);
		startNavi = (((int)((double)currentPage/naviLimit + 0.9)) - 1) * naviLimit + 1;
		endNavi = startNavi + naviLimit - 1;
		if(maxPage < endNavi) {
			endNavi = maxPage;
		}
		pi = new PageInfo(currentPage, boardLimit, naviLimit, startNavi, endNavi, totalCount, maxPage);
		return pi;
	}

}
