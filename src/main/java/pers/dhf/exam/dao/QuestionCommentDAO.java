package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;

import pers.dhf.exam.entity.QuestionComment;

public interface QuestionCommentDAO extends CrudRepository<QuestionComment, Long> {
	
}
