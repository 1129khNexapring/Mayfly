package org.oneday.mayfly.board.common;

import org.oneday.mayfly.board.domain.BoardPageInfo;

public class BoardPagination {


	public static BoardPageInfo getPageInfo(int currentPage, int totalCount) {
		BoardPageInfo pi = null;
		int boardLimit = 10;
		int naviLimit = 5;
		int maxPage;
		int startNavi;
		int endNavi;
		// 23/5 = 4.8 + 0.9 = 5.7 => 5
		maxPage = (int)((double)totalCount/boardLimit + 0.9);
		// 1 <- 1 2 3 4 5, 6 <- 6 ~ 10, 11 <- 11 ~ 15
		startNavi = (((int)((double)currentPage/naviLimit+0.9))-1)*naviLimit+1;
		endNavi = startNavi + naviLimit - 1;
		if(maxPage < endNavi) {
			endNavi = maxPage;
		}
		pi = new BoardPageInfo(currentPage, boardLimit, 
				naviLimit, startNavi, endNavi, totalCount, maxPage);
		return pi;
	}

	
}
