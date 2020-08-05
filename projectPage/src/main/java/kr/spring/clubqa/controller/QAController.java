package kr.spring.clubqa.controller;

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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.clubqa.domain.ClubQAVO;
import kr.spring.clubqa.service.ClubQAService;
import kr.spring.util.PagingUtil;

//asdf1234
@Controller
public class QAController {
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	@Resource
	private ClubQAService clubqaService;
	
	@ModelAttribute
	public ClubQAVO initCommand() {
		return new ClubQAVO();
	}
	
	//건의 / 신고 게시판
	@RequestMapping("/ClubQA/QAlist/QAlist.do")
	public ModelAndView qa_process(
			@RequestParam(value="pageNum", defaultValue="1") int currentPage,
			@RequestParam(value="keyfield", defaultValue="") String keyfield,
			@RequestParam(value="keyword", defaultValue="") String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		int count = clubqaService.selectRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount, "QAlist.do");
		map.put("start", page.getStartCount());
		map.put("end" , page.getEndCount());
		
		List<ClubQAVO> list = null;
		if(count > 0) {
			list = clubqaService.selectList(map);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qalist_main");
		mav.addObject("count", count);
		mav.addObject("list", list);
		mav.addObject("pagingHtml", page.getPagingHtml());
		
		
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		
		return mav;
	}
	
	
	//건의 / 신고  글 쓰기 폼 호출
	@RequestMapping(value="/ClubQA/QAlist/QAlist_write.do", method=RequestMethod.GET)
	public String QAlist_write() {
		return "qalist_write";
	}
	
	//건의 / 신고  글 쓰기 처리
	@RequestMapping(value="/ClubQA/QAlist/QAlist_write.do", method=RequestMethod.POST)
	public String submit(@Valid ClubQAVO clubqaVO, BindingResult result,
						HttpServletRequest request,
						HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<clubqaVO>> : " + clubqaVO);
		}
		
		if(result.hasErrors()) {
			return "qalist_write";
		}
		
		//clubqaVO.setMem_num((Integer)session.getAttribute("user_num"));
//		clubqaVO.setMem_id((String)session.getAttribute("user_id"));
		
		//나중에 삭제
		clubqaVO.setMem_num(1);
		clubqaVO.setMem_id("sky");
		//
		
		clubqaService.insert(clubqaVO);
		
		return "redirect:/ClubQA/QAlist/QAlist.do";
		
	}
	
	//파일 다운로드
	@RequestMapping("/ClubQA/QAlist/file.do")
	public ModelAndView download(@RequestParam("num") int num) {
		
		ClubQAVO clubqaVO = clubqaService.selectQABoard(num);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("downloadView");
		
		mav.addObject("qa_downloadfile", clubqaVO.getQa_uploadfile());
		mav.addObject("qa_filename", clubqaVO.getQa_filename());
		
		return mav;
	}
	
	//이미지 처리
	@RequestMapping("/ClubQA/QAlist/imageView.do")
	public ModelAndView viewImage(@RequestParam("num")int num) {
		ClubQAVO clubqaVO = clubqaService.selectQABoard(num);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		mav.addObject("imageFile", clubqaVO.getQa_uploadfile());
		mav.addObject("qa_filename", clubqaVO.getQa_filename());
		
		
		return mav;
	}

	//건의 / 신고  글 상세 페이지
	@RequestMapping("/ClubQA/QAlist/QAlist_detail.do")
	public ModelAndView qa_process(@RequestParam("num") int num
			) throws Exception{
		
		
		if(log.isDebugEnabled()) {
			log.debug("<<num>> : " + num);
		}
		
		clubqaService.updateQAhit(num);
			
		ClubQAVO clubqa = clubqaService.selectQABoard(num);
		
		return new ModelAndView("qalist_detail", "clubqa", clubqa);
		
	}
	
	//질문 게시판 폼 호출
	@RequestMapping(value="/ClubQA/QA1_1/QA1_1_list.do", method=RequestMethod.GET)
	public String QAreport_main() {
		return "qa1_1_main";
	}
	
	//질문 글 쓰기 폼 호출
	@RequestMapping(value="/ClubQA/QA1_1/QA1_1_write.do", method=RequestMethod.GET)
	public String QAreport_write() {
		return "qa1_1_write";
	}
	
	
	
	
	
	
}
