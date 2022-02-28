package org.oneday.mayfly.qna.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.qna.domain.PageInfo;
import org.oneday.mayfly.qna.domain.Qna;
import org.oneday.mayfly.qna.service.QnaService;
import org.oneday.mayfly.qna.store.QnaStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	private QnaStore qStore;
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getListCount() {
		int totalCount = qStore.selectListCount(sqlSession);
		return totalCount;
	}

//글 목록
	@Override
	public List<Qna> printAll(PageInfo pi) {
		List<Qna> qList = qStore.selectAll(sqlSession, pi);
		return qList;
	}
//조회	
	@Override
	public Qna printOneByNo(Integer qnaNo) {
		Qna qna = qStore.selectOneByNo(sqlSession, qnaNo);
		return qna;
	}

//글 등록
	@Override
	public int registerQna(Qna qna) {
		int result = qStore.insertQna(sqlSession,qna);
		return result;
	}
		
//수정
	public int updateQna(Qna qna) {
		int result = qStore.updateQna(sqlSession, qna);
		return result;
	}
	
//삭제
	@Override
	public int deleteQna(int qnaNo) {
		int result = qStore.deleteQna(sqlSession, qnaNo);
		return result;
	
	}
	
//답변 등록
	@Override
	public int answerQna(Qna qna) {
		int result = qStore.answerQna(sqlSession,qna);
		return result;
	}

//답변 수정	
	@Override
	public int updateAnswer(Qna qna) {
		int result = qStore.updateAnswer(sqlSession, qna);
		return result;
	}

//답변 삭제
	@Override
	public int deleteAnswer(int qnaNo) {
		int result = qStore.deleteAnswer(sqlSession, qnaNo);
		return result;
	}

	

}
