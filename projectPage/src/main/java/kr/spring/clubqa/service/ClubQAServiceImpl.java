package kr.spring.clubqa.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.clubqa.dao.ClubQaMapper;
import kr.spring.clubqa.domain.ClubQAReplyVO;
import kr.spring.clubqa.domain.ClubQAVO;

@Service("clubqaService")
public class ClubQAServiceImpl implements ClubQAService{
	
	@Resource
	private ClubQaMapper clubqaMapper;
	
	@Override
	public List<ClubQAVO> selectList(Map<String, Object> map) {
		return clubqaMapper.selectList(map);
	}

	@Override
	public int selectRowCount(Map<String, Object> map) {
		return clubqaMapper.selectRowCount(map);
	}

	@Override
	public void insert(ClubQAVO clubqa) {
		clubqaMapper.insert(clubqa);
		
	}

	@Override
	public ClubQAVO selectQABoard(Integer num) {
		return clubqaMapper.selectQABoard(num);
	}

	@Override
	public void updateQAhit(Integer num) {
		clubqaMapper.updateQAhit(num);
		
	}

	@Override
	public void update(ClubQAVO clubqa) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer num) {
		// TODO Auto-generated method stub
		
	}

    //댓글

	@Override
	public List<ClubQAReplyVO> selectListReply(Map<String, Object> map) {
		return clubqaMapper.selectListReply(map);
	}

	@Override
	public int selectRowCountReply(Map<String, Object> map) {
		return clubqaMapper.selectRowCountReply(map);
	}

	@Override
	public void insertReply(ClubQAReplyVO clubQAReplyVO) {
		clubqaMapper.insertReply(clubQAReplyVO);
	}

	@Override
	public void updateReply(ClubQAReplyVO clubQAReplyVO) {
		clubqaMapper.updateReply(clubQAReplyVO);
		
	}

	@Override
	public void deleteReply(Integer qa_reply_num) {
		clubqaMapper.deleteReply(qa_reply_num);
		
	}

	@Override
	public void deleteReplyByBoardNum(Integer qa_num) {
		clubqaMapper.deleteReplyByBoardNum(qa_num);
		
	}
}
