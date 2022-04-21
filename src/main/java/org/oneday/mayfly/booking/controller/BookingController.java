package org.oneday.mayfly.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.oneday.mayfly.booking.domain.Booking;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.booking.service.BookingService;
import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.contents.service.ContentsService;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.common.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

// 예약
@Controller
public class BookingController {
	
	@Autowired
	private BookingService bService;
	
	@Autowired
	private ContentsService cService;
	
	@RequestMapping(value="/booking/List.mayfly", method=RequestMethod.GET)
	public String bookingListView(
			Model model
			, Booking booking
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = bService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Booking> bList = bService.printAll(pi);
		if(!bList.isEmpty()) {
			model.addAttribute("bList", bList);
			model.addAttribute("pi", pi);
			return "booking/bookingListView";
		}else {
			model.addAttribute("msg", "예약 목록 조회 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/booking/detail.mayfly", method=RequestMethod.GET)
	public String bookingDetailView(
			Model model
			, @RequestParam("bookingNo") Integer bookingNo) {
		Booking booking = bService.printOneByNo(bookingNo);
		if(booking != null) {
			model.addAttribute("booking", booking);
			return "booking/bookingDetailView";
		}else {
			model.addAttribute("msg", "예약 조회 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/booking/register.mayfly", method=RequestMethod.GET)
	public String bookingRegiester(
			Model model
			, HttpSession session
			, @ModelAttribute Booking booking
			, @RequestParam("choiceDate") String choiceDate) {
		try {
			String userId = (String)session.getAttribute("userId"); // session에서 로그인 값 가져옴.
			booking.setUserId(userId);
			int result = bService.registerBooking(booking);
			if(result > 0) {
				model.addAttribute("booking", booking);
				return "/booking/bookingInfo";
			}else {
				model.addAttribute("msg", "예약 실패");
				return "common/errorPage";
			}			
		}catch(Exception e) {			
			model.addAttribute("msg", e.toString());
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/booking/writeView", method=RequestMethod.GET)
	public String bookingInsertView(
			Model model
			, @RequestParam(value="contentNo", required=false) int contentNo
			, @RequestParam(value="contentsType", required=false) String contentsType
			, @RequestParam(value="contentsTitle", required=false) String contentsTitle) {
			 Contents contents = cService.printOneByNo(contentNo);
			 if(contents != null) {
				 model.addAttribute("contentsType", contents.getContentsType());
				 model.addAttribute("contentsTitle", contents.getContentsTitle());
			 }else {
				 model.addAttribute("contentsType", contentsType);
				 model.addAttribute("contentsTitle", contentsTitle);
			 }
		return "booking/bookingWriteForm";
	}
	
	@RequestMapping(value="/booking/delete.mayfly", method=RequestMethod.GET)
	public String bookingDelete(
			Model model
			, @RequestParam("bookingNo") Integer bookingNo) {
		int result = bService.removeOneByNo(bookingNo);
		if(result > 0) {
			return "redirect:/booking/List.mayfly";
		}else {
			model.addAttribute("msg", "예약 삭제 실패");
			return "common/errorPage";
		}
	}
	
//	@RequestMapping(value="/template/homeView.mayfly", method=RequestMethod.GET)
//	public String mayFlyHomeView() {
//		return "template/template";
//	}
	
	@RequestMapping(value="/booking/bookingInfo.mayfly", method=RequestMethod.GET)
	public String bookingInfo(
			Model model) {
		return "booking/bookingInfo";
	}
	
	
	
	
}
