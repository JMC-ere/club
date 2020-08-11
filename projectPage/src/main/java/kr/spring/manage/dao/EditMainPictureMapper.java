package kr.spring.manage.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Select;

import kr.spring.manage.domain.EditMainPictureVO;

public interface EditMainPictureMapper {

	public void update1(EditMainPictureVO editMainPictureVO);
	public void update_url1(Map<String,Object> map);
	@Select("select * from main_picture where picture_order=1")
	public EditMainPictureVO select1();
	
	public void update2(EditMainPictureVO editMainPictureVO);
	public void update_url2(String filename);
	@Select("select * from main_picture where picture_order=2")
	public EditMainPictureVO select2();
	
	public void update3(EditMainPictureVO editMainPictureVO);
	public void update_url3(String filename);
	@Select("select * from main_picture where picture_order=3")
	public EditMainPictureVO select3();
	
	public void update4(EditMainPictureVO editMainPictureVO);
	public void update_url4(String filename);
	@Select("select * from main_picture where picture_order=4")
	public EditMainPictureVO select4();
	
	
}
