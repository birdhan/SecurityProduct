package lin.snacks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lin.snacks.dao.AdminMapper;
import lin.snacks.pojo.Admin;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;
	@Override
	public void addadmin(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.addadmin(admin);
	}
	@Override
	public List<Admin> selectadmin(Admin admin) {
		// TODO Auto-generated method stub
		List<Admin> selectadmin = adminMapper.selectadmin(admin);
		return selectadmin;
	}

}
