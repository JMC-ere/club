package kr.spring.clubmanage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.clubmanage.domain.ClubManageVO;

public interface ClubManageMapper {
	@Select("select * from joinclub j join club c on j.club_num=c.club_num where j.mem_num=#{mem_num} and c.club_end>=sysdate")
	public List<ClubManageVO> selectValidList(int mem_num);
	@Select("select * from joinclub j join club c on j.club_num=c.club_num where j.mem_num=#{mem_num} and c.club_end<sysdate")
	public List<ClubManageVO> selectPastList(int mem_num);
	@Select("select * from club where mem_num=#{mem_num} and club_end>=sysdate")
	public List<ClubManageVO> selectLeadersValidList(int mem_num);
	@Select("select * from club where mem_num=#{mem_num} and club_end<sysdate")
	public List<ClubManageVO> selectLeadersPastList(int mem_nu);
	@Select("select * from joinclub j join member_detail m on j.mem_num=m.mem_num where j.club_num=#{club_num}")
	public List<ClubManageVO> selectManageMembers(int club_num);
	@Select("select * from club where club_num=#{club_num}")
	public ClubManageVO selectClub(int club_num);
	@Update("update joinclub set join_date=#{join_date} where mem_num=#{mem_num}")
	public void updateParticipants(ClubManageVO memberVO);
	@Select("select join_date from joinclub where mem_num=#{mem_num} and club_num=#{club_num}")
	public String selectJoinDate(Map<String,Object> map);
	@Select("select mem_num from joinclub where club_num=#{club_num}")
	public List<Integer> selectMembers(int club_num);
}
