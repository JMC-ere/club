package kr.spring.manage.service;

import kr.spring.manage.domain.EditMainPictureVO;

public interface EditMainPictureService {
	public void update(EditMainPictureVO editMainPictureVO);
	public void update_url(String filename);
	public EditMainPictureVO select1();
}
