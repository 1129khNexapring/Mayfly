package org.oneday.mayfly.board.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.board.domain.Board;
import org.oneday.mayfly.board.domain.BoardPageInfo;
import org.oneday.mayfly.comments.domain.Comments;

public interface BoardStore {

	public int insertBoard(SqlSession sqlSession, Board board);
	public int updateBoard(SqlSession sqlSession, Board board);
	public int deleteBoard(SqlSession sqlSession, int boardNo);
	public int selectListCount(SqlSession sqlSession);
	List<Board> selectAll(SqlSession sqlSession, BoardPageInfo pi);
	List<Board> selectAllSearch(SqlSession sqlSession, BoardPageInfo pi);
	public Board selectOneByNo(SqlSession sqlSession, Integer boardNo);
	public int updateCount(SqlSession sqlSession, int boardNo);
	

	public int insertComments(SqlSession sqlSession, Comments comments);
	public List<Comments> selectAllComments(SqlSession sqlSession, int boardNo);
	public int deleteComments(SqlSession sqlSession, int commentsNo);
	public int updateComments(SqlSession sqlSession, Comments comments);


}
