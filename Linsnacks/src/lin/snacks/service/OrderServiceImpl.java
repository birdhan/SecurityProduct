
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
	public List<Order> findorderByidAndostatus(String uid, String ostatus) {
		// TODO Auto-generated method stub
		List<Order> byidAndostatus = ordermapper.findorderByidAndostatus(uid, ostatus);
		return byidAndostatus;
	}
	
	@Override
	public void addall(Order order) {
		ordermapper.addall(order);
		
	}

	@Override
	public List<Order> findAll() {
		
		return ordermapper.findAll();
	}

	@Override
	public void delete(String id) {


		ordermapper.deleteorder(id);
		
	}

	@Override 
	public void updateorder(Order order) {
		ordermapper.updateorder(order);
		
	}

	@Override
	public List<Order> findBystatu(String ostatus) {
		// TODO Auto-generated method stub
		return ordermapper.findBystatus(ostatus);
	}

	@Override
	public void updateByidst(String id, String ostatus) {
		ordermapper.updatestatus(id, ostatus);
		
	}

	@Override
	public void upByidnumber(String id, String number) {
		// TODO Auto-generated method stub
		ordermapper.upByidnumber(id, number);
	}

	

}



	




	

	

	


