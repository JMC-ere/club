package kr.spring.postjoin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.postjoin.domain.PostVO;

public interface PostMapper {
	
	public List<PostVO> selectPostList(Map<String,Object> map);
	public int selectRowCount(Map<String,Object> map);
	@Insert("INSERT INTO post(post_num,mem_num,club_num,post_title,post_board,post_img,post_imgname,post_date) VALUES (post_seq.nextval,member_seq.nextval,club_seq.nextval,#{post_title},#{post_board},#{post_img},#{post__imgname},SYSDATE)")
	public void insertPost(PostVO post);
	@Select("SELECT * FROM post p JOIN member m ON p.mem_num = m.mem_num WHERE p.post_num=#{post_num}")
	public PostVO selectPost(Integer num);
	@Update("UPDATE post SET post_hit=post_hit+1 WHERE post_num = #{post_num}")
	public void updatePostHit(Integer num);
	public void updatePost(PostVO post);
	@Delete("DELETE FROM post WHERE num=#{num}")
	public void deletePost(Integer num);
	
}
