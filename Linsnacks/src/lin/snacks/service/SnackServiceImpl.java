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
	@Override
	public List<Snack> findSnackByDesign() {
		List<Snack> design = snackMapper.findSnackByDesign();
		return design;
	}
	@Override
	public List<Snack> findSnackByOnline() {
		List<Snack> byOnline = snackMapper.findSnackByOnline();
		return byOnline;
	}
	
	@Override
	public void insertsnack(Snack snack) {
		snackMapper.insertsnack(snack);
		
	}
	@Override
	public List<Snack> findSnacksByHAll() {
		// TODO Auto-generated method stub
		List<Snack> hAll = snackMapper.findSnacksByHAll();
		return hAll;
	}
	@Override
	public void deletesnackById(String id) {
		// TODO Auto-generated method stub
		snackMapper.deletesnackById(id);
	}
	@Override
	public List<Snack> findsnackByType1(String type) {
		// TODO Auto-generated method stub
		List<Snack> findsnackByType1 = snackMapper.findsnackByType1(type);
		return findsnackByType1;
	}
	@Override
	public void chickrateaddone(String id) {
		// TODO Auto-generated method stub
		snackMapper.chickrateaddone(id);
	}
	@Override
	public void updateeone(String id) {
		// TODO Auto-generated method stub
		snackMapper.updateeone(id);
	}
	@Override
	public List<Snack> findonlineByType(String type) {
		// TODO Auto-generated method stub
		List<Snack> byType = snackMapper.findonlineByType(type);
		return byType;
	}
	@Override
	public List<Snack> findSnackByAdvanced(String name) {
		// TODO Auto-generated method stub
		List<Snack> advanced = snackMapper.findSnackByAdvanced(name);
		return advanced;
	}
	@Override
	public void updatesnackById(Snack snack) {
		// TODO Auto-generated method stub
		snackMapper.updatesnackById(snack);
	}

}
