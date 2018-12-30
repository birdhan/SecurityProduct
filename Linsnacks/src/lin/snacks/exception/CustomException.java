package lin.snacks.exception;

//自定义异常类,用来处理自定义异�?
public class CustomException extends Exception{
	//保存异常信息
	private String  message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
