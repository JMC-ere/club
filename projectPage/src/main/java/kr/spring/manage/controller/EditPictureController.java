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
	
		EditMainPictureVO editMainPictureVO1 = editMainPictureService.select1();
		ModelAndView mav1 = new ModelAndView();
		
		mav1.setViewName("imageView");
		mav1.addObject("imageFile",editMainPictureVO1.getImage());
		mav1.addObject("filename",editMainPictureVO1.getFilename());
		
		if(log.isDebugEnabled()) {
			log.debug("파일파일이름 " + editMainPictureVO1.getFilename() + " 파일파일 " + editMainPictureVO1.getImage());
		}
		return mav1;
	}
	
	//두번째 사진 표시 처리 
	@RequestMapping("/main/pic_view2.do")
	public ModelAndView pic_view2() {
	
		EditMainPictureVO editMainPictureVO2 = editMainPictureService.select2();
		ModelAndView mav2 = new ModelAndView();
		
		mav2.setViewName("imageView");
		mav2.addObject("imageFile",editMainPictureVO2.getImage());
		mav2.addObject("filename",editMainPictureVO2.getFilename());
		
		if(log.isDebugEnabled()) {
			log.debug("파일파일이름 " + editMainPictureVO2.getFilename() + " 파일파일 " + editMainPictureVO2.getImage());
		}
		return mav2;
	}
	
	//세번째 사진 표시 처리 
	@RequestMapping("/main/pic_view3.do")
	public ModelAndView pic_view3() {
	
		EditMainPictureVO editMainPictureVO3 = editMainPictureService.select3();
		ModelAndView mav3 = new ModelAndView();
		
		mav3.setViewName("imageView");
		mav3.addObject("imageFile",editMainPictureVO3.getImage());
		mav3.addObject("filename",editMainPictureVO3.getFilename());
		
		if(log.isDebugEnabled()) {
			log.debug("파일파일이름 " + editMainPictureVO3.getFilename() + " 파일파일 " + editMainPictureVO3.getImage());
		}
		return mav3;
	}
	
	//네번째 사진 표시 처리 
	@RequestMapping("/main/pic_view4.do")
	public ModelAndView pic_view4() {
	
		EditMainPictureVO editMainPictureVO4 = editMainPictureService.select4();
		ModelAndView mav4 = new ModelAndView();
		
		mav4.setViewName("imageView");
		mav4.addObject("imageFile",editMainPictureVO4.getImage());
		mav4.addObject("filename",editMainPictureVO4.getFilename());
		
		if(log.isDebugEnabled()) {
			log.debug("파일파일이름 " + editMainPictureVO4.getFilename() + " 파일파일 " + editMainPictureVO4.getImage());
		}
		return mav4;
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
	
	//미리보기
	@RequestMapping("/main/preview.do")
	public ModelAndView preview(String filename,String picture_order) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager/preview");
		mav.addObject("filename",filename);
		mav.addObject("picture_order",picture_order);
		
		return mav;
	}
	
	
	
}
