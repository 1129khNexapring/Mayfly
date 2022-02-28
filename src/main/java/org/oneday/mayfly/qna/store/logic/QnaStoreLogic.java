package org.oneday.mayfly.qna.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.qna.domain.Qna;
import org.oneday.mayfly.qna.domain.PageInfo;
import org.oneday.mayfly.qna.store.QnaStore;
import org.springframework.stereotype.Repository;

@Repository
public class QnaStoreLogic implements QnaStore{

	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("QnaMapper.selectListCount");
		return totalCount;
	}
	
//글목록
	@Override
	public List<Qna> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getQnaLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Qna> qList 
			= sqlSession.selectList("QnaMapper.selectAllList", pi, rowBounds);
		return qList;
	}
	
//조회
	@Override
	public Qna selectOneByNo(SqlSession sqlSession, Integer qnaNo) {
		Qna qna = sqlSession.selectOne("QnaMapper.selectOneByNo",qnaNo);
		return qna;
	}

//글 등록
	@Override
	public int insertQna(SqlSession sqlSession, Qna qna) {
		int result = sqlSession.insert("QnaMapper.insertQna", qna);
		return result;
	}
	
//글 수정
	@Override
	public int updateQna(SqlSession sqlSession, Qna qna) {
		int result = sqlSession.update("QnaMapper.updateQna", qna);
		return result;
	}
	
//글 삭제
	@Override
	public int deleteQna(SqlSession sqlSession, int qnaNo) {
		int result = sqlSession.delete("QnaMapper.deleteQna", qnaNo);
		return result;
	}

//답변 등록
	@Override
	public int answerQna(SqlSession sqlSession, Qna qna) {
		int result = sqlSession.insert("QnaMapper.answerQna", qna);
		return result;
	}

//답변 수정
	@Override
	public int updateAnswer(SqlSession sqlSession, Qna qna) {
		int result = sqlSession.update("QnaMapper.updateAnswer", qna);
		return result;
	}

//답변 삭제
	@Override
	public int deleteAnswer(SqlSession sqlSession, int qnaNo) {
		int result = sqlSession.delete("QnaMapper.deleteAnswer", qnaNo);
		return result;
	}


}
