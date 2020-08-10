package kr.spring.clubqa.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.spring.clubqa.domain.ClubAQVO;
import kr.spring.clubqa.domain.ClubQAVO;
import kr.spring.clubqa.service.ClubQAService;

@Controller
public class QA_AqController {
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private ClubQAService clubqaService;

	@ModelAttribute
	public ClubAQVO initCommand() {
		return new ClubAQVO();
	}
}
