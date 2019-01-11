package lin.snacks.service;

import java.util.List;

import lin.snacks.pojo.Vote;

public interface VoteService {

public void insertvote(Vote vote);
	
	public List<Vote> findByuid(String id,String sid);
	
	public List<Vote> findAll();
	
	public void deletevote(String id);
	
	public Integer findByid(String id,String typevote);
}
