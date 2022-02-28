package org.oneday.mayfly.booking.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.Booking;
import org.oneday.mayfly.booking.domain.PageInfo;

public interface BookingStore {
	public int selectListCount(SqlSession sqlSession);
	public Booking selectOneByNo(SqlSession session, int bookingNo);
	public List<Booking> selectAll(SqlSession sqlSession,PageInfo pi);
	public int insertBooking(SqlSession session, Booking booking);
	public int removeBooking(SqlSession session, int bookingNo);
	
}
