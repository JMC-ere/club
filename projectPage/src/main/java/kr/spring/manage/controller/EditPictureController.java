package kr.spring.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EditPictureController {

	@RequestMapping("EditPicture.do")
	public String editpicture() {
		return "EditPicture";
	}
}
