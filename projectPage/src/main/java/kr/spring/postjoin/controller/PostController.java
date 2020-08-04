package kr.spring.postjoin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.postjoin.domain.PostVO;
import kr.spring.postjoin.service.PostService;
import kr.spring.util.PagingUtil;

@Controller
public class PostController {

	@Resource
	private PostService postService;

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@ModelAttribute
	public PostVO initCommand() {
		return new PostVO();
	}

	@RequestMapping("/post/post.do")
	public ModelAndView  processlist1(@RequestParam(value="pageNum",defaultValue="1") int currentpage,
			@RequestParam(value="keyfield",defaultValue="")String keyfield,
			@RequestParam(value="keyword",defaultValue="")String keyword) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword",keyword);

		int count = postService.selectRowCount(map);

		if(log.isDebugEnabled())  {
			log.debug("<<count>>" + count);
		}

		PagingUtil page  = new PagingUtil(keyfield,
				keyword,
				currentpage
				,count,
				rowCount,
				pageCount,
				"post.do");

		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<PostVO> list = null;
		if(count >0) {
			list = postService.selectPostList(map);
		}

		ModelAndView mav = new ModelAndView();
		mav.setViewName("post");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());

		return mav;
	}

	@RequestMapping("/post/postlist.do")
	public ModelAndView  processlist2(@RequestParam(value="pageNum",defaultValue="1") int currentpage,
			@RequestParam(value="keyfield",defaultValue="")String keyfield,
			@RequestParam(value="keyword",defaultValue="")String keyword) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword",keyword);

		int count = postService.selectRowCount(map);

		if(log.isDebugEnabled())  {
			log.debug("<<count>>" + count);
		}

		PagingUtil page  = new PagingUtil(keyfield,
				keyword,
				currentpage
				,count,
				rowCount,
				pageCount,
				"postlist.do");

		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<PostVO> list = null;
		if(count >0) {
			list = postService.selectPostList(map);
		}

		ModelAndView mav = new ModelAndView();
		mav.setViewName("postlist");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());

		return mav;
	}


	@RequestMapping("/post/postphoto.do")
	public ModelAndView  processlist3(@RequestParam(value="pageNum",defaultValue="1") int currentpage,
			@RequestParam(value="keyfield",defaultValue="")String keyfield,
			@RequestParam(value="keyword",defaultValue="")String keyword) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword",keyword);

		int count = postService.selectRowCount(map);

		if(log.isDebugEnabled())  {
			log.debug("<<count>>" + count);
		}

		PagingUtil page  = new PagingUtil(keyfield,
				keyword,
				currentpage
				,count,
				rowCount,
				pageCount,
				"postphoto.do");

		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<PostVO> list = null;
		if(count >0) {
			list = postService.selectPostList(map);
		}

		ModelAndView mav = new ModelAndView();
		mav.setViewName("postphoto");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());

		return mav;
	}



	//글쓰기
	@RequestMapping(value="/post/postwrite.do",method=RequestMethod.GET)
	public String form() {
		return "postwrite";
	}

	//글쓰기 처리
	@RequestMapping(value="/post/postwrite.do",method=RequestMethod.POST)
	public String submit(@Valid PostVO postVO, BindingResult result) {

		if(log.isDebugEnabled()) {
			log.debug("<<PostVO>>" + postVO);
		}

		if(result.hasErrors()) {
			return "postwrite";
		}

		postService.insertPost(postVO);

		return "redirect:/post/postlist.do";
	}

	//글 상세
	@RequestMapping("/post/postdetail.do")
	public ModelAndView process(@RequestParam("num") int num) {

		//로그 표시
		if(log.isDebugEnabled()) {
			log.debug("<<num>> " + num);
		}

		//조회수 증가
		postService.updateHit(num);
		PostVO post = postService.selectPost(num);

		return new ModelAndView("postView","post",post);
	}
}
