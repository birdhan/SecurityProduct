package lin.snacks.service;

import java.util.List;

import lin.snacks.pojo.Snack;

public interface SnackService {
	public List<Snack>findSnackByAll();
	
	public Snack findSnackById(String id);
	
	public List<Snack> findSnackByDesign();
	
	public List<Snack> findSnackByOnline();
	
	public List<Snack> findSnackByAdvanced();
}
