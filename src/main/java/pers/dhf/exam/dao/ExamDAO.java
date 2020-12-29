package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;

import pers.dhf.exam.entity.Exam;

public interface ExamDAO extends CrudRepository<Exam, Long> {

	Iterable<Exam> findByNameStartingWith(String keyword);
	
}
