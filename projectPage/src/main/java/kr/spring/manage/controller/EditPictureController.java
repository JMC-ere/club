package kr.spring.manage.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.manage.domain.EditMainPictureVO;
import kr.spring.manage.service.EditMainPictureService;

@Controller
public class EditPictureController {

	@Resource
	private EditMainPictureService editMainPictureService;
	
	
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
	
	
	
}
