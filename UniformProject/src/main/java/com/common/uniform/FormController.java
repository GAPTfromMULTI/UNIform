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
import com.common.dao.FormInfo;
import com.common.dao.JoinMemberDAO;
import com.common.dao.LoginInfo;
import com.common.dao.SubmitFormDAO;

@Controller
public class FormController {

	private static final Logger logger = LoggerFactory.getLogger(FormController.class);

	@Autowired
	SubmitFormDAO submitFormDAO;
	//
    @RequestMapping(value = "/form/insertForm")
    public String insertMember(Locale locale, Model model, FormInfo formInfo, HttpSession session, HttpServletResponse response) throws Exception{

    	submitFormDAO.insertForm(formInfo);
    	//logger.info("insertMember page");
    	
    	return "insertForm";
    }

}