package org.oneday.mayfly.comments.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import org.oneday.mayfly.comments.domain.Comments;
import org.oneday.mayfly.comments.domain.CommentsPageInfo;
import org.oneday.mayfly.comments.store.CommentsStore;
import org.springframework.stereotype.Repository;

@Repository
public class CommentsStoreLogic implements CommentsStore{

	@Override
	public int insertComments(SqlSession sqlSession, Comments comments) {
		int result = sqlSession.insert("CommentsMapper.insertComments", comments);
		return result;
	}

	@Override
	public int updateComments(SqlSession sqlSession, Comments comments) {
		int result = sqlSession.update("CommentsMapper.updateComments", comments);
		return result;
	}
	@Override
	public int deleteComments(SqlSession sqlSession, int commentsNo) {
		int result = sqlSession.delete("CommentsMapper.deleteComments", commentsNo);
		return result;
	}

	@Override
	public Comments selectOneByNo(SqlSession sqlSession, Integer commentsNo) {
		Comments comments = sqlSession.selectOne("CommentsMapper.selectOneByNo", commentsNo);
		return comments;
	}

	@Override
	public List<Comments> selectAll(SqlSession sqlSession, CommentsPageInfo pi) {
		int limit = pi.getCommentsLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Comments> cList = sqlSession.selectList("CommentsMapper.selectAllList", pi, rowBounds);
		return cList;
	}

	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("CommentsMapper.selectListCount");
		return totalCount;
	}


	
	
}
