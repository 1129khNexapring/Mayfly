package org.oneday.mayfly.contents.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.contents.domain.PageInfo;
import org.oneday.mayfly.contents.service.ContentsService;
import org.oneday.mayfly.contents.store.ContentsStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ContentsServiceImpl implements ContentsService {
	
	
	@Autowired
	private ContentsStore cStore;
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getListCount() {
		int totalCount = cStore.selectListCount(sqlSession);
		return totalCount;
	}

	@Override
	public List<Contents> printAll(PageInfo pi) {
		List<Contents> cList = cStore.selectAll(sqlSession, pi);
		return cList;
	}
	
	@Override
	public Contents printOneByNo(Integer contentsNo) {
		Contents contents = cStore.selectOneByNo(sqlSession, contentsNo);
		return contents;
	}

	@Override
	public List<Contents> printAllS(PageInfo pi) {
		List<Contents> sList = cStore.selectAllS(sqlSession, pi);
		return sList;
	}

	@Override
	public int getListCountS() {
		int totalCount = cStore.selectListCountS(sqlSession);
		return totalCount;
	}

	@Override
	public int getListCountT() {
		int totalCount = cStore.selectListCountT(sqlSession);
		return totalCount;
	}

	@Override
	public List<Contents> printAllT(PageInfo pi) {
		List<Contents> tList = cStore.selectAllT(sqlSession, pi);
		return tList;
	}

	@Override
	public int viewCount(int contentsNo) {
		int contentsViews = cStore.updateViews(sqlSession, contentsNo);
		return contentsViews;
	}
}
