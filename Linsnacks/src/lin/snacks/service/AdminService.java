package lin.snacks.service;

import java.util.List;

import lin.snacks.pojo.Admin;

public interface AdminService {

	public void addadmin(Admin admin);
	
	public List<Admin> selectadmin(Admin admin);
}
