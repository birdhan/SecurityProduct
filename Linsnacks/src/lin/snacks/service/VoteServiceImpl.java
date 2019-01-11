package lin.snacks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lin.snacks.dao.VoteMapper;
import lin.snacks.pojo.Vote;

@Service
public class VoteServiceImpl implements VoteService {

	@Autowired
	private VoteMapper votemapper;
	
	@Override
	public void insertvote(Vote vote) {
		votemapper.insertvote(vote);
		
	}

	@Override
	public List<Vote> findByuid(String id, String sid) {
		// TODO Auto-generated method stub
		return votemapper.findByuid(id, sid);
	}

	@Override
	public List<Vote> findAll() {
		// TODO Auto-generated method stub
		return votemapper.findAll();
	}

	@Override
	public void deletevote(String id) {
		votemapper.deletevote(id);
		
	}

}
