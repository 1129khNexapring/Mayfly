package org.oneday.mayfly.comments.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.oneday.mayfly.comments.common.CommentsPagination;
import org.oneday.mayfly.comments.domain.Comments;
import org.oneday.mayfly.comments.domain.CommentsPageInfo;
import org.oneday.mayfly.comments.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommentsController {
	
	@Autowired
	private CommentsService cService;
	
	@RequestMapping(value="/comments/list.mayfly", method=RequestMethod.GET)
	public String CommentsListView(
			Model model
			,@RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = cService.getListCount();
		CommentsPageInfo pi = CommentsPagination.getPageInfo(currentPage, totalCount);
		List<Comments>cList = cService.printAll(pi);
	if(!cList.isEmpty()) {
		model.addAttribute("cList", cList);
		model.addAttribute("pi", pi);
		return "comments/commentsListView";
	}else {
		model.addAttribute("msg", "게시글 전체조회 실패");
		return "comments/commentsErrorPage";
	}
}

	@RequestMapping(value="/comments/writeView.mayfly",method= RequestMethod.GET )
	public String commentsWriteView() {
		return "comments/commentsWriteForm";
	}
	
	
	@RequestMapping(value="/comments/register.mayfly", method= RequestMethod.POST)
	public String CommentsRegister(
			Model model
			,@ModelAttribute Comments comments
			,   HttpServletRequest request) {
		
		try { 
		int result = cService.registerComments(comments);
		if(result>0) {
			 return "redirect:/comments/list.mayfly"; 
		} else {
			model.addAttribute("msg","댓글 등록을 실패하였습니다.");
			return "comments/commentsErrorPage";
		}
		} catch (Exception e) {
			model.addAttribute("msg", e.toString()); 
			return "comments/commentsErrorPage";
		}
	}
	@RequestMapping(value="/comments/detail.mayfly", method=RequestMethod.GET)
	public String CommentsDetailView(
			Model model
			, @RequestParam(value="commentsNo") Integer commentsNo) {
		Comments comments = cService.printOneByNo(commentsNo);
		
		if(comments != null) {
			model.addAttribute("comments",comments);
			return "comments/commentsDetail";
		}else {
			model.addAttribute("msg", "댓글 조회 실패");
			return  "comments/commentsErrorPage";
		}
		
	}
	@RequestMapping(value="/comments/updateView.mayfly",method=RequestMethod.GET)
	public String boardModifyView(Model model
			,@RequestParam("commentsNo") int commentsNo) {
		Comments comments = cService.printOneByNo(commentsNo);
		model.addAttribute("comments" , comments);
		return "comments/commentsModifyForm";
	}
	
	
	@RequestMapping(value="/comments/modify.mayfly", method=RequestMethod.POST)
	public String commentsModify(
			Model model
			, @ModelAttribute Comments comments
			, HttpServletRequest request
			) {
		try {
			int result = cService.modifyComments(comments);
			
			if(result> 0) {
				return "redirect:/comments/detail.mayfly?commentsNo="+comments.getCommentsNo();
			}else {
				model.addAttribute("msg", "댓글 수정을 실패하였습니다.");
				return "comments/commentsErrorPage";
			}
			}catch (Exception e) {
				model.addAttribute("msg", e.toString());
				return "comments/commentsErrorPage";
			}
		
	}
	@RequestMapping(value="/comments/remove.mayfly",method=RequestMethod.GET)
	public String commentsRemove(
			Model model
			,@RequestParam("commentsNo") int commentsNo) {
		try {
		int result = cService.removeComments(commentsNo);
			 if(result>0) {
				 return "redirect:/comments/list.mayfly";
			}else {
				model.addAttribute("msg", "게시판 삭제 실패");
				return "comments/commentsErrorPage";
		
	}
			 }catch(Exception e) {
		model.addAttribute("msg", e.toString());
		return "comments/commentsErrorPage";
	}



	}
	
}
