package com.pzh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pzh.po.User;

@Controller
public class UserController {
	@RequestMapping(value="/login")
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,Model model,HttpSession session) {
	    // ��ȡ�û���������
	    String username = user.getUsername();
	    String password = user.getPassword();
	    // �˴�ģ������ݿ��л�ȡ�û��������������ж�
	    if(username != null && username.equals("pzh")
	    		&& password != null && password.equals("980919")){
	         // ���û�������ӵ�Session
	     	session.setAttribute("USER_SESSION", user);
	     	// �ض�����ҳ�����ת����
	    	    return "redirect:main";
	    }
	    model.addAttribute("msg", "�û�����������������µ�¼��");
	    return "login";
	}
	/**
	 * ���û���ҳ����ת
	 */
	@RequestMapping(value="/main")
	public String toMain() {
		return "main";
	}
    /**
     * �˳���¼
     */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		// ���Session
		session.invalidate();
		// �ض��򵽵�¼ҳ�����ת����
		return "redirect:login";
	}
}
