package org.oneday.mayfly.comments.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.comments.domain.Comments;
import org.oneday.mayfly.comments.domain.CommentsPageInfo;
import org.oneday.mayfly.comments.service.CommentsService;
import org.oneday.mayfly.comments.store.CommentsStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentsServiceImpl implements CommentsService{
		@Autowired
		private CommentsStore cStore;
		
		@Autowired
		private SqlSession sqlSession;
		
	@Override
	public int registerComments(Comments comments) {
		int result = cStore.insertComments(sqlSession, comments);
		return result;
	}

	@Override
	public int modifyComments(Comments comments) {
		int result = cStore.updateComments(sqlSession, comments);
		return result;
	}

	@Override
	public int removeComments(int commentsNo) {
		int result = cStore.deleteComments(sqlSession, commentsNo);
		return result;
	}
	
	@Override
	public Comments printOneByNo(Integer commentsNo) {
		Comments comments = cStore.selectOneByNo(sqlSession, commentsNo);
		return comments;
	}

	@Override
	public List<Comments> printAll(CommentsPageInfo pi) {
		List<Comments>  cList = cStore.selectAll(sqlSession, pi);
		return cList;
	}

	@Override
	public int getListCount() {
		int totalCount = cStore.selectListCount(sqlSession);
		return totalCount;
	}


	

	

	

}
