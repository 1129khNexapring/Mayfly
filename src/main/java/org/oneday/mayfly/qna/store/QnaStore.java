package org.oneday.mayfly.qna.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.qna.domain.PageInfo;
import org.oneday.mayfly.qna.domain.Qna;

public interface QnaStore {

	public int selectListCount(SqlSession sqlSession);
	public List<Qna> selectAll(SqlSession sqlSession, PageInfo pi);
	public Qna selectOneByNo(SqlSession sqlSession, Integer qnaNo);
	public int insertQna(SqlSession sqlSession, Qna qna);
	public int deleteQna(SqlSession sqlSession, int qnaNo);
	public int updateQna(SqlSession sqlSession, Qna qna);
	
//답변	
	public int answerQna(SqlSession sqlSession, Qna qna);
	public int updateAnswer(SqlSession sqlSession, Qna qna);
	public int deleteAnswer(SqlSession sqlSession, int qnaNo);
	
	
}
