package lin.snacks.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lin.snacks.dao.OrderMapper;
import lin.snacks.pojo.Order;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Resource
	private OrderMapper ordermapper;

	@Override
	public void addall(Order order) {
		ordermapper.addall(order);
		
	}

	@Override
	public List<Order> findorderByidAndostatus(String uid, String ostatus) {
		// TODO Auto-generated method stub
		List<Order> byidAndostatus = ordermapper.findorderByidAndostatus(uid, ostatus);
		return byidAndostatus;
	}

	

	

	

}
