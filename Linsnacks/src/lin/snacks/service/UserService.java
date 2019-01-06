package lin.snacks.service;

import java.util.List;

import lin.snacks.pojo.User;

public interface UserService {
	public void adduser(User user);
	
	public List<User> selectuser(User user);
}
