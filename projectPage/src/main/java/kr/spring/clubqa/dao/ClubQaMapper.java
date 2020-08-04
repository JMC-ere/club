package kr.spring.clubqa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.clubqa.domain.ClubQAReplyVO;
import kr.spring.clubqa.domain.ClubQAVO;

public interface ClubQaMapper {
	public List<ClubQAVO> selectList(Map<String, Object> map);
	public int selectRowCount(Map<String, Object> map);
	@Insert("INSERT INTO qa_board (qa_num, qa_title, qa_content, qa_secret_key, qa_hit, mem_id, mem_num, qa_datetime) VALUES (qa_board_seq.nextval, #{qa_title}, #{qa_content}, #{qa_secret_key}, #{qa_hit}, #{mem_id}, #{mem_num}, SYSDATE)")
	public void insert(ClubQAVO clubqa);
	@Select("SELECT * FROM qa_board b JOIN member m ON b.mem_num=m.mem_num WHERE b.qa_num=#{qa_num}")
	public ClubQAVO selectQABoard(Integer num);
	@Update("UPDATE qa_board SET qa_hit=qa_hit+1 WHERE qa_num=#{qa_num}")
	public void updateQAhit(Integer num);
	public void update(ClubQAVO clubqa);
	public void delete(Integer num);
	

	//댓글
	public List<ClubQAReplyVO> selectListReply(Map<String,Object> map);
	@Select("SELECT COUNT(*) FROM qa_reply WHERE qa_num=#{qa_num}")
	public int selectRowCountReply(Map<String,Object> map);
	@Insert("INSERT INTO qa_reply (qa_reply_num,qa_reply_content,qa_num,mem_num,mem_id) VALUES (qa_reply_seq.nextval,#{qa_reply_content},#{qa_num},#{mem_num},#{mem_id})")
	public void insertReply(ClubQAReplyVO clubQAReplyVO);
	@Update("UPDATE qa_reply SET qa_reply_content=#{qa_reply_content} WHERE qa_reply_num=#{qa_reply_num}")
	public void updateReply(ClubQAReplyVO clubQAReplyVO);
	@Delete("DELETE FROM qa_reply WHERE qa_reply_num=#{qa_reply_num}")
	public void deleteReply(Integer qa_reply_num);
	//부모글 삭제시 댓글이 존재하면 부모글 삭제전 댓글 삭제
	@Delete("DELETE FROM qa_reply WHERE qa_num=#{qa_num}")
	public void deleteReplyByBoardNum(Integer qa_num);
	
}
