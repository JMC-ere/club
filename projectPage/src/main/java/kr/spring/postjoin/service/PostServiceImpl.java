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
		postMapper.insertPost(post);
	}

	@Override
	public List<PostVO> selectPostList(Map<String, Object> map) {
		return postMapper.selectPostList(map);
	}

	@Override
	public void updatePost(PostVO post) {
		postMapper.updatePost(post);
		
	}


	@Override
	public int selectRowCount(Map<String, Object> map) {
		return postMapper.selectRowCount(map);
	}


	@Override
	public PostVO selectPost(Integer num) {
		return postMapper.selectPost(num);
	}


	@Override
	public void updatePostHit(Integer num) {
		postMapper.updatePostHit(num);
		
	}


	@Override
	public void deletePost(Integer num) {
		postMapper.deletePost(num);
	}

}
