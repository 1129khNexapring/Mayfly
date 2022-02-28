package org.oneday.mayfly.interest.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.oneday.mayfly.booking.domain.Booking;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.booking.common.Pagination;
import org.oneday.mayfly.interest.domain.Interest;
import org.oneday.mayfly.interest.service.InterestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InterestController {
	
	@Autowired
	private InterestService iService;
	
	@RequestMapping(value="/interest/List.mayfly", method=RequestMethod.GET)
	public String interestListView(
			Model model
			, @RequestParam(value="page", required=false) Integer page
			, @ModelAttribute Contents contents
			, @ModelAttribute Booking booking) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = iService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Interest> iList = iService.printAll(pi);
		if(!iList.isEmpty()) {
			model.addAttribute("iList", iList);
			model.addAttribute("pi", pi);
			return "interest/interestListView";
		}else {
			model.addAttribute("msg", "관심 목록 조회 실패");
			return "common/errorPage";
		}
	}
	
	
	@RequestMapping(value="/interest/register.mayfly", method=RequestMethod.GET)
	public String interestRegister(
			Model model
			, HttpSession session
			, @ModelAttribute Interest interest) {
		try {
			String userId = (String)session.getAttribute("userId"); // session에서 로그인 값 가져옴.
			interest.setUserId(userId);
			int result = iService.regiesterInterest(interest);
			if(result > 0) {
				return "redirect:/contents/Detail.mayfly?contentsNo=" + interest.getContentNo(); //
			}else {
				model.addAttribute("msg", "관심목록 저장 실패!");
				return "common/errorPage";
			}			
		}catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/interest/delete.mayfly", method=RequestMethod.GET)
	public String interestDelete(
			Model model
			, @RequestParam("boardNo") Integer boardNo) {
		int result = iService.removeOneByNo(boardNo);
		if(result > 0) {
			return "redirect:/interest/List.mayfly";
		}else {
			model.addAttribute("msg", "관심 목록 삭제 실패!");
			return "common/errorPage";
		}
	}
	
	
}
