package org.oneday.mayfly.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.oneday.mayfly.board.common.BoardPagination;
import org.oneday.mayfly.board.domain.Board;
import org.oneday.mayfly.board.domain.BoardPageInfo;
import org.oneday.mayfly.board.service.BoardService;
import org.oneday.mayfly.comments.domain.Comments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;




@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	
	
	@RequestMapping(value="/board/list.mayfly", method=RequestMethod.GET)
	public String boardListView(
			Model model
			, @RequestParam(value="page", required=false) Integer page)
			 {
		int currentPage = (page != null) ? page : 1;
		int totalCount = bService.getListCount();
		BoardPageInfo pi = BoardPagination.getPageInfo(currentPage, totalCount);
		List<Board>bList = bService.printAll(pi);
		if(!bList.isEmpty()) {
			model.addAttribute("bList", bList);
			model.addAttribute("pi", pi);
			return "board/boardListView";
		}else {
			model.addAttribute("msg", "게시글 전체조회 실패");
			return "board/boardErrorPage";
		}
	}
	
	@RequestMapping(value="/board/searchList.mayfly", method=RequestMethod.GET)
	public String boardSearchListView(
			Model model
			, @RequestParam(value="page", required=false) Integer page
			, @RequestParam(value="searchKeyword", required=false) String searchKeyword
			, @RequestParam(value="searchType", required=false) String searchType) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = bService.getListCount();
		
		BoardPageInfo pi = BoardPagination.getPageInfo(currentPage, totalCount);
		pi.setSearchKeyword(searchKeyword);
		pi.setSearchType(searchType);
		List<Board>bList = bService.printAllSearch(pi);
			if(!bList.isEmpty()) {
				model.addAttribute("bList", bList);
				model.addAttribute("pi", pi);
				return "board/boardListView";
			}else {
				model.addAttribute("msg", "게시글 전체조회 실패");
				return "board/boardErrorPage";
			}
	}
	
	
	
	@RequestMapping(value="/board/writeView.mayfly",  method=RequestMethod.GET)
	public String boardWriteView() {
		
		return "board/boardWriteForm";
		
	}
	@RequestMapping(value="/board/register.mayfly", method = RequestMethod.POST)
	public String boardRegister(
			Model model
			,@ModelAttribute Board board
			, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
			, HttpServletRequest request) {
		try {
			if(!uploadFile.getOriginalFilename().equals("")) {
				String renameFileName = saveFile(uploadFile, request); 
				if(renameFileName != null) { 
					board.setBoardFilename(uploadFile.getOriginalFilename());
					board.setBoardFileRename(renameFileName);
				}
			}
			int result = bService.registerBoard(board);
			if(result > 0) {
				return "redirect:/board/list.mayfly";
			}else {
				model.addAttribute("msg", "게시글 등록을 실패하였습니다.");
				return "board/boardErrorPage";
			}
		}catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "board/boardErrorPage";
		}

	}
	
	public String saveFile(MultipartFile uploadFile, HttpServletRequest request) {
		// 파일 경로
		String root = request.getSession()
				.getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";
		// 폴더 선택
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdir();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = uploadFile.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis()))
				+"."+originalFileName.substring(originalFileName.lastIndexOf(".")+1);
		String filePath = folder + "\\" + renameFileName;
		
		try {
			uploadFile.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return renameFileName;
		
	}
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/board/detail.mayfly", method=RequestMethod.GET)
	public String boardDetailView(
			Model model
			, @RequestParam(value="boardNo") Integer boardNo) {
		Board board = bService.printOneByNo(boardNo);
		Integer boardCount = bService.viewCount(board.getBoardNo());
		
		if(board != null) {
			model.addAttribute("board", board);
			return "board/boardDetail";
		}else {
			model.addAttribute("msg", "게시글 조회 실패");
			return "board/errorPage";
		}
		
	}
	
	
	@RequestMapping(value="/board/updateView.mayfly",method=RequestMethod.GET)
	public String boardModifyView(Model model
			,@RequestParam("boardNo") int boardNo) {
		Board board = bService.printOneByNo(boardNo);
		model.addAttribute("board", board);
		return "board/boardModifyForm";
	}
	
	@RequestMapping(value="/board/modify.mayfly", method=RequestMethod.POST)
	public String BoardModify(
			Model model
			,@ModelAttribute Board board
			, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
			, HttpServletRequest request
			) {
		try{
			if(uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
				String renameFileName = saveFile(uploadFile, request); 
				if(renameFileName != null) { 
					board.setBoardFilename(uploadFile.getOriginalFilename());
					board.setBoardFileRename(renameFileName);
				}
			}
			int result = bService.modifyBoard(board);

			if(result > 0) {
				return "redirect:/board/detail.mayfly?boardNo="+board.getBoardNo();
				//			return "redirect:/board/list.mayfly";
			}else {
				model.addAttribute("msg", "게시글 수정을 실패하였습니다.");
				return "board/boardErrorPage";
			}
		}catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "board/boardErrorPage";
		}
		
	}
		@RequestMapping(value="/board/remove.mayfly",method=RequestMethod.GET)
		public String boardRemove(
				Model model
				,@RequestParam("boardNo") int boardNo) {
			try {
				
			int result = bService.removeBoard(boardNo);
				 if(result>0) {
					 return "redirect:/board/list.mayfly";
				}else {
					model.addAttribute("msg", "게시판 삭제 실패");
					return "board/boardErrorPage";
			
		}
				 }catch(Exception e) {
			model.addAttribute("msg", e.toString());
			return "board/boardErrorPage";
		}
		}
		@ResponseBody
		@RequestMapping(value="/board/commentsList.mayfly", method=RequestMethod.GET, produces="application/json;charset=utf-8")
		public String boardReplyList(
				@RequestParam("boardNo") int boardNo) {
			List<Comments> cList = bService.printAllComments(boardNo);
			if(!cList.isEmpty()) {
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				return gson.toJson(cList);
			}
			return null;
		}
		
		@ResponseBody
		@RequestMapping(value="/board/commentsAdd.mayfly", method = RequestMethod.POST)
		public String boardReplyAdd(
				@ModelAttribute Comments comments) {
			int result = bService.registerComments(comments);
			if(result>0) {
				return "success";
			} else {
				return "fail";
			}	
		}
		@ResponseBody
		@RequestMapping(value="/board/commentsDelete.mayfly", method = RequestMethod.GET)
		public String boardCommentsRemove(
				@RequestParam("commentsNo") int commentsNo) {
			int result =bService.removeComments(commentsNo);
			if(result>0) {
				return"success";
			}else {
				return "fail";
			}
		}
		
		
		@ResponseBody
		@RequestMapping(value="/board/commentsModify.mayfly", method = RequestMethod.POST)
		public String boardCommentsModify(
				@ModelAttribute Comments comments) {
			int result = bService.modifyComments(comments);
			if(result>0) {
				return "success";
			} else { 
				return "fail";
			}
		}
	
		
}

