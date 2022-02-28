package org.oneday.mayfly.interest.service;

import java.util.List;

import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.interest.domain.Interest;

public interface InterestService {
	public int regiesterInterest(Interest interest);
	public List<Interest> printAll(PageInfo pi);
	public int getListCount();
	public int removeOneByNo(int boardNo);
}
