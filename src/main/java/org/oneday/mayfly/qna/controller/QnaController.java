package org.oneday.mayfly.qna.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.oneday.mayfly.qna.domain.Qna;
import org.oneday.mayfly.qna.common.Pagination;
import org.oneday.mayfly.qna.domain.PageInfo;
import org.oneday.mayfly.qna.service.QnaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller	
public class QnaController {

	@Autowired
	private QnaService qService;

//글 목록
	@RequestMapping(value="/qna/list.mayfly", method=RequestMethod.GET)
	public String qnaListView(
			Model model
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;

		int totalCount = qService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Qna> qList = qService.printAll(pi);
		if(!qList.isEmpty()) {
			model.addAttribute("qList", qList);
			model.addAttribute("pi", pi);
			return "qna/qnaListView";
		}else {
			model.addAttribute("msg", "게시글 전체조회 실패");
			return "common/errorPage";
		}
	}
	
//조회
	@RequestMapping(value="/qna/detail.mayfly", method=RequestMethod.GET)
	public String qnaDetailView(
			Model model
			, @RequestParam("qnaNo") Integer qnaNo) {

		// 비즈니스 로직
		Qna qna = qService.printOneByNo(qnaNo);
		if(qna != null) {
			model.addAttribute("qna", qna);
			return "qna/qnaDetailView";
		}else {
			model.addAttribute("msg", "게시글 조회 실패");
			return "common/errorPage";
		}
	}

	
//글쓰기 페이지
	@RequestMapping(value="/qna/writeView.mayfly", method=RequestMethod.GET)
	public String qnaWriteView() {
		return "qna/qnaWriteForm";
	}

	
//글 등록
	@RequestMapping(value="/qna/register.mayfly", method=RequestMethod.POST)
	public String qnaRegister(
			Model model
			, @ModelAttribute Qna qna
			, HttpServletRequest request) {
		try {
			int result = qService.registerQna(qna);
			if(result > 0) {
				return "redirect:/qna/list.mayfly";
			}else {
				model.addAttribute("msg", "게시글 등록 실패!");
				return "common/errorPage";
			}
		}catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "common/errorPage";
		}
		
	}

//수정 페이지
		@RequestMapping(value="/qna/updateView.mayfly", method=RequestMethod.GET)
		public String updateView(
				Model model 
				,@RequestParam("qnaNo") int qnaNo) {
			Qna qna = qService.printOneByNo(qnaNo);
			if(qna != null) {
				model.addAttribute("qna", qna);
			}
			return "qna/qnaUpdate";
		}

//수정
	@RequestMapping(value="/qna/update.mayfly", method=RequestMethod.POST)
	public String qnaModify(
			@RequestParam("qnaNo") Integer qnaNo, 
			Model model, @ModelAttribute Qna qna) {

        try {
           int result = qService.updateQna(qna);
           if (result > 0) {
              return "redirect:/qna/list.mayfly";
           } else {
              model.addAttribute("msg", "게시글 수정 실패");
              return "common/errorPage";
           }
        } catch (Exception e) {
           model.addAttribute("msg", e.toString());
           return "common/errorPage";
        }

     }

	
//삭제
	@RequestMapping(value="/qna/delete.mayfly", method=RequestMethod.GET)
	   public String qnaDelete(
	         Model model
	         , @RequestParam("qnaNo") int qnaNo) {
	      try {
	         int result = qService.deleteQna(qnaNo);
	         if(result > 0) {            
	            return "redirect:/qna/list.mayfly";
	         }else {
	            model.addAttribute("msg", "삭제 실패");
	            return "qna/qnaListView";
	         }
	      }catch(Exception e) {
	         model.addAttribute("msg", e.toString());
	         return "qna/qnaListView";
	      }
	   }
	
//답변 등록
	@RequestMapping(value="/qna/answer.mayfly", method=RequestMethod.GET)
	public String qnaAnswer(
			Model model
			, @ModelAttribute Qna qna
			, HttpServletRequest request) {
		try {
			int result = qService.answerQna(qna);
			if(result > 0) {
				return "redirect:/qna/detail.mayfly?qnaNo="+qna.getQnaNo();
			}else {
				model.addAttribute("msg", "댓글 등록 실패!");
				return "common/errorPage";
			}
		}catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "common/errorPage";
		}
		
	}
	
//답변 수정
	@RequestMapping(value="/qna/answerUpdate.mayfly", method=RequestMethod.POST)
	public String answerModify(
			@RequestParam("qnaNo") Integer qnaNo, 
			Model model, @ModelAttribute Qna qna) {

        try {
           int result = qService.updateAnswer(qna);
           if (result > 0) {
              return "redirect:/qna/detail.mayfly?qnaNo="+qna.getQnaNo();
           } else {
              model.addAttribute("msg", "답글 수정 실패");
              return "common/errorPage";
           }
        } catch (Exception e) {
           model.addAttribute("msg", e.toString());
           return "common/errorPage";
        } 
	}
	

//답변 삭제
	@RequestMapping(value="/qna/answerDelete.mayfly", method=RequestMethod.GET)
   public String answerDelete(
         Model model
         , @RequestParam("qnaNo") int qnaNo) {
      try {
         int result = qService.deleteAnswer(qnaNo);
         if(result > 0) {            
            return "redirect:/qna/detail.mayfly?qnaNo="+qnaNo;
         }else {
            model.addAttribute("msg", "삭제 실패");
            return "qna/qnaDetailView";
         }
      }catch(Exception e) {
         model.addAttribute("msg", e.toString());
         return "qna/qnaDetailView";
      }
   }
	  
}









