package com.common.uniform;

import java.util.List;
import java.util.Locale;
 
import javax.inject.Inject;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
import com.common.dto.MemberVO;
import com.common.service.MemberService;
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
    
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @Inject
    private MemberService service;
    
    /**
     * Simply selects the home view to render by returning its name.
     */
    
    
    //localhost:3306/을 입력하였을 때 home.jsp 호출
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception{
 
        logger.info("home");
        
        List<MemberVO> memberList = service.selectMember();
        
        model.addAttribute("memberList", memberList);
 
        return "home";
    }
    
    //login버튼 클릭하면 localhost:3306/login 으로 이동
    @RequestMapping(value = "/login")
    public String login(Locale locale, Model model) throws Exception{
    	
    	logger.info("login page");
    	
    	return "login";
    }
    
}