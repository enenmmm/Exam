package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;

import pers.dhf.exam.entity.Question;

public interface QuestionDAO extends CrudRepository<Question, Long> {

}
