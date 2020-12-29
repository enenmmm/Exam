package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;
import pers.dhf.exam.entity.Choice;

public interface ChoiceDAO extends CrudRepository<Choice, Long> {

}
