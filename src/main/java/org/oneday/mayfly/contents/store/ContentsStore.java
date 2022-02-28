package org.oneday.mayfly.contents.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.contents.domain.PageInfo;


public interface ContentsStore {
	public int selectListCount(SqlSession sqlSession);

	public List<Contents> selectAll(SqlSession sqlSession, PageInfo pi);

	public Contents selectOneByNo(SqlSession sqlSession, Integer contentsNo);

	public List<Contents> selectAllS(SqlSession sqlSession, PageInfo pi);

	public int selectListCountS(SqlSession sqlSession);

	public int selectListCountT(SqlSession sqlSession);

	public List<Contents> selectAllT(SqlSession sqlSession, PageInfo pi);

	public int updateViews(SqlSession sqlSession, int contentsNo);

}
