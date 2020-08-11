package kr.spring.manage.dao;

import org.apache.ibatis.annotations.Select;

import kr.spring.manage.domain.EditMainPictureVO;

public interface EditMainPictureMapper {

	public void update(EditMainPictureVO editMainPictureVO);
	public void update_url(String filename);
	@Select("select * from main_picture where picture_order=1")
	public EditMainPictureVO select1();
}
