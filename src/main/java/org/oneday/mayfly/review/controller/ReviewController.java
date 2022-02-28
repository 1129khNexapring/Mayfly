package org.oneday.mayfly.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.booking.common.Pagination;
import org.oneday.mayfly.review.domain.Review;
import org.oneday.mayfly.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	@RequestMapping(value="/review/List.mayfly", method=RequestMethod.GET)
	public String reviewListView(
			Model model
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = rService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Review> rList = rService.printAll(pi);
		if(!rList.isEmpty()) {
			model.addAttribute("rList", rList);
			model.addAttribute("pi", pi);
			return "review/reviewListView";
		}else {
			model.addAttribute("msg", "후기 목록 조회 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/review/detail.mayfly", method=RequestMethod.GET)
	public String reviewDetailView(
			Model model
			, @RequestParam("bookingNo") Integer bookingNo) {
		Review review = rService.printOneByNo(bookingNo);
		if(review != null) {
			model.addAttribute("review", review);
			return "review/reviewDetailView";
		}else {
			model.addAttribute("msg", "후기 조회 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/review/writeView.mayfly", method=RequestMethod.GET)
	public String reviewWriteView() {
		return "review/reviewWriteForm";
	}
	
	@RequestMapping(value="/review/register.mayfly", method=RequestMethod.GET)
	public String reviewRegister(
			Model model
			, @ModelAttribute Review review
			, HttpServletRequest request) {
		try {
//			Review review = new Review();
//			review.setBookingNo(4);
//			review.setContentName("당일치기여행코스");
//			review.setReviewContent("식도락 여행 너무 좋았습니다.");
//			review.setUserId("khuser04");
			int result = rService.registerReview(review);
			if(result > 0) {
				return "redirect:/review/List.mayfly";
			}else {
				model.addAttribute("msg", "후기 등록 실패");
				return "common/errorPage";
			}
		}catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/review/delete.mayfly", method=RequestMethod.GET)
	public String reviewDelete(
			Model model
			, @RequestParam("bookingNo") Integer bookingNo) {
		int result = rService.reviewRemove(bookingNo);
		if(result > 0) {
			return "redirect:/review/List.mayfly";
		}else {
			model.addAttribute("msg", "후기 삭제 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/review/update.mayfly", method=RequestMethod.GET)
	public String reviewUpdate(
			Model model
			, @RequestParam("bookingNo") Integer bookingNo
			, @RequestParam("reviewContent") String reviewContent) {
		Review review = new Review();
		review.setBookingNo(bookingNo);
		review.setReviewContent(reviewContent);
		int result = rService.reviewmodify(review);
		if(result > 0) {
			return "redirect:/review/detail.mayfly?bookingNo=" + review.getBookingNo();
		}else {
			model.addAttribute("msg", "후기 수정 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/review/modifyView.mayfly", method=RequestMethod.GET)
	public String reviewModifyView(
			Model model
			, @RequestParam("bookingNo") Integer bookingNo) {
		Review review = rService.printOneByNo(bookingNo);
		model.addAttribute("review", review);
		return "review/reviewModifyForm";
	}
	
}