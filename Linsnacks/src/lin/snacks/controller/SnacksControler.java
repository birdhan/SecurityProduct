package lin.snacks.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lin.snacks.pojo.Leave;
import lin.snacks.pojo.Order;
import lin.snacks.pojo.Snack;
import lin.snacks.pojo.User;
import lin.snacks.pojo.Vote;
import lin.snacks.service.LeaveService;
import lin.snacks.service.OrderService;
import lin.snacks.service.SnackService;
import lin.snacks.service.UserService;
import lin.snacks.service.VoteService;

@Controller
public class SnacksControler {
	@Autowired
	private SnackService snackService;
	@Autowired
	private UserService userService;
	@Autowired
	private LeaveService leaveService;
	@Autowired
	private OrderService orderservice;
	@Autowired
	private VoteService voteservice;

	/**
	 * 请求转发登录
	 * 
	 * @return
	 */
	@RequestMapping("/userlogin")
	public String userlogin() {
		return "forward:/loginuser?value=login";
	}

	/**
	 * 用户登录与注册判断
	 * 
	 * @return
	 */
	@RequestMapping("/loginuser")
	public String loginuser(HttpServletRequest request) {

		String parameter = request.getParameter("value");
		String typesubmin = "";
		String actionurl = "";
		String url = request.getContextPath();
		String typehid = "";

		if (parameter.equals("快速注册")) {
			typesubmin = "马上注册";
			actionurl = url + "/registeru";
			typehid = "0";

		} else {
			parameter = "用户登录";
			typesubmin = "确认登录";
			actionurl = url + "/loginu";
		}
		request.setAttribute("value", parameter);
		request.setAttribute("typesubmin", typesubmin);
		request.setAttribute("actionurl", actionurl);
		request.setAttribute("typehid", typehid);

		return "login";
	}

	/**
	 * 用户登录
	 * 
	 * @return
	 */
	@RequestMapping("/loginu")
	public String logina(User user, HttpSession session) {
		String url = "error";
		List<User> users = userService.selectuser(user);
		if (users != null && users.size() != 0) {
			session.setAttribute("user", users.get(0).getName());
			session.setAttribute("user1", users.get(0).getId());
			session.setAttribute("user2", users.get(0));
		}
		if (users.size() == 1) {
			return "redirect:/index";
		} else {
			url = "redirect:/userlogin";
		}
		return url;

	}

	/**
	 * 用户注册
	 * 
	 * @return
	 */
	@RequestMapping("/registeru")
	public String redistera(User user) {
		user.setId(UUID.randomUUID().toString());
		userService.adduser(user);
		return "redirect:/userlogin";
	}

	/**
	 * 按预定查询
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String index(Model model) {
		
		int parseInt = 0;
		List<Snack> list = snackService.findSnackByAll(parseInt);
		int ret=parseInt+8;
		String valueOf = String.valueOf(ret);
		model.addAttribute("valueOf",valueOf);
		model.addAttribute("list", list);
		return "index2";
	}
	
	/**
	 * 
	 * ajax主页分页查询
	 * @param model
	 * @param lim
	 * @return
	 */
	@RequestMapping("/ajaxindex")
	@ResponseBody
	public Map<String,Object> ajaxindex(HttpSession session,Model model,HttpServletResponse response,String lim) {
		int parseInt = Integer.parseInt(lim);
		System.out.println(parseInt);
		List<Snack> list = snackService.findSnackByAll(parseInt);
		int ret=parseInt+8;
		String valueOf = String.valueOf(ret);
		/*Map<String,Object> resultMap =new HashMap<String, Object>();*/
	
		HashMap<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("valueOf", valueOf);
		
		
		return map;
		
	}

