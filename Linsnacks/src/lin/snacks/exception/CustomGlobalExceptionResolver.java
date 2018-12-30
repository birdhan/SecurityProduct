package lin.snacks.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

//自定义全�?异常处理
public class CustomGlobalExceptionResolver implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, 
			Object arg2, Exception exc) {
		//保存异常信息
		String msg = "";
		
		//判断异常类型
		if(exc instanceof CustomException){
			//处理业务级别异常
			msg = ((CustomException)exc).getMessage();
		} else {
			//处理运行时异�?
			msg = "系统异常, �?,对不�?, 请及时联系管理员�?!";
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("msg", msg);
		modelAndView.setViewName("error");
		return modelAndView;
	}

}
