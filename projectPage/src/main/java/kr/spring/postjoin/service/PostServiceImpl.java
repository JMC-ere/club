package kr.spring.postjoin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.postjoin.dao.PostMapper;
import kr.spring.postjoin.domain.PostVO;

@Service("postService")
public class PostServiceImpl implements PostService{
		
	@Resource
	public PostMapper postMapper;

	@Override
	public void insertPost(PostVO post) {
		// TODO Auto-generated method stub
		postMapper.insertPost(post);
	}

	@Override
	public List<PostVO> selectPostList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return postMapper.selectPostList(map);
	}

	@Override
	public void updatePost(PostVO post) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public int selectRowCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return postMapper.selectRowCount(map);
	}


	@Override
	public PostVO selectPost(Integer num) {
		// TODO Auto-generated method stub
		return postMapper.selectPost(num);
	}


	@Override
	public void updateHit(Integer num) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deletePost(String name) {
		// TODO Auto-generated method stub
		
	}

}
