package kr.spring.manage.service;

import java.util.Map;

import kr.spring.manage.domain.EditMainPictureVO;

public interface EditMainPictureService {
	public void update1(EditMainPictureVO editMainPictureVO);
	public void update_url1(Map<String,Object> map);
	public EditMainPictureVO select1();
	
	public void update2(EditMainPictureVO editMainPictureVO);
	public void update_url2(String filename);
	public EditMainPictureVO select2();
	
	public void update3(EditMainPictureVO editMainPictureVO);
	public void update_url3(String filename);
	public EditMainPictureVO select3();
	
	public void update4(EditMainPictureVO editMainPictureVO);
	public void update_url4(String filename);
	public EditMainPictureVO select4();
}
