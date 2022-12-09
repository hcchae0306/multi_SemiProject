package com.boot.jdbc.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.boot.jdbc.model.dto.MemberDto;

@Component
public class NoticeInterceptor implements HandlerInterceptor{
	private Logger logger = LoggerFactory.getLogger(NoticeInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object Handler ) throws Exception{
		logger.info("[interceptor]: preHandle");
		
		HttpSession session = request.getSession();
		MemberDto member = (MemberDto) session.getAttribute("login");
		
		//관리자가 아닐 경우 권한X
		if(member.getMembergr().equals("2")) {
			request.setAttribute("message", "접근권한이 없습니다.");
			request.setAttribute("path", "/mymovie/notice/list");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/adminAccess.jsp");
			view.forward(request, response);
			return false;
		}else {
			return true;
		}
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
		logger.info("[interceptor]: postHandle");
	}
}
