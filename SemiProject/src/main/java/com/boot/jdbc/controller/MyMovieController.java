package com.boot.jdbc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.jdbc.model.biz.LikeBiz;
import com.boot.jdbc.model.biz.MovieBiz;
import com.boot.jdbc.model.biz.NoticeBiz;
import com.boot.jdbc.model.biz.ReviewBiz;
import com.boot.jdbc.model.dto.LikeDto;
import com.boot.jdbc.model.dto.MemberDto;
import com.boot.jdbc.model.dto.MovierequestDto;
import com.boot.jdbc.model.dto.NoticeDto;
import com.boot.jdbc.model.dto.ReviewDto;

@Controller
@RequestMapping("/mymovie")
public class MyMovieController {
	@Autowired
	private NoticeBiz noticeBiz;
	@Autowired
	private ReviewBiz reviewBiz;
	@Autowired
	private MovieBiz movieBiz;
	@Autowired
	private LikeBiz likeBiz;
	
	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("movielist", movieBiz.selectMovieList());
		return "main";
	}
	
	@GetMapping("/search")
	public String search(@RequestParam(value="keyword") String keyword, Model model) {
		model.addAttribute("movielist", movieBiz.searchMovie(keyword));
		return "main";
	}
	
	@PostMapping("/search/request")
	public String searchrequest(MovierequestDto dto, Model model) {
		if(movieBiz.insertrequest(dto)>0) {
			model.addAttribute("msg", "요청 완료");
			return "redirect:/mymovie/main";
		}else {
			model.addAttribute("msg", "요청 실패");
			return "redirect:/mymovie/main";
		}
	}

	@GetMapping("/notice/list")
	public String selectNoticeList(Model model) {
		model.addAttribute("noticelist", noticeBiz.selectList());
		return "noticelist";
	}

	@GetMapping("/notice/detail")
	public String selectNotice(Model model, int boardno) {
		model.addAttribute("dto", noticeBiz.selectOne(boardno));
		return "noticedetail";
	}
	
	@GetMapping("/notice/insertform")
	public String insertNoticeForm() {
		return "noticeinsert";
	}
	
	@PostMapping("/notice/insert")
	public String insertNotice(NoticeDto dto) {
		if(noticeBiz.insert(dto)>0) {
			return "redirect:/mymovie/notice/list";
		}else {
			return "redirect:/mymovie/notice/insertform";
		}
		
	}
	
	@GetMapping("/notice/updateform")
	public String updateNotice(Model model, int boardno) {
		model.addAttribute("dto", noticeBiz.selectOne(boardno));
		return "noticeupdate";
	}
	
	@PostMapping("/notice/update")
	public String update(NoticeDto dto) {
		if(noticeBiz.update(dto)>0) {
			return "redirect:/mymovie/notice/detail?boardno="+dto.getBoardno();
		}else {
			return "redirect:/mymovie/notice/updateform?boardno="+dto.getBoardno();
		}
	}
	
	@GetMapping("/notice/delete")
	public String delete(int boardno) {
		if(noticeBiz.delete(boardno)>0) {
			return "redirect:/mymovie/notice/list";
		}else {
			return "redirect:/mymovie/notice/detail?boardno="+boardno;
		}
	}

	@GetMapping("/reviewlist")
	public String selectRVList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberDto member = (MemberDto) session.getAttribute("login");
		model.addAttribute("memberid", member.getMemberid());
		
		model.addAttribute("reviewlist", reviewBiz.selectRVList());
		return "reviewlist";
	}
	@GetMapping("/reviewinsert")
	public String insertRVListform() {
		return "/reviewdetail";
	}
	@PostMapping("/insertform")
	public String insertRVList(Model model, ReviewDto dto) {
		if(reviewBiz.insertRVList(dto)>0) {
			return "redirect:/mymovie/reviewlist";
		}else {
			return "redirect:/mymovie/insertform";
		}
	}
	
	@PostMapping("/likeinsert")
	public String insertlike(LikeDto dto ) {
		if(likeBiz.insert(dto)>0) {
			return "redirect:/mymovie/reviewlist";
		}else {
			System.out.println("추천 실패");
			return "redirect:/mymovie/reviewlist";
		}
	}
	
	@GetMapping("/likedelete")
	public String deletelike(LikeDto dto) {
		if(likeBiz.delete(dto)>0) {
			return "redirect:/mymovie/reviewlist";
		}else {
			System.out.println("추천 취소 실패");
			return "redirect:/mymovie/reviewlist";
		}
	}
	
	//===영화상세페이지 관련(채)===
	
	@GetMapping("/movieDetail")
	public String selectMovie(Model model, int movieno) {
		model.addAttribute("dto", movieBiz.selectMovie(movieno));
		return "movieDetail";
	}
	
	
	
}