package lin.snacks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lin.snacks.dao.SnackMapper;
import lin.snacks.pojo.Snack;

@Service
public class SnackServiceImpl implements SnackService {
@Autowired
private SnackMapper snackMapper;
	@Override
	public List<Snack> findSnackByAll() {
		List<Snack> byAll = snackMapper.findSnackByAll();
		return byAll;
	}
	@Override
	public Snack findSnackById(String id) {
		Snack findSnackById1 = snackMapper.findSnackById(id);
		return findSnackById1;
	}
	

}
