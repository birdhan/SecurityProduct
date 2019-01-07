package lin.snacks.service;

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

}
