package org.oneday.mayfly.member.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.oneday.mayfly.member.domain.Member;
import org.oneday.mayfly.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;
/*멤버 컨트롤러 입니다*/
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@ResponseBody 
	@RequestMapping(value="/member/checkDupId.mayfly" , method=RequestMethod.GET)
	public String idDuplicateCheck(@RequestParam("userId") String userId) {
		int result = mService.checkIdDup(userId);
		return String.valueOf(result);
	}
	
	@RequestMapping(value="member/joinView.mayfly",method=RequestMethod.GET)
	public String memberJoinView() {
	return "member/memberJoin";
	}
	
	@RequestMapping(value="member/loginView.mayfly",method=RequestMethod.GET)
	public String memberLoginView() {
	return "member/memberLogin";
	}
	
	@RequestMapping(value="/member/findId.mayfly",method=RequestMethod.GET)
	public String findIdView() {
		return "member/findMemberId";
	}
	
	@RequestMapping(value="/member/findPwd.mayfly",method=RequestMethod.GET)
	public String findPwdView() {
		return "member/findMemberPwd";
	}
	
	@RequestMapping(value = "/member/loginPage.mayfly", method = RequestMethod.GET)
	public String loginPage() {
		return "common/loginPage";
	}
	
	@RequestMapping(value="/member/myInfo.mayfly", method=RequestMethod.GET)
	public String memberMyInfo(Model model,HttpServletRequest request, @RequestParam("userId") String userId) {
		Member member = mService.printOneById(userId);
		if(member != null) {
		model.addAttribute("member", member);
		return "member/myPage";
		}else {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("url","/member/loginView.mayfly");
			return "common/errorPage3";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/member/login.mayfly", method=RequestMethod.POST)
	public String memberLogin(HttpServletRequest request,Model model,@ModelAttribute Member member) {
		
			Member loginUser = mService.loginMember(member);
			if(loginUser != null) {
				HttpSession session = request.getSession();
				session.setAttribute("userId", loginUser.getUserId());
				session.setAttribute("userName", loginUser.getUserName());
				return "success";
			}else {
				return "fail";
			}
		
	}
	@ResponseBody
	@RequestMapping(value="/member/findMemberId.mayfly", method=RequestMethod.POST)
	public String memberFindMemberId(Model model, @ModelAttribute Member member) {
		Member findId = mService.findMemberId(member);
		String result = findId.getUserId();
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/member/findMemberPwd.mayfly", method=RequestMethod.POST)
	public String memberFindMemberPwd(Model model, @ModelAttribute Member member) {
		Member findPwd = mService.findMemberPwd(member);
		String result = findPwd.getUserPwd();
		return result;
	}
	
	@RequestMapping(value="/member/logout.mayfly", method=RequestMethod.GET)
	public String memberLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate();
			return "member/memberLogin";
		}else {
			request.setAttribute("msg", "로그아웃에  실패하였습니다.");
			return "common/errorPage3";
		}
	}
	
	
	
	
	@RequestMapping(value="/member/register.mayfly",method=RequestMethod.POST)
	public String memberRegister(Model model,@ModelAttribute Member member,@RequestParam("post") String post,@RequestParam("address1") String address1,@RequestParam("address2") String address2){
		member.setUserAddr(post+","+address1+","+address2);
		try {
			int result = mService.registerMember(member);
			if(result > 0) {
				model.addAttribute("msg", "회원 가입에 성공하였습니다.");
				model.addAttribute("url","/member/loginView.mayfly");
				return "common/successPage";
			}else {
				model.addAttribute("msg", "회원 가입에 실패하였습니다.");
				model.addAttribute("url","/member/joinView.mayfly");
				return "common/errorPage3";
			}
		}catch(Exception e) {
			model.addAttribute("msg", "회원 가입 절차에서 오류가 발생하였습니다.");
			model.addAttribute("url","/member/joinView.mayfly");
			return "common/errorPage3";
		}
	}
	
	
	
	@RequestMapping(value="/member/modify.mayfly", method=RequestMethod.POST)
	public String memberModify(HttpServletRequest request, Model model,@ModelAttribute Member member,@RequestParam("post") String post,@RequestParam("address1") String address1,@RequestParam("address2") String address2)  {
		member.setUserAddr(post+","+address1+","+address2);
		HttpSession session = request.getSession();
		try {
			int result = mService.modifyMember(member);
			if(result > 0) {
				/* session.setAttribute("loginUser", member); */
				model.addAttribute("msg", "회원정보가 수정되었습니다.");
				model.addAttribute("url","/member/myInfo.mayfly?userId=");
				return "common/successPage2";
			}else {
				model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
				model.addAttribute("url","/member/myInfo.mayfly?userId=");
				return "common/errorPage2";
			}
		}catch(Exception e) {
			model.addAttribute("msg", "회원정보를 수정하는 과정에서 오류가 발생하였습니다.");
			model.addAttribute("url","/member/myInfo.mayfly?userId=");
			return "common/errorPage2";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/member/remove.mayfly", method=RequestMethod.POST)
	public String memberRemove(Model model, @RequestParam("userId")String userId) {
			int result = mService.removeMember(userId);
			if(result > 0) {
				return "success";
			}else {
				return "fail";
			}
		
	}
}
