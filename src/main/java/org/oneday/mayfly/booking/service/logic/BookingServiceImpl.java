package org.oneday.mayfly.booking.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.Booking;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.booking.service.BookingService;
import org.oneday.mayfly.booking.store.BookingStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	private BookingStore bStore;
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getListCount() {
		int totalCount = bStore.selectListCount(sqlSession);
		return totalCount;
	}
	
	@Override
	public List<Booking> printAll(PageInfo pi) {
		List<Booking> bList = bStore.selectAll(sqlSession, pi);
		return bList;
	}

	@Override
	public Booking printOneByNo(int bookingNo) {
		Booking booking = bStore.selectOneByNo(sqlSession, bookingNo);
		return booking;
	}
		
	@Override
	public int registerBooking(Booking booking) {
		int result = bStore.insertBooking(sqlSession, booking);
		return result;
	}

	@Override
	public int removeOneByNo(int bookingNo) {
		int result = bStore.removeBooking(sqlSession, bookingNo);
		return result;
	}

	

	
	
	

	

}
