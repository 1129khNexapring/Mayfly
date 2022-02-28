package org.oneday.mayfly.board.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.board.domain.Board;
import org.oneday.mayfly.board.domain.BoardPageInfo;
import org.oneday.mayfly.board.store.BoardStore;
import org.oneday.mayfly.comments.domain.Comments;
import org.springframework.stereotype.Repository;

@Repository
public class BoardStoreLogic implements BoardStore{
	@Override
	public int insertBoard(SqlSession sqlSession, Board board) {
		int result = sqlSession.insert("BoardMapper.insertBoard", board);
		return result;
	}
	@Override
	public int updateBoard(SqlSession sqlSession, Board board) {
		int result = sqlSession.update("BoardMapper.updateBoard", board);
		return result;
	}
	@Override
	public int deleteBoard(SqlSession sqlSession, int boardNo) {
		int result = sqlSession.delete("BoardMapper.deleteBoard", boardNo);
		return result;
	}
	
	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("BoardMapper.selectListCount");
		return totalCount;
	}

	@Override
	public List<Board> selectAll(SqlSession sqlSession, BoardPageInfo pi) {
		// 1 -> 1 ~ 10
		// 2 -> 11 ~ 20
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Board> bList 
			= sqlSession.selectList("BoardMapper.selectAllList", pi, rowBounds);
		return bList;
	}


	@Override
	public Board selectOneByNo(SqlSession sqlSession, Integer boardNo) {
		Board board = sqlSession.selectOne("BoardMapper.selectOneByNo",boardNo);
		return board;
	}
	@Override
	public int insertComments(SqlSession sqlSession, Comments comments) {
		int result = sqlSession.insert("CommentsMapper.insertComments", comments);
		return result;
	}
	@Override
	public List<Comments> selectAllComments(SqlSession sqlSession, int boardNo) {
		List<Comments> cList = sqlSession.selectList("CommentsMapper.selectCommentsList", boardNo);
		return cList;
	}
	@Override
	public int deleteComments(SqlSession sqlSession, int commentsNo) {
		int result = sqlSession.delete("CommentsMapper.deleteComments", commentsNo);
		return result;
	}
	@Override
	public int updateComments(SqlSession sqlSession, Comments comments) {
		int result = sqlSession.update("CommentsMapper.updateComments", comments);
		return result;
	}
	@Override
	public int updateCount(SqlSession sqlSession, int boardNo) {
		int boardCount = sqlSession.update("BoardMapper.updateCount", boardNo);
		return boardCount;
	}
	@Override
	public List<Board> selectAllSearch(SqlSession sqlSession, BoardPageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Board> bList 
			= sqlSession.selectList("BoardMapper.selectSearchAllList", pi, rowBounds);
		return bList;
	}
	


}
