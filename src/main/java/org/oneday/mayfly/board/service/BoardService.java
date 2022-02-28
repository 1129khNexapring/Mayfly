package org.oneday.mayfly.board.service;

import java.util.List;

import org.oneday.mayfly.board.domain.Board;
import org.oneday.mayfly.board.domain.BoardPageInfo;
import org.oneday.mayfly.comments.domain.Comments;

public interface BoardService {

	public int registerBoard(Board board);
	public int modifyBoard(Board board);
	public int removeBoard(int boardNo);
	public Board printOneByNo(int boardNo);
	public int getListCount();
	public List<Board> printAll(BoardPageInfo pi);
	public List<Board> printAllSearch(BoardPageInfo pi);
	public int viewCount(int boardNo);
	
	
	
	public int registerComments(Comments comments);
	public List<Comments> printAllComments(int boardNo);
	public int removeComments(int commentsNo);
	public int modifyComments(Comments comments);
	
	
}
