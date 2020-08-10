package kr.spring.manage.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.manage.dao.EditMainPictureMapper;

import kr.spring.manage.domain.EditMainPictureVO;

@Service("EditMainPictureService")
public class EditMainPictureServiceImpl implements EditMainPictureService{

	@Resource
	EditMainPictureMapper editMainPictureMapper;
	
	@Override
	public void update(EditMainPictureVO editMainPictureVO) {
		editMainPictureMapper.update(editMainPictureVO);
		
	}

	
}
