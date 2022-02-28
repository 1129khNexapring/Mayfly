package org.oneday.mayfly.booking.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.Booking;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.booking.store.BookingStore;
import org.springframework.stereotype.Repository;

@Repository
public class BookingStoreLogic implements BookingStore{
	
	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("BookingMapper.selectListCount");
		return totalCount;
	}
	
	@Override
	public Booking selectOneByNo(SqlSession sqlSession, int bookingNo) {
		Booking booking = sqlSession.selectOne("BookingMapper.selectOneByNo", bookingNo);
		return booking;
	}
	
	@Override
	public List<Booking> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Booking> bList = sqlSession.selectList("BookingMapper.selectAllList", pi, rowBounds);
		return bList;
	}
	
	@Override
	public int insertBooking(SqlSession sqlSession, Booking booking) {
		int result = sqlSession.insert("BookingMapper.insertBooking", booking);
		return result;
	}

	@Override
	public int removeBooking(SqlSession sqlSession, int bookingNo) {
		int result = sqlSession.delete("BookingMapper.deleteBooking", bookingNo);
		return result;
	}

	

	

}
