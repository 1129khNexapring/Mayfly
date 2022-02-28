package org.oneday.mayfly.qna.service;

import java.util.List;

import org.oneday.mayfly.qna.domain.PageInfo;
import org.oneday.mayfly.qna.domain.Qna;

public interface QnaService {
	public List<Qna> printAll(PageInfo pi);
	public int getListCount();
	Qna printOneByNo(Integer qnaNo);
	int registerQna(Qna qna);
	
	public int updateQna(Qna qna);
	public int deleteQna(int qnaNo);
	
	public int answerQna(Qna qna);
	public int updateAnswer(Qna qna);
	public int deleteAnswer(int qnaNo);
}