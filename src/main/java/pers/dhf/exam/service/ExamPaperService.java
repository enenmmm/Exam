package pers.dhf.exam.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.dhf.exam.dao.ExamPaperDAO;
import pers.dhf.exam.entity.ExamPaper;
import pers.dhf.exam.service.common.BaseServiceImpl;

@Service
public class ExamPaperService extends BaseServiceImpl<ExamPaper, Long> {

	private final ExamPaperDAO examPaperDAO;
	
	@Autowired
	public ExamPaperService(ExamPaperDAO examPaperDAO) {
		super(examPaperDAO);
		this.examPaperDAO = examPaperDAO;
	}

	public Iterable<ExamPaper> search(String keyword) {
		return examPaperDAO.findByNameStartingWith(keyword);
	}
	
}
