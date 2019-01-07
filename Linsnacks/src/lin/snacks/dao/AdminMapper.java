package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.Admin;

public interface AdminMapper {
	public void addadmin(Admin admin);
	
	public List<Admin> selectadmin(Admin admin);
}
