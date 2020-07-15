package com.pzh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.pzh.po.User;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}
	@Override
	public void afterCompletion(HttpServletRequest request, 
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, 
		HttpServletResponse response, Object handler) throws Exception {
	    // ��ȡ�����URL  
        String url = request.getRequestURI();  
        // URL:����login.jsp�ǿ��Թ������ʵģ�������URL���������ؿ���  
        if(url.indexOf("/login")>=0){  
            return true;  
        }  
        // ��ȡSession  
        HttpSession session = request.getSession();  
        User user = (User) session.getAttribute("USER_SESSION");
        // �ж�Session���Ƿ����û����ݣ�����У��򷵻�true,��������ִ��
        if(user != null){
            return true;  
        }
         // �����������ĸ�����ʾ��Ϣ����ת������¼ҳ��
         request.setAttribute("msg", "����û�е�¼�����ȵ�¼��");
         request.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                                                .forward(request, response);
		return false;
	}
}