package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.User;

public interface UserMapper {
	public void adduser(User user);

	public List<User> selectuser(User user);
	
	public List<User> selectAll();
	
	public void del(String id);
}
