package lin.snacks.service;

import java.util.List;

import lin.snacks.pojo.Leave;

public interface LeaveService {

	public void addleave(Leave leave);
	
	public List<Leave> findleaveBySid(String snacksid);
	
	public List<Leave> findall();
	
	public void deletelee(String id);
	
}
