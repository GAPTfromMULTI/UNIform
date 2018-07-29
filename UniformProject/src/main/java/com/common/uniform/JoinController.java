package com.common.uniform;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.common.CommandMap;
import com.common.dao.JoinMemberDAO;
import com.common.dao.LoginInfo;

@Controller
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);

	@Autowired
	JoinMemberDAO joinMemberDAO;
	//
    @RequestMapping(value = "/join/insertMember")
    public String insertMember(Locale locale, Model model, LoginInfo loginInfo, HttpSession session, HttpServletResponse response) throws Exception{

    	joinMemberDAO.insertMember(loginInfo);
    	//logger.info("insertMember page");
    	
    	return "insertMember";
    }

}