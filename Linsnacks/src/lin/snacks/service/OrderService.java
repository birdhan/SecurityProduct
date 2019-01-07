package lin.snacks.service;

import java.util.List;

import lin.snacks.pojo.Order;

public interface OrderService {

	public void addall(Order order);
	
	public List<Order> findorderByidAndostatus(Order order);
}
