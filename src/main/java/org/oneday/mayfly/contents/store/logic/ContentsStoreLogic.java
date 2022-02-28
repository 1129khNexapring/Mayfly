package org.oneday.mayfly.contents.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.contents.domain.PageInfo;
import org.oneday.mayfly.contents.store.ContentsStore;
import org.springframework.stereotype.Repository;
@Repository
public class ContentsStoreLogic implements ContentsStore {

	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("ContentsMapper.selectListCount");
		return totalCount;
	}

	@Override
	public List<Contents> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getContentsLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Contents> cList 
			= sqlSession.selectList("ContentsMapper.selectAllList", pi, rowBounds);
		return cList;
		
	}

	@Override
	public Contents selectOneByNo(SqlSession sqlSession, Integer contentsNo) {
		Contents contents = sqlSession.selectOne("ContentsMapper.selectOneByNo", contentsNo);
		return contents;
	}

	@Override
	public List<Contents> selectAllS(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getContentsLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Contents> sList 
			= sqlSession.selectList("ContentsMapper.selectAllListS", pi, rowBounds);
		return sList;
	}

	@Override
	public int selectListCountS(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("ContentsMapper.selectListCountS");
		return totalCount;
	}

	@Override
	public int selectListCountT(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("ContentsMapper.selectListCountT");
		return totalCount;
	}

	@Override
	public List<Contents> selectAllT(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getContentsLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Contents> tList 
			= sqlSession.selectList("ContentsMapper.selectAllListT", pi, rowBounds);
		return tList;
	}

	@Override
	public int updateViews(SqlSession sqlSession, int contentsNo) {
		int contentsViews = sqlSession.update("ContentsMapper.updateViews", contentsNo);
		return contentsViews;
	}



}
