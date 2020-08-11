package kr.spring.manage.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.manage.domain.EditMainPictureVO;
import kr.spring.manage.service.EditMainPictureService;

@Controller
public class EditPictureController {

	@Resource
	private EditMainPictureService editMainPictureService;
	
	private Logger log = Logger.getLogger(this.getClass());
	
	//편집 페이지
	@RequestMapping("/main/EditPicture.do")
	public String editpicture() {
		return "EditPicture";
	}
	
	
	//사진 등록 처리 
	@RequestMapping("/main/pic_process.do")
	public String pic_process(EditMainPictureVO editMainPictureVO) {
		
		//사진등록
		editMainPictureService.update(editMainPictureVO);
		
		return "redirect:/main/main.do";
		
	}
	
	//사진 표시 처리 
	@RequestMapping("/main/pic_view1.do")
	public ModelAndView pic_view1() {
	
		EditMainPictureVO editMainPictureVO = editMainPictureService.select1();
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("imageView");
		mav.addObject("imageFile",editMainPictureVO.getImage());
		mav.addObject("filename",editMainPictureVO.getFilename());
		
		if(log.isDebugEnabled()) {
			log.debug("파일파일이름 " + editMainPictureVO.getFilename() + " 파일파일 " + editMainPictureVO.getImage());
		}
		return mav;
	}
	
	
	//사진 url 처리
	@RequestMapping("/main/url_process.do")
	public String pic_url(String filename) {
		editMainPictureService.update_url(filename);

		return "redirect:/main/main.do";
	}
	
	
}
