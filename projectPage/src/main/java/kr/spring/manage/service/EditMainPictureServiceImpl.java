package kr.spring.manage.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.manage.dao.EditMainPictureMapper;

import kr.spring.manage.domain.EditMainPictureVO;

@Service("EditMainPictureService")
public class EditMainPictureServiceImpl implements EditMainPictureService{

	@Resource
	EditMainPictureMapper editMainPictureMapper;
	
	//1번////////////////////////////////////////////////////////////////
	@Override
	public void update1(EditMainPictureVO editMainPictureVO) {
		editMainPictureMapper.update1(editMainPictureVO);
	}

	@Override
	public EditMainPictureVO select1() {
		return editMainPictureMapper.select1();
	}

	@Override
	public void update_url1(Map<String,Object> map) {
		editMainPictureMapper.update_url1(map);
		
	}
	
	//2번////////////////////////////////////////////////////////////////
	@Override
	public void update2(EditMainPictureVO editMainPictureVO) {
		editMainPictureMapper.update2(editMainPictureVO);
	}

	@Override
	public EditMainPictureVO select2() {
		return editMainPictureMapper.select2();
	}

	@Override
	public void update_url2(String filename) {
		editMainPictureMapper.update_url2(filename);
		
	}
	
	//3번////////////////////////////////////////////////////////////////
	@Override
	public void update3(EditMainPictureVO editMainPictureVO) {
		editMainPictureMapper.update3(editMainPictureVO);
	}

	@Override
	public EditMainPictureVO select3() {
		return editMainPictureMapper.select3();
	}

	@Override
	public void update_url3(String filename) {
		editMainPictureMapper.update_url3(filename);
	}

	//4번////////////////////////////////////////////////////////////////
	@Override
	public void update4(EditMainPictureVO editMainPictureVO) {
		editMainPictureMapper.update4(editMainPictureVO);
	}

	@Override
	public EditMainPictureVO select4() {
		return editMainPictureMapper.select4();
	}

	@Override
	public void update_url4(String filename) {
		editMainPictureMapper.update_url4(filename);
		
	}
	
}