	/**
	 * 零食详情查询
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/details")
	public String details(String id, Model model) {
		Snack snack = snackService.findSnackById(id);
		snackService.chickrateaddone(id);
		model.addAttribute("snack", snack);
		return "index_detail";
	}

	/**
	 * 设计交流
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/design")
	public String design(Model model) {
		List<Snack> list = snackService.findSnackByDesign();
		model.addAttribute("list", list);
		return "design";
	}

	/**
	 * 设计交流详情
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/designdetails")
	public String designdetails(String id, Model model,HttpSession session) {
		Snack snack = snackService.findSnackById(id);
		snackService.chickrateaddone(id);
		model.addAttribute("snack", snack);
		List<Leave> leavelist = leaveService.findleaveBySid(id);
		model.addAttribute("leavelist", leavelist);
		double findByid20 = voteservice.findByid(id, "20");
		double findByid40 = voteservice.findByid(id, "40");
		double findByid60 = voteservice.findByid(id, "60");
		double findByid80 = voteservice.findByid(id, "80");
		double findByid100 = voteservice.findByid(id, "100");
		
		double sum=findByid20+findByid40+findByid60+findByid80+findByid100;
		
		if(sum==0) {
			model.addAttribute("find100","100");
		}else {
			double find20=findByid20/sum*100;
		
			model.addAttribute("find20",String.valueOf(find20));
			
			double find40=findByid40/sum*100;
			model.addAttribute("find40",String.valueOf(find40));
			double find60=findByid60/sum*100;
			model.addAttribute("find60",String.valueOf(find60));
			double find80=findByid80/sum*100;
			model.addAttribute("find80",String.valueOf(find80));
			double find100=findByid100/sum*100;
			model.addAttribute("find100",String.valueOf(find100));
			
		}
		
		
		
		
		/*for(int i=20;i<=100;i=i+20) {
			
			int findBy20=findBysum
			model.addAllAttributes("20",findBy20);
		}*/
		
