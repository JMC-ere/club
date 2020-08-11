package kr.spring.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.club.domain.ClubVO;
import kr.spring.club.service.ClubService;
import kr.spring.util.PagingUtil;
//main!
@Controller
public class MainController {
	
	@Resource
	private ClubService clubService;
	
	private int rowCount = 10;
	private int pageCount = 10;
	
	//메인페이지
		@RequestMapping("/main/main.do")
		public ModelAndView process2(@RequestParam(value="pageNum",defaultValue="1") int currentPage) {
			
			int count = clubService.listRowCount();
			
			//페이징처리
			PagingUtil page = new PagingUtil(currentPage,count,rowCount,pageCount,"boardclub.do");
			
			List<ClubVO> list = null;
			
			if(count>0) {
				
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("start", page.getStartCount());
				map.put("end", page.getEndCount());
				
				list = clubService.mainList(map);
			}
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("main");
			mav.addObject("count",count);
			mav.addObject("list",list);
			mav.addObject("pagingHtml",page.getPagingHtml());
			
			return mav;
		}
	
//	@RequestMapping(value="/ClubQA/QAmainForm.do", method=RequestMethod.GET)
//	public String QAform() {
//		return "QAmain";
//	}
	
	@RequestMapping("/main/introduce.do")
	public String introduce() {
		return "introduce";
	}
	
	
}
