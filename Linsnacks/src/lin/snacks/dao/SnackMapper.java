package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.Snack;

public interface SnackMapper {
	public List<Snack>findSnackByAll();
	
	public Snack findSnackById(String id);
	
	public List<Snack> findSnackByDesign();
	
	public List<Snack> findSnackByOnline();
    
	public List<Snack> findSnackByAdvanced();
	
	public void insertsnack(Snack snack);
	
	public List<Snack> findSnacksByHAll();
	
	public void deletesnackById(String id);
	
}
