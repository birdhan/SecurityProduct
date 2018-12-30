package lin.snacks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Han {

	@RequestMapping("/test")
	public String test() {
		
		return "success";
	}
}
