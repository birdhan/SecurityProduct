package lin.snacks.dao;

import java.util.List;

import lin.snacks.pojo.Snack;

public interface SnackMapper {
	public List<Snack>findSnackByAll();
	public Snack findSnackById(String id);
}
