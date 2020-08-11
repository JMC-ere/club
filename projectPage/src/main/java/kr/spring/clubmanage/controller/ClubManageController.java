package kr.spring.clubmanage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.clubmanage.domain.ClubManageVO;
import kr.spring.clubmanage.service.ClubManageService;
import kr.spring.member.domain.MemberVO;
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
		int mem_num=(Integer)session.getAttribute("user_num");
		//int mem_num = 1;
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
		int mem_num=(Integer)session.getAttribute("user_num");

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
								int[] participants,
								@RequestParam("club_num") int club_num,
								Model model ) {
		
		//클럽 전체 회원들의 고유 번호
		List<Integer> members=clubManageService.selectMembers(club_num);
		
		//참석자의 참석일에 추가할 오늘 날짜
		Date date=new Date();
		SimpleDateFormat sf=new SimpleDateFormat("yy-MM-dd");
		String now=sf.format(date).toString();
		
		//참석율을 구하기 위한 현재까지 모임 진행 횟수
		ClubManageVO club=clubManageService.selectClub(club_num);
		long calDate=date.getTime()-club.getClub_start().getTime();
		long calDateDays=calDate/(24*60*60*1000);
		String[] club_interval=club.getClub_interval().split(",");
		int count_club=(int) (calDateDays/7)*club_interval.length+club_interval.length;
		
		if(log.isDebugEnabled()) {
			log.debug("<<members>> : "+members);
			log.debug("<<<count_club>>>"+count_club);
		}

		if(participants[0]!=0) {//참석자가 한명 이상 넘어 오는 경우
			
			if(log.isDebugEnabled()) {
				log.debug("<<participants>>"+participants[0]);
			}
			
			for(int i=0;i<participants.length;i++) {//참석으로 체크된 사람들에게 참석일에 오늘 날짜 추가
				//참석으로 체크된 사람들의 mem_num값을 기준으로 오늘 날짜 추가
				ClubManageVO memberVO=new ClubManageVO();
				Map<String, Object> map= new HashMap<String, Object> ();
				map.put("club_num", club_num);
				map.put("mem_num", participants[i]);
				String join_date=clubManageService.selectJoinDate(map);
				if(join_date==null) {//기존 참석일이 null인 경우 참석일에 오늘날짜만 추가
					join_date=now+" / ";
				}else if(join_date!=null) {//기존 참석일이 있는 경우 /를 추가하고 오늘 날짜를 추가
					if(!join_date.contains(now)) {//기존 참석일에 오늘 날짜가 없을 때만 오늘 날짜 추가
						join_date+=now+" / ";
					}	
				}
				String[] attendance_date=join_date.split(" / ");
				float attendance_rate=(float)attendance_date.length/count_club;
				if(log.isDebugEnabled()) {
					log.debug("<<remove_date>>"+join_date);
					log.debug("<<attendance_rate>>"+Math.round(attendance_rate*100));
					log.debug("<<attendance.date.length>>"+attendance_date.length);
				}
				memberVO.setClub_num(club_num);
				memberVO.setAttendance_rate(Math.round(attendance_rate*100));
				memberVO.setJoin_date(join_date);
				memberVO.setMem_num(participants[i]);
				
				clubManageService.updateParticipants(memberVO);
				
				members.remove((Integer)participants[i]);//전체 멤버 List에서 참석으로 체크한 사람을 제외한 불참자들의 mem_num list
			}
			if(log.isDebugEnabled()) {
				log.debug("<<<members>>> : "+members);
			}
			for(int i=0;i<members.size();i++) {//불참자 리스트에서 오늘 날짜가 참석일에 있다면 삭제
				Map<String, Object> map= new HashMap<String, Object> ();
				map.put("club_num", club_num);
				map.put("mem_num", members.get(i));
				ClubManageVO memberVO=new ClubManageVO();
				String remove_date=clubManageService.selectJoinDate(map);
				if(remove_date!=null && remove_date.contains(now)) {
					remove_date=remove_date.replace(now+" / ", "");
					String[] attendance_date=remove_date.split(" / ");
					float attendance_rate=(float)attendance_date.length/count_club;
					if(log.isDebugEnabled()) {
						log.debug("<<remove_date>>"+remove_date);
						log.debug("<<attendance_rate>>"+attendance_rate);
						log.debug("<<attendance.date.length>>"+attendance_date.length);
					}
					memberVO.setClub_num(club_num);
					memberVO.setAttendance_rate(Math.round(attendance_rate*100));
					memberVO.setJoin_date(remove_date);
					memberVO.setMem_num(members.get(i));
					
					clubManageService.updateParticipants(memberVO);
				}
			}
		}else {//참석자가 한명도 넘어오지 않는 경우
			
			for(int i=0;i<members.size();i++) {//참석일에 오늘 날짜가 표시되어 있다면 삭제
				
				ClubManageVO memberVO=new ClubManageVO();
				Map<String, Object> map= new HashMap<String, Object> ();
				map.put("club_num", club_num);
				map.put("mem_num", members.get(i));
				String remove_date=clubManageService.selectJoinDate(map);
				if(remove_date!=null && remove_date.contains(now)) {
					remove_date=remove_date.replace(now+" / ", "");
					
					String[] attendance_date=remove_date.split(" / ");
					float attendance_rate=(float)attendance_date.length/count_club;
					if(log.isDebugEnabled()) {
						log.debug("<<remove_date>>"+remove_date);
						log.debug("<<attendance_rate>>"+attendance_rate);
						log.debug("<<attendance.date.length>>"+attendance_date.length);
					}
					memberVO.setClub_num(club_num);
					memberVO.setAttendance_rate(Math.round(attendance_rate*100));
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
	//클럽 탈퇴
	@RequestMapping("/clubmanage/resignClub.do")
	public String resignProcess(@RequestParam int mem_num,
											@RequestParam int club_num){
		Map<String, Integer> resign_map = new HashMap<String, Integer>();
		resign_map.put("mem_num", mem_num);
		resign_map.put("club_num", club_num);
		if(log.isDebugEnabled()) {
			log.debug("<<MemberVO>> :"+ mem_num+"/"+club_num);
		}
		clubManageService.deleteMemberFromClub(resign_map);
		
		return "redirect:/clubmanage/myClub.do";
	}
	
	@RequestMapping("/clubmanage/imageView.do")
	public ModelAndView viewImage(@RequestParam("club_num") int club_num) {
		ClubManageVO club=clubManageService.selectClub(club_num);
		if(log.isDebugEnabled()) {
			log.debug("<<club>>"+club);
		}
		ModelAndView mav=new ModelAndView();
		mav.setViewName("imageView");
		mav.addObject("imageFile",club.getClub_img());
		mav.addObject("filename",club.getFilename());
		return mav;
	}
	@RequestMapping("/clubmanage/profileImage.do")
	public ModelAndView viewProfileImage(@RequestParam("mem_num") int mem_num) {
		ClubManageVO member=clubManageService.selectMember(mem_num);
		ModelAndView mav=new ModelAndView();
		if(log.isDebugEnabled()) {
			log.debug("<<member>>" +member);
		}
		mav.setViewName("imageView");
		mav.addObject("imageFile",member.getImage());
		mav.addObject("filename",member.getDetail_img());
		return mav;
	}
	

}
