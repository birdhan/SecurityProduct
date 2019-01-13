
package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.Order;

public interface OrderMapper {

	public void addall(Order order);
	public List<Order> findAll();
	public void deleteorder(String id);
	public void updateorder(Order order);

	/**
	 * 根据状态查询所有
	 * @param statuss
	 * @return
	 */
	public List<Order> findBystatus(String statuss);
	/**
	 * 根据id修改状态
	 * @param id
	 * @param status
	 */
	public void updatestatus(String id,String status);
	
	public List<Order> findorderByidAndostatus(String uid,String ostatus);
	
	public void upByidnumber(String id,String number);
	
	
	
}



	
	
	


