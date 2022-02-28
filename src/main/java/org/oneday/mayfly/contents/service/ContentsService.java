package org.oneday.mayfly.contents.service;

import java.util.List;

import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.contents.domain.PageInfo;

public interface ContentsService {

	public int getListCount();

	public int getListCountS();
	
	public int getListCountT();
		
	public Contents printOneByNo(Integer contentsNo);

	public List<Contents> printAll(PageInfo pi);
	
	public List<Contents> printAllS(PageInfo pi);

	public List<Contents> printAllT(PageInfo pi);

	public int viewCount(int contentsNo);

}
