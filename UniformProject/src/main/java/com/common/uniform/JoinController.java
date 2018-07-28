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
    	System.out.println(loginInfo.getName() + "  AAAAAAAAAAAAAAAAAAAAA");
    	joinMemberDAO.insertMember(loginInfo);
    	//logger.info("insertMember page");
    	
    	return "insertMember";
    }
/*	@RequestMapping(value = "/join/insertMember")
	public void insertMember(Locale locale, Model model, LoginInfo loginInfo, HttpSession session,
			HttpServletResponse response) throws IOException {
		// ModelAndView mv = new ModelAndView("redirect:/login");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (loginInfo.getId() != null && !loginInfo.getId().equals("") && loginInfo.getPassword() != null
				&& !loginInfo.getPassword().equals("") && loginInfo.getName() != null
				&& !loginInfo.getName().equals("")) {

			if (joinMemberDAO.memberCheck(loginInfo)) {
				// session.setAttribute("join", 0); // 로그인 성공시 세션
				//
				// session.setAttribute("id", loginInfo.getId());
				// session.setAttribute("pw", loginInfo.getPassword());
				// session.setAttribute("name", loginInfo.getName());

				out.println("<script>location.href='/login'; </script>");
				out.flush();
				out.close();
				// return mv;
			}
			if (joinMemberDAO.memberCheck(loginInfo) == false) {
				out.println("<script>alert('회원 정보를 확인하세요!'); history.go(-1); </script>");
				out.flush();
				out.close();
			}
		} else {
			out.println("<script>alert('회원 정보를 확인하세요!!'); history.go(-1); </script>");
			out.flush();
			out.close();
		}

	}*/

}