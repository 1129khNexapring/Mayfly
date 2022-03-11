package org.oneday.mayfly.contents.controller;

import java.util.List;

import org.oneday.mayfly.contents.common.Pagination;
import org.oneday.mayfly.contents.domain.Contents;
import org.oneday.mayfly.contents.domain.PageInfo;
import org.oneday.mayfly.contents.service.ContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ContentsController {
	
	@Autowired
	private ContentsService cService;
	
	//컨텐츠 리스트, ㅇㅇㅇ
	@RequestMapping(value="/contents/list.mayfly", method=RequestMethod.GET)
	public String contentsList(
			Model model
			,@ModelAttribute Contents contents
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = cService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Contents> cList = cService.printAll(pi);
		if(!cList.isEmpty()) {
			model.addAttribute("cList", cList);
			model.addAttribute("pi", pi);
			return "contents/contentsList";
		}else {
			model.addAttribute("msg", "而⑦뀗痢� �쟾泥댁“�쉶 �떎�뙣");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/contents/Detail.mayfly", method=RequestMethod.GET)
	public String contentsDetail(
			Model model
			, @RequestParam(value="contentsNo") Integer contentsNo) {
		
		Contents contents = cService.printOneByNo(contentsNo);
		Integer contentsViews = cService.viewCount(contents.getContentsNo());
		if(contents != null) {
			model.addAttribute("contents", contents);
			return "contents/contentsDetail";
		}else {
			model.addAttribute("msg", "�삤瑜�");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/self/list.mayfly", method=RequestMethod.GET)
	public String contentsListSelf(
			Model model
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = cService.getListCountS();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Contents> sList = cService.printAllS(pi);
		if(!sList.isEmpty()) {
			model.addAttribute("sList", sList);
			model.addAttribute("pi", pi);
			return "contents/selfList";
		}else {
			model.addAttribute("msg", "而⑦뀗痢� �쟾泥댁“�쉶 �떎�뙣");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/self/Detail.mayfly", method=RequestMethod.GET)
	public String contentsDetailSelf(
			Model model
			, @RequestParam(value="contentsNo", required=false) Integer contentsNo) {
		
		Contents contents = cService.printOneByNo(contentsNo);
		Integer contentsViews = cService.viewCount(contents.getContentsNo());
		if(contents != null) {
			model.addAttribute("contents", contents);
			return "contents/selfDetail";
		}else {
			model.addAttribute("msg", "�삤瑜�");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/travel/list.mayfly", method=RequestMethod.GET)
	public String contentsListTravel(
			Model model
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = cService.getListCountT();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Contents> tList = cService.printAllT(pi);
		if(!tList.isEmpty()) {
			model.addAttribute("tList", tList);
			model.addAttribute("pi", pi);
			return "contents/travelList";
		}else {
			model.addAttribute("msg", "而⑦뀗痢� �쟾泥댁“�쉶 �떎�뙣");
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="/travel/Detail.mayfly", method=RequestMethod.GET)
	public String contentsDetailTravel(
			Model model
			, @RequestParam(value="contentsNo", required=false) Integer contentsNo) {
		
		Contents contents = cService.printOneByNo(contentsNo);
		Integer contentsViews = cService.viewCount(contents.getContentsNo());
		if(contents != null) {
			model.addAttribute("contents", contents);
			return "contents/travelDetail";
		}else {
			model.addAttribute("msg", "�삤瑜�");
			return "common/errorPage";
		}
	}
}