		return "design_detail";
	}

	/**
	 * 上线查询
	 * 
	 * @return
	 */
	@RequestMapping("/upindex")
	public String upindex(Model model) {
		
		List<Snack> list = snackService.findSnackByOnline(0);
		model.addAttribute("list", list);
		return "upindex2";
	}
	
	/**
	 * ajax分页刷新上线产品
	 * @return
	 */
	@RequestMapping("/ajaxupindex")
	@ResponseBody
	public Map<String,Object> ajaxupindex(String numbers){
		Map<String,Object> map=new HashMap<>();
		int parseInt = Integer.parseInt(numbers);
		
		List<Snack> findSnackByOnline = snackService.findSnackByOnline(parseInt);
		int ret=parseInt+8;
		String valueOf = String.valueOf(ret);
		map.put("valueOf", valueOf);
		map.put("findSnackByOnline", findSnackByOnline);
		return map;
	}

	/**
	 * 上线产品详情查询
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/upindexdetails")
	public String upindexdetails(String id, Model model) {
		Snack snack = snackService.findSnackById(id);
		snackService.chickrateaddone(id);
		List<Leave> findByidstatus = leaveService.findByidstatus(id);
		model.addAttribute("snack", snack);
		model.addAttribute("findByidstatus", findByidstatus);
		return "upindex_detail";
	}

	@RequestMapping("/personal")
	public String personal() {

		return "personal";
	}

	@RequestMapping("/personal2")
	public String personal2() {

		return "personal2";
	}

	@RequestMapping("/personal3")
	public String personal3() {

		return "personal3";
	}

	@RequestMapping("/personal4")
	public String personal4() {

		return "personal4";
	}

	/**
	 * 零食类型查询
	 * 
	 * @param model
	 * @param type
	 * @return
	 */
	@RequestMapping("/findsnackByType")
	public String findsnackByType(Model model, String type) {
		List<Snack> list = snackService.findsnackByType1(type);
		model.addAttribute("list", list);
		return "index";
	}
    /**
     * 添加留言
     * @param leave
     * @param session
     * @param request
     * @param snack
     * @return
     */
	@RequestMapping("/addleave")
	public String addleave(Leave leave, HttpSession session, HttpServletRequest request, Snack snack) {
		leave.setId(UUID.randomUUID().toString());
		leave.setStatus("设计交流");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		leave.setLtime(df.format(new Date()));
		String user1 = session.getAttribute("user").toString();
		String id1 = session.getAttribute("user1").toString();
		leave.setUid(id1);
		leave.setUname(user1);
		leave.setSnacksid(snack.getId());
		leaveService.addleave(leave);
		return "forward:/designdetails";
	}
	
	
	/**
	 * ajax添加预约订单
	 * @param id
	 * @return
	 */
	@RequestMapping("/yuyue")
	@ResponseBody
	public Map<String, Object> yuyue(HttpSession session,HttpServletRequest request,HttpServletResponse response,Order order) {
		
		User user = (User) session.getAttribute("user2");
		
		order.setId(UUID.randomUUID().toString());
		order.setUid(user.getId());
		order.setOstatus(request.getParameter("ostatus"));
		order.setUaddress(user.getAddress());
		order.setUtel(user.getTel());
		order.setUname(user.getName());
		order.setNumber(request.getParameter("number"));
		order.setSname(request.getParameter("sname"));
		order.setSid(request.getParameter("sid"));
		order.setSpic(request.getParameter("spic"));
		order.setOwd(request.getParameter("owd"));
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		order.setOtime((df.format(new Date())));
		snackService.updateeone(request.getParameter("sid"));
		orderservice.addall(order);
		
		Map<String,Object> resultMap =new HashMap<String, Object>();
		resultMap.put("success", "成功");
		return resultMap;
	} 
	/**
	 * 上线产品按类别查询
	 * @param type
	 * @param model
	 * @return
	 */
	@RequestMapping("/findsnackonline")
	public String findsnackonline(String type,Model model) {
		List<Snack> list = snackService.findonlineByType(type);
		model.addAttribute("list", list);
		return "upindex";
	}

	/**
	 * 我的订单
	 * @param model
	 * @param request
	 * @param session
	 * @param ostatus
	 * @param uid
	 * @param order
	 * @return
	 */
	@RequestMapping("/findorderByostatus")
	public String findorderByostatus(Model model,HttpServletRequest request,HttpSession session,String ostatus,String uid,Order order) {
		String uid1 =(String) session.getAttribute("user1");
		List<Order> list = orderservice.findorderByidAndostatus(uid1,ostatus);
		
		model.addAttribute("list", list);
		
		if(ostatus.equals("order")) {
			
			return "personal5";
		}
		if(ostatus.equals("unpaid")) {
			return "personal";
		}
		if(ostatus.equals("noship")) {
			return "personal2";
		}
		if(ostatus.equals("unreceived")) {
			return "personal3";
		}
		
		if(ostatus.equals("unevaluation")) {
			return "personal4";
		}
		
		return ostatus;
		
		
	}
	/**
	 *根据商品名的关键字查询
	 * @param name
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/findSnackByAdvancedd",method=RequestMethod.POST)
	public String findSnackByAdvanced(@Param(value="name")String name,Model model) {
		List<Snack> list = snackService.findSnackByAdvanced(name);
		model.addAttribute("list", list);
		return "index";
	}
	
	
	/**
	 * ajax 添加投票信息
	 * @param session
	 * @param request
	 * @param response
	 * @param vote
	 * @return
	 */
	@RequestMapping("/addvote")
	@ResponseBody
	public Map<String, Object> addvote(HttpSession session,HttpServletRequest request,HttpServletResponse response,Vote vote) {
				
		String parameter = request.getParameter("sid");
		String parameter2 = request.getParameter("stype");
		User user = (User) session.getAttribute("user2");
		vote.setId(UUID.randomUUID().toString());
		vote.setSnacksid(parameter);
		vote.setUid(user.getId());
		vote.setUname(user.getName());
		vote.setType(parameter2);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		vote.setVtime((df.format(new Date())));
		voteservice.insertvote(vote);
		Map<String,Object> resultMap =new HashMap<String, Object>();
		resultMap.put("success", "成功");
		return resultMap;
	} 
	
	
	/**
	 * ajax订单状态修改
	 * @return
	 */
	 @RequestMapping("/fukuanajax")
	 @ResponseBody
	 public Map<String, Object> fukuanajax(String id,String statusss){
		
		 orderservice.updateByidst(id, statusss);
		 
		 Map<String, Object> map=new HashMap<>();
		 map.put("ok", "成功");
		 return map;
	 }
	
	 
	 @RequestMapping("/addpinglun")
	 public String addpinglun(String id,String oid,String message,Leave leave,HttpSession session) {
		 System.out.println(id);
		 System.out.println(oid);
	
		
		 
		
		 leave.setId(UUID.randomUUID().toString());
		 
		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		 leave.setLtime(df.format(new Date()));
		 leave.setMessage(message);
		 leave.setSnacksid(id);
		 leave.setStatus("评价");
		 User user = (User) session.getAttribute("user2");
		 leave.setUid(user.getId());
		 leave.setUname(user.getName());
		 
		 leaveService.addleave(leave);
		 System.out.println("oid");
		 orderservice.updateByidst(oid, "finish");
		 
		 return "redirect:/findorderByostatus?ostatus=unevaluation";
	 }
	
}

