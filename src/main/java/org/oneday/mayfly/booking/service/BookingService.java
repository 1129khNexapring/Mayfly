package org.oneday.mayfly.booking.service;

import java.util.List;

import org.oneday.mayfly.booking.domain.Booking;
import org.oneday.mayfly.booking.domain.PageInfo;

public interface BookingService {
	public Booking printOneByNo(int bookingNo);
	public List<Booking> printAll(PageInfo pi);
	public int registerBooking(Booking booking);
	public int removeOneByNo(int bookingNo);
	public int getListCount();
	
}
