package kr.spring.manage.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public ModelAndView editpicture() {	
		ModelAndView mav = new ModelAndView();
		EditMainPictureVO editMainPictureVO = editMainPictureService.select1();
		
		mav.setViewName("EditPicture");
		mav.addObject("editMainPictureVO",editMainPictureVO);
	
		return mav;
	}
	
	
	//사진 등록 처리 
	@RequestMapping("/main/pic_process.do")
	public String pic_process(EditMainPictureVO editMainPictureVO) {
		
		//사진등록
		editMainPictureService.update(editMainPictureVO);
		
		return "redirect:/main/main.do";
		
	}
	
	//첫번째 사진 표시 처리 
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
	public String pic_url(String filename,String picture_order) {
		
		if(log.isDebugEnabled()) {
			log.debug("파일파일이름  : " + filename + " 몇번째 파일 :  " + picture_order);
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("filename", filename);
		map.put("picture_order", picture_order);
		
		//DB에 url 등록
		editMainPictureService.update_url(map);
			
		return "redirect:/main/main.do";
	}
	
	
}
