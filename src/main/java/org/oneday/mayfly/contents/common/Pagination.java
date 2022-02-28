package org.oneday.mayfly.contents.common;

import org.oneday.mayfly.contents.domain.PageInfo;

public class Pagination {
	public static PageInfo getPageInfo(int currentPage, int totalCount) {
		PageInfo pi = null;
		
		int contentsLimit = 6;
		int naviLimit = 10;
		int maxPage;
		int startNavi;
		int endNavi;
		int prevPage = currentPage - 1;
		int nextPage = currentPage + 1;
		
		
		maxPage = (int)((double)totalCount/contentsLimit + 0.9);
		// currentPage가 1일때는 1 ~ 5, 6일때  6 ~ 10, 11일때 11 ~ 15
		startNavi = (((int)((double)currentPage/naviLimit+0.9))-1)*naviLimit+1;
		endNavi = startNavi + naviLimit - 1;
		if(maxPage < endNavi) {
			endNavi = maxPage;
		}

		pi = new PageInfo(currentPage, contentsLimit, naviLimit, startNavi, endNavi, totalCount, maxPage, prevPage, nextPage);
		return pi;
	}

}