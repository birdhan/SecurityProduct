package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.Snack;

public interface SnackMapper {
	public List<Snack>findSnackByAll(Integer lim);
	
	public Snack findSnackById(String id);
	
	public List<Snack> findSnackByDesign();
	
	public List<Snack> findSnackByOnline(Integer numbers);
    
	public List<Snack> findSnackByAdvanced(String name);
	
	public void insertsnack(Snack snack);
	
	public List<Snack> findSnacksByHAll();
	
	public void deletesnackById(String id);
	
	public List<Snack> findsnackByType1(String type);
	
	public void chickrateaddone(String id);
	
	public void updateeone(String id);
	
	public List<Snack> findonlineByType(String type);
	
	public void updatesnackById(Snack snack);
	
}
