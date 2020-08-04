package kr.spring.club.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.club.domain.ClubVO;
import kr.spring.club.service.ClubService;
import kr.spring.util.PagingUtil;

@Controller
public class ClubController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	private int rowCount = 10;
	private int pageCount = 10;
	
	//자바빈(VO)초기화
	@ModelAttribute
	public ClubVO initCommand() {
		return new ClubVO();
	}
	
	@Resource
	private ClubService clubService;
	
	@RequestMapping("/main/viewclub.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewclub");
		return mav;
	}
	
	@RequestMapping("/main/boardclub.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
								@RequestParam(value="keyfield",defaultValue="") String keyfield,
								@RequestParam(value="keyword",defaultValue="") String keyword) {
		
		Map<String,Object> map = new HashMap<String, Object>();
		
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		//게시판의 총 레코드 수 또는 검색 레코드 수 반환
		int count = clubService.selectRowCount(map);
		
		//페이징처리
		PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"boardclub.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<ClubVO> list = null;
		if(count > 0) {
			list = clubService.selectList(map);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardclub");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
									
		return mav;
	}
	
	//클럽 개설 제안 폼
	@RequestMapping(value="/main/openclub.do",method=RequestMethod.GET)
	public String form() {
		return "openclub";
	}
	
	//클럽 개설 제안 글 처리
	@RequestMapping(value="/main/openclub.do",method=RequestMethod.POST)
	public String submit(@Valid ClubVO clubVO,BindingResult result,HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<ClubVO>> : " + clubVO);
		}
		
		//유효성 체크 결과 에러가 있으면 폼을 호출
		if(result.hasErrors()) {
			return "openclub";
		}
		
		//mem_num
		//clubVO.setMem_num((Integer)session.getAttribute("user_num"));
		clubVO.setMem_num(2);
		
		//글 등록
		clubService.insert(clubVO);
		
		return "redirect:/main/boardclub.do";
	}
	
	//글 상세
	@RequestMapping("/main/boardclubdetail.do")
	public ModelAndView process(@RequestParam("club_num") int club_num,HttpServletRequest request,ModelMap model) {
		
		ClubVO club = clubService.selectBoard(club_num);
		
		return new ModelAndView("boardclubdetail","club",club);
	}
	
	//이미지 처리
	@RequestMapping("/main/imageView.do")
	public ModelAndView viewImage(@RequestParam("club_num") int club_num) {
		ClubVO club = clubService.selectBoard(club_num);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		mav.addObject("imageFile",club.getClub_img());
		mav.addObject("filename", club.getFilename());
		
		return mav;
	}
	
	//글 수정 폼 호출
	@RequestMapping("/main/boardclubmodify.do")
	public String form(@RequestParam("club_num") int club_num, Model model) {
		
		ClubVO clubVO = clubService.selectBoard(club_num);
		model.addAttribute("clubVO",clubVO);
		
		return "boardclubmodify";
	}
	
	//글 수정 처리 (관리자)
	@RequestMapping(value="/main/boardclubmodify.do",method=RequestMethod.POST)
	public String submitUpdate(@Valid ClubVO clubVO,BindingResult result,HttpServletRequest request) {

		if(result.hasErrors()) {
			
			if(log.isDebugEnabled()) {
				log.debug(result);
			}
			
			
			return "boardclubmodify";
		}
		
		clubVO.setMem_num(2);

		clubService.adminUpdate(clubVO);


			return "redirect:/main/boardclub.do";
	}
	
	//글 수정 처리 (우수회원)
	@RequestMapping(value="/main/boardclubmodify2.do",method=RequestMethod.POST)
	public String submitUpdate2(@Valid ClubVO clubVO,BindingResult result,HttpServletRequest request) {

		if(result.hasErrors()) {
		
			if(log.isDebugEnabled()) {
				log.debug(result);
			}
			
			return "boardclubmodify";
		}

			clubService.update(clubVO);

			return "redirect:/main/boardclub.do";
	}
	
	//글 삭제
	@RequestMapping("/main/boardclubdelete.do")
	public String submit(@RequestParam("club_num") int club_num) {
		
		clubService.delete(club_num);
		
		return "redirect:/main/boardclub.do";
	}
}
