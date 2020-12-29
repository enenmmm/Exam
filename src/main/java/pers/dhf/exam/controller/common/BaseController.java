package pers.dhf.exam.controller.common;

import java.io.Serializable;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.dhf.exam.entity.common.BaseEntity;

public interface BaseController<T extends BaseEntity<ID>, ID extends Serializable> {

	String LIST_PATH = "/list";

	String DETAIL_PATH = "/detail";

	String INPUT_PATH = "/input";

	String DELETE_PATH = "/delete";

	String SAVE_PATH = "/save";

	@RequestMapping(LIST_PATH)
	String showListView(Model model);

	@RequestMapping(DETAIL_PATH)
	String showDetailView(Model model, T entity);

	@RequestMapping(INPUT_PATH)
	String showInputView(Model model, T entity);

	@RequestMapping(DELETE_PATH)
	String deleteById(ID id);
	
}
