package lin.snacks.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class UserInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object arg2) throws Exception {
		// TODO Auto-generated method stub
		if(request.getRequestURI().indexOf("/login")>0){
			return true;
		}
		//判断session中是否有登录信息，如果没有则跳转到登录页面，如果有则放行
		HttpSession session = request.getSession();
		if(session.getAttribute("user") !=null){
			return true;
		}
		request.getRequestDispatcher("/userlogin").forward(request, response);
		
		return false;
	}

}
