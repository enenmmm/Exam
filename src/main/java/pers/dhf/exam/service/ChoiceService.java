package pers.dhf.exam.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.dhf.exam.dao.ChoiceDAO;
import pers.dhf.exam.entity.Choice;
import pers.dhf.exam.service.common.BaseServiceImpl;

@Service
public class ChoiceService extends BaseServiceImpl<Choice, Long> {

	private final ChoiceDAO choiceDAO;
	
	@Autowired
	public ChoiceService(ChoiceDAO choiceDAO) {
		super(choiceDAO);
		this.choiceDAO = choiceDAO;
	}

}
