package kr.spring.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
//main!
@Controller
public class MainController {
	@RequestMapping("/main/main.do")
	public ModelAndView process() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav; 
	}
	
	@RequestMapping(value="/ClubQA/QAmainForm.do", method=RequestMethod.GET)
	public String QAform() {
		return "QAmain";
	}
	
	@RequestMapping("/main/introduce.do")
	public String introduce() {
		return "introduce";
	}
	
	
}
