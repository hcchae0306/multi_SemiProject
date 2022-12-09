package com.boot.jdbc.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	
	@Autowired
	private NoticeInterceptor noticeInterceptor;
	
	@Autowired
	LoginInterceptor loginInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(noticeInterceptor)
									.addPathPatterns("/mymovie/notice/*")
									.excludePathPatterns("/mymovie/notice/list")
									.excludePathPatterns("/mymovie/notice/detail");
		
		registry.addInterceptor(loginInterceptor)
				.addPathPatterns("/**")
				.excludePathPatterns("/member/**");
		
		
	}
}
