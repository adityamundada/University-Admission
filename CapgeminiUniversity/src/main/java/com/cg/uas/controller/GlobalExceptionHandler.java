package com.cg.uas.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.cg.uas.exception.UniversityException;



@ControllerAdvice
public class GlobalExceptionHandler {
	@ExceptionHandler(value={UniversityException.class})
	protected ModelAndView handleConflict(Exception ex){
		ModelAndView modelAndView=new ModelAndView("error");
		modelAndView.addObject("message", ex.getMessage());
		return modelAndView;
		
	}
		
	
}
