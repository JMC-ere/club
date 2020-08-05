package kr.spring.club.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import kr.spring.club.domain.ClubVO;


public interface ClubMapper {
	public List<ClubVO> selectList(Map<String,Object> map);
	public int selectRowCount(Map<String,Object> map);
	public void insert(ClubVO club);
	@Select("SELECT * FROM club c JOIN member m ON c.mem_num=m.mem_num WHERE c.club_num=#{club_num}")
	public ClubVO selectBoard(Integer club_num);
	public void adminUpdate(ClubVO club);
	public void update(ClubVO club);
	@Delete("DELETE FROM club WHERE club_num=#{club_num}")
	public void delete(Integer club);
	
	@Select("SELECT COUNT (*) FROM club c JOIN member m ON c.mem_num=m.mem_num AND club_state = 2")
	public int listRowCount();
	@Select("SELECT * FROM (SELECT a.*, rownum rnum FROM (SELECT * FROM club c JOIN member m ON c.mem_num=m.mem_num ORDER BY c.club_num DESC) a) WHERE club_state = 2 AND rnum >=#{start} AND rnum <=#{end}")
	public List<ClubVO> mainList(Map<String,Object> map);
}
