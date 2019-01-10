package lin.snacks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lin.snacks.dao.LeaveMapper;
import lin.snacks.pojo.Leave;

@Service
public class LeaveServiceImpl implements LeaveService {
	@Autowired
	private LeaveMapper leaveMapper;
	@Override
	public void addleave(Leave leave) {
		// TODO Auto-generated method stub
		leaveMapper.addleave(leave);
	}
	@Override
	public List<Leave> findleaveBySid(String snacksid) {
		// TODO Auto-generated method stub
		List<Leave> bySid = leaveMapper.findleaveBySid(snacksid);
		return bySid;
	}
	@Override
	public List<Leave> findall() {
		
		return leaveMapper.findByAll();
	}
	@Override
	public void deletelee(String id) {
		leaveMapper.deletele(id);
		
	}

}
