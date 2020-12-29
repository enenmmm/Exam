package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;
import pers.dhf.exam.entity.ExamPaper;

public interface ExamPaperDAO extends CrudRepository<ExamPaper, Long> {

	Iterable<ExamPaper> findByNameStartingWith(String keyword);
}
