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

import com.common.dao.LoginDAO;
import com.common.dao.LoginInfo;

@Controller
public class LoginController {
	
	 private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
 
    @Autowired
    LoginDAO loginDAO;
    
    @RequestMapping(value="/login/loginCheck")
    public void loginCheck(Locale locale, Model model, LoginInfo loginInfo, HttpSession session, HttpServletResponse response) throws IOException{
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
         
         
        if((loginInfo.getId() != null && !loginInfo.getId().equals("")
                && loginInfo.getPassword() != null && !loginInfo.getPassword().equals(""))){
             
            if(loginDAO.loginCheck(loginInfo)){
                session.setAttribute("login", 0); // 로그인 성공시 세션
                //System.out.println("세션 추가됨");
                
                logger.info("oooooooooooooo");
                 
 
 
                session.setAttribute("id", loginInfo.getId());
                 
                out.println("<script>location.href='/'; </script>");
                out.flush();
                out.close();
            }
            if(loginDAO.loginCheck(loginInfo) == false){
                out.println("<script>alert('로그인 정보를 확인하세요!'); history.go(-1); </script>");
                out.flush();
                out.close();
            }   
        }
    }
    
    @RequestMapping(value="/test.do")
    
    public String home(Locale locale, Model model) throws Exception{
 
        return "test";
    }
}