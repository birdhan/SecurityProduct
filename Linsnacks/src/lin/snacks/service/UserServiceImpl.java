package lin.snacks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lin.snacks.dao.UserMapper;
import lin.snacks.pojo.User;

@Service
public class UserServiceImpl implements UserService {
@Autowired
private UserMapper userMappr;
	@Override
	public void adduser(User user) {
		// TODO Auto-generated method stub
		userMappr.adduser(user);
	}
	@Override
	public List<User> selectuser(User user) {
		// TODO Auto-generated method stub
		List<User> selectuser = userMappr.selectuser(user);
		return selectuser;
	}

}
