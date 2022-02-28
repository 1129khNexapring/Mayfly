package org.oneday.mayfly.comments.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.comments.domain.Comments;
import org.oneday.mayfly.comments.domain.CommentsPageInfo;

public interface CommentsStore {

	public int insertComments(SqlSession sqlSession, Comments comments);
	public int updateComments(SqlSession sqlSession, Comments comments);
	public int deleteComments(SqlSession sqlSession, int commentsNo);

	public Comments selectOneByNo(SqlSession sqlSession, Integer commentsNo);

	public List<Comments> selectAll(SqlSession sqlSession, CommentsPageInfo pi);

	public int selectListCount(SqlSession sqlSession);




}
