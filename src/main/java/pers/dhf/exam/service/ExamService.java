package pers.dhf.exam.service;
import org.springframework.stereotype.Service;

import pers.dhf.exam.dao.ExamDAO;
import pers.dhf.exam.entity.Exam;
import pers.dhf.exam.service.common.BaseServiceImpl;

@Service
public class ExamService extends BaseServiceImpl<Exam, Long> {

	private final ExamDAO dao;
	
	public ExamService(ExamDAO dao) {
		super(dao);
		this.dao = dao;
	}
	
	public Iterable<Exam> search(String keyword) {
		return dao.findByNameStartingWith(keyword);
	}
}
