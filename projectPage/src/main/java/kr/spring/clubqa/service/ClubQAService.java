package kr.spring.clubqa.service;

import java.util.List;
import java.util.Map;

import kr.spring.clubqa.domain.ClubQAReplyVO;
import kr.spring.clubqa.domain.ClubQAVO;

public interface ClubQAService {
	public List<ClubQAVO> selectList(Map<String, Object> map);
	public int selectRowCount(Map<String, Object> map);
	public void insert(ClubQAVO clubqa);
	public ClubQAVO selectQABoard(Integer num);
	public void updateQAhit(Integer num);
	public void update(ClubQAVO clubqa);
	public void delete(Integer num);
	
	//댓글
	public List<ClubQAReplyVO> selectListReply(Map<String,Object> map);
	public int selectRowCountReply(Map<String,Object> map);
	public void insertReply(ClubQAReplyVO clubQAReplyVO);
	public void updateReply(ClubQAReplyVO clubQAReplyVO);
	public void deleteReply(Integer qa_reply_num);
	//부모글 삭제시 댓글이 존재하면 부모글 삭제전 댓글 삭제
	public void deleteReplyByBoardNum(Integer qa_num);

}
