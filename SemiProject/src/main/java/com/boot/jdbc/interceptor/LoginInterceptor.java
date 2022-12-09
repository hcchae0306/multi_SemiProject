package com.boot.jdbc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


@Component
public class LoginInterceptor implements HandlerInterceptor{
	
	private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("[interceptor] : preHandle");
		
		if(request.getRequestURI().contains("/member/login")||
		   request.getRequestURI().contains("member/signupform")||
		   request.getRequestURI().contains("member/signup")||
		   request.getSession().getAttribute("login")!=null) {
		   return true;
		}
		
		if(request.getSession().getAttribute("login") == null) {
			response.sendRedirect("/member/loginform");
			return false;
		}
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("[interceptor] : postHandle");
	}

	
	
	
}
