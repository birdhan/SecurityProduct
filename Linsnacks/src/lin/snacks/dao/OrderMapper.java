package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.Order;

public interface OrderMapper {

	public void addall(Order order);
	
	public List<Order> findorderByidAndostatus(Order order);
	
}
