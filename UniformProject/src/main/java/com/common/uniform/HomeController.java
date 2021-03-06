package com.common.uniform;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.common.dto.MemberVO;
import com.common.service.MemberService;

import com.common.service.BoardService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
    
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @Inject
    private BoardService service;
    
    /**
     * Simply selects the home view to render by returning its name.
     */
    
    
    //localhost:3306/을 입력하였을 때 home.jsp 호출
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception{
 
        logger.info("home");
        
        //List<MemberVO> memberList = service.selectMember();
        
        //model.addAttribute("memberList", memberList);
 
        return "home";
    }
    
    //login버튼 클릭하면 localhost:3306/login 으로 이동
    @RequestMapping(value = "/login")
    public String login(Locale locale, Model model) throws Exception{
    	
    	logger.info("login page");
    	
    	return "login";
    }
    
    //join버튼 클릭하면 localhost:3306/join 으로 이동(회원가입)
    @RequestMapping(value = "/join")
    public String join(Locale locale, Model model) throws Exception{
    	
    	logger.info("join page");
    	
    	return "joinMember";
    }
    
  //login버튼 클릭하면 localhost:3306/form 으로 이동 (폼 신청 페이지)
    @RequestMapping(value = "/form")
    public String form(Locale locale, Model model) throws Exception{
    	
    	logger.info("form page");
    	
    	return "insertForm";
    }
    
  //Older posts버튼 클릭하면 localhost:3306/board 으로 이동 (폼 게시판 페이지)
    @RequestMapping(value = "/board")
    public ModelAndView board(Map<String,Object> commandMap) throws Exception{
    	
    	logger.info("board page");
    	
    	ModelAndView mv = new ModelAndView("/formBoard");
    	
    	List<Map<String,Object>> formList = service.selectFormList(commandMap);
    	mv.addObject("formList", formList);
    	
    	return mv;
    }
    
    
    
    
}