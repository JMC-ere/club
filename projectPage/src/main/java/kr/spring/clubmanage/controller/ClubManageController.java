package kr.spring.clubmanage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.clubmanage.domain.ClubManageVO;
import kr.spring.clubmanage.service.ClubManageService;
//kkkkkk
@Controller
public class ClubManageController {
	private Logger log=Logger.getLogger(this.getClass());

	@Resource
	private ClubManageService clubManageService;

	@ModelAttribute
	public ClubManageVO initCommand() {
		return new ClubManageVO();
	}
	//나의 클럽 목록
	@RequestMapping("/clubmanage/myClub.do")
	public String process(HttpSession session,Model model) {
		//세션에 저장되어 있는 mem_num반환
		//int mem_num=(Integer)session.getAttribute("user_num");
		int mem_num = 1;
		List<ClubManageVO> myValidClub=clubManageService.selectValidList(mem_num);
		List<ClubManageVO> myPastClub=clubManageService.selectPastList(mem_num);
		if(log.isDebugEnabled()) {
			log.debug("<<myValidClub>> : "+myValidClub);
			log.debug("<<myPastClub>> : "+myPastClub);
		}
		model.addAttribute("myValidClub",myValidClub);
		model.addAttribute("myPastClub",myPastClub);
		return "clubmanage";
	}	
	//내가 클럽장으로 되어 있는 클럽 목록
	@RequestMapping("/clubmanage/leaderClub.do")
	public String leaderClub(HttpSession session, Model model) {
		//세션에 저장되어 있는 mem_num반환
		//int mem_num=(Integer)session.getAttribute("user_num");
		int mem_num = 1;
		List<ClubManageVO> leadersValidClub=clubManageService.selectLeadersValidList(mem_num);
		List<ClubManageVO> leadersPastClub=clubManageService.selectLeadersPastList(mem_num);

		model.addAttribute("leadersValidClub",leadersValidClub);
		model.addAttribute("leadersPastClub",leadersPastClub);
		return "leadersClub"; 
	}

	@RequestMapping(value="/clubmanage/manageMembers.do",method=RequestMethod.GET)
	public String manageMembersForm(@RequestParam("club_num") int club_num, Model model) {

		List<ClubManageVO> clubMembers=clubManageService.selectManageMembers(club_num);
		ClubManageVO  club=clubManageService.selectClub(club_num);
		model.addAttribute("club",club);
		model.addAttribute("clubMembers",clubMembers);
		if(log.isDebugEnabled()) {
			log.debug("<<clubMembers>> : "+clubMembers);
		}

		return "manageMembersForm";
	}
	@RequestMapping(value="/clubmanage/manageMembers.do",method=RequestMethod.POST)
	public String manageMembers(@RequestParam(value="attendance",defaultValue="0")
								int[] participants,//null일때에러나지 않도록 방법 확인
								@RequestParam("club_num") int club_num,
								Model model ) {
		
		List<Integer> members=clubManageService.selectMembers(club_num);
		Date date=new Date();
		SimpleDateFormat sf=new SimpleDateFormat("yy-MM-dd");
		String now=sf.format(date).toString();
		//now="20-07-30";
		if(log.isDebugEnabled()) {
			log.debug("<<members>> : "+members);
		}

		if(participants[0]!=0) {//참석자가 한명 이상 넘어 오는 경우
			
			if(log.isDebugEnabled()) {
				log.debug("<<participants>>"+participants[0]);
			}
			
			for(int i=0;i<participants.length;i++) {//참석으로 체크된 사람들에게 참석일에 오늘 날짜 추가
				//참석으로 체크된 사람들의 mem_num값을 기준으로 오늘 날짜 추가
				ClubManageVO memberVO=new ClubManageVO();
				String join_date=clubManageService.selectJoinDate(participants[i]);
				if(join_date==null) {//기존 참석일이 null인 경우 참석일에 오늘날짜만 추가
					join_date=now+" / ";
				}else if(join_date!=null) {//기존 참석일이 있는 경우 /를 추가하고 오늘 날짜를 추가
					if(!join_date.contains(now)) {//기존 참석일에 오늘 날짜가 없을 때만 오늘 날짜 추가
						join_date+=now+" / ";
					}	
				}
				memberVO.setJoin_date(join_date);
				memberVO.setMem_num(participants[i]);
				clubManageService.updateParticipants(memberVO);
					//String att_dates[]=join_date.split("/");
				
				members.remove((Integer)participants[i]);//전체 멤버 List에서 참석으로 체크한 사람을 제외한 불참자들의 mem_num list
			}
			if(log.isDebugEnabled()) {
				log.debug("<<<members>>> : "+members);
			}
			for(int i=0;i<members.size();i++) {//불참자 리스트에서 오늘 날짜가 참석일에 있다면 삭제
				
				ClubManageVO memberVO=new ClubManageVO();
				String remove_date=clubManageService.selectJoinDate(members.get(i));
				if(remove_date!=null && remove_date.contains(now)) {
					remove_date=remove_date.replace(now+" / ", "");
					if(log.isDebugEnabled()) {
						log.debug("<<remove_date>>"+remove_date);
					}
					memberVO.setJoin_date(remove_date);
					memberVO.setMem_num(members.get(i));
					clubManageService.updateParticipants(memberVO);
				}
			}
		}else {//참석자가 한명도 넘어오지 않는 경우
			
			for(int i=0;i<members.size();i++) {//참석일에 오늘 날짜가 표시되어 있다면 삭제
				
				ClubManageVO memberVO=new ClubManageVO();
				String remove_date=clubManageService.selectJoinDate(members.get(i));
				if(remove_date!=null && remove_date.contains(now)) {
					remove_date=remove_date.replace(now+" / ", "");
					if(log.isDebugEnabled()) {
						log.debug("<<remove_date>>"+remove_date);
					}
					memberVO.setJoin_date(remove_date);
					memberVO.setMem_num(members.get(i));
					clubManageService.updateParticipants(memberVO);
				}
			}
		}
		//출석율 계산필요
		//DB에서 join_date값을 가져온다
		//joindate에서 구분자 /기준으로 split해서 스트링 배열에 담는다.
		//현재 날짜에서 startdate를 빼고 인터발로 나누어 모임진행횟수를 구한다.
		//(위 계산한 모임횟수가 전체 모임횟수보다 크면 전체모임횟수를 모임진행횟수로 한다)
		//스트링배열의 길이 나누기 모임진행횟수 곱하기 100으로 참석율을 구한다.

		
		return manageMembersForm(club_num, model);
	} 
}
