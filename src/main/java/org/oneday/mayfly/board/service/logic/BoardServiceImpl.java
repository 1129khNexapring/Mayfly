package org.oneday.mayfly.board.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.board.domain.Board;
import org.oneday.mayfly.board.domain.BoardPageInfo;
import org.oneday.mayfly.board.service.BoardService;
import org.oneday.mayfly.board.store.BoardStore;
import org.oneday.mayfly.comments.domain.Comments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardStore bStore;
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerBoard(Board board) {
		int result = bStore.insertBoard(sqlSession,board);
		return result;
	}
	
	@Override
	public int modifyBoard(Board board) {
		int result =bStore.updateBoard(sqlSession,board);
		return result;
	}
	
	@Override
	public int removeBoard(int boardNo) {
		int result = bStore.deleteBoard(sqlSession,boardNo);
		return result;
	}
	

	@Override
	public int getListCount() {
		int totalCount = bStore.selectListCount(sqlSession);
		return totalCount;
	}

	@Override
	public List<Board> printAll(BoardPageInfo pi) {
		List<Board> bList = bStore.selectAll(sqlSession, pi);
		return bList;
	}

	@Override
	public Board printOneByNo(int boardNo) {
		Board board=  bStore.selectOneByNo(sqlSession, boardNo);
		return board;
	}
	@Override
	public int viewCount(int boardNo) {
		int boardCount = bStore.updateCount(sqlSession, boardNo);
		return boardCount;
	}

	@Override
	public int registerComments(Comments comments) {
		int result = bStore.insertComments(sqlSession,comments);
		return result;
	}

	@Override
	public List<Comments> printAllComments(int boardNo) {
		List<Comments> cList = bStore.selectAllComments(sqlSession, boardNo);
		return  cList;
	}

	@Override
	public int removeComments(int commentsNo) {
		int result = bStore.deleteComments(sqlSession, commentsNo);
		return result;
	}

	@Override
	public int modifyComments(Comments comments) {
		int result = bStore.updateComments(sqlSession, comments);
		return result;
	}

	@Override
	public List<Board> printAllSearch(BoardPageInfo pi) {
		List<Board> bList = bStore.selectAllSearch(sqlSession, pi);
		return bList;
	}

	


	

}