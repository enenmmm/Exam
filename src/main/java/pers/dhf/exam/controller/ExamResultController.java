package pers.dhf.exam.controller;

import java.util.List;
import pers.dhf.exam.controller.common.BaseControllerImpl;
import pers.dhf.exam.service.ExamResultService;
import pers.dhf.exam.service.ExamService;
import pers.dhf.exam.service.sys.SysUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pers.dhf.exam.entity.Exam;
import pers.dhf.exam.entity.ExamResult;
import pers.dhf.exam.entity.sys.SysUser;
import pers.dhf.exam.util.CurrentUtils;

@Controller
@RequestMapping("/examresult")
public class ExamResultController extends BaseControllerImpl<ExamResult, Long> {

	private final ExamResultService service;
	private final ExamService examService;
	private final SysUserService userService;
	
	public ExamResultController(ExamResultService service, ExamService examService,
			SysUserService userService) {
		super(service, "exam-result-input.jsp", "exam-result-list.jsp");
		this.service = service;
		this.examService = examService;
		this.userService = userService;
	}
	
	@Override
	public String showInputView(Model model, @ModelAttribute("entity") ExamResult entity) {
		model.addAttribute("exams", examService.findAll());
		model.addAttribute("users", userService.findAll());
		return super.showInputView(model, entity);
	}
	
	@Override
	public String showDetailView(Model model, @ModelAttribute("entity") ExamResult entity) {
		model.addAttribute("exams", examService.findAll());
		model.addAttribute("users", userService.findAll());
		return super.showInputView(model, entity);
	}

	@PostMapping(SAVE_PATH)
	public String save(Model model, @ModelAttribute("entity") ExamResult entity,
			@RequestParam("examId") Long examId, 
			@RequestParam("userId") Long userId) {
		
		Exam exam = examService.findByID(examId);
		SysUser user = userService.findByID(userId);
		entity.setExam(exam);
		entity.setUser(user);
		return baseSave(entity);
	}
	
	@RequestMapping("/show")
	public String show(Model model) {
		SysUser user = CurrentUtils.getCurrentUser();
		List<ExamResult> results = service.findByUserId(user.getId());
		model.addAttribute("entities", results);
		return "exam-result-show";
	}
	
}
