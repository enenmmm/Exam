package pers.dhf.exam.controller.common;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import pers.dhf.exam.service.common.BaseService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import pers.dhf.exam.entity.common.BaseEntity;
import pers.dhf.exam.entity.ui.CallBackMessage;
import pers.dhf.exam.util.CurrentUtils;

public abstract class BaseControllerImpl<T extends BaseEntity<ID>, ID extends Serializable> 
	implements BaseController<T, ID> {
	protected static final String ENTITY_ATTRIBUTE_NAME = "entity";
	
	protected static final String ENTITIES_ATTRIBUTE_NAME = "entities";

	protected static final String MANAGER_VIEW_NAME = "manager-templet";

	protected static final String MANAGER_ATTRIBUTE_NAME = "contentJSP";

	protected final List<String> needEntityURLSuffix; 
	
	protected final BaseService<T, ID> mainService;
	protected final String inputViewName;
	protected final String listViewName;

	public BaseControllerImpl(BaseService<T, ID> mainService, 
			String inputViewName, String listViewName) {
		this.mainService = mainService;
		this.inputViewName = inputViewName;
		this.listViewName = listViewName;
		
		needEntityURLSuffix = new ArrayList<>();
		needEntityURLSuffix.add(SAVE_PATH);
		needEntityURLSuffix.add(DETAIL_PATH);
		needEntityURLSuffix.add(INPUT_PATH);
	}
	
	@Override
	public String showListView(Model model) {
		return baseShowListView(model, mainService.findAll());
	}
	
	@Override
	public String showDetailView(Model model, 
			@ModelAttribute(ENTITY_ATTRIBUTE_NAME) T entity) {
		
		model.addAttribute(MANAGER_ATTRIBUTE_NAME, inputViewName);
		return MANAGER_VIEW_NAME;
	}
	
	@Override
	public String showInputView(Model model, 
			@ModelAttribute(ENTITY_ATTRIBUTE_NAME) T entity) {
		
		model.addAttribute(MANAGER_ATTRIBUTE_NAME, inputViewName);
		return MANAGER_VIEW_NAME;
	}
	
	@Override
	public String deleteById(ID id) {
		CallBackMessage msg = CallBackMessage.createMsgAfterFunction(
				() -> mainService.delete(id), "删除成功！", "删除失败");
		CurrentUtils.addAttributeToSession(CallBackMessage.MESSAGE_ATTRIBUTE_NAME, msg);
		return redirect(LIST_PATH);
	}
	
	protected String baseSave(T entity) {
		String optionName = entity.getId() == null ? "新增" : "修改";
		CallBackMessage msg = CallBackMessage.createMsgAfterFunction(
				() -> mainService.save(entity), optionName + "成功！", optionName + "失败");
		CurrentUtils.addAttributeToSession(CallBackMessage.MESSAGE_ATTRIBUTE_NAME, msg);
		return redirect(LIST_PATH);
	}

	@ModelAttribute
	protected void addEntityToRequest(HttpServletRequest request, Model model,
			@RequestParam(name="id", required=false) ID id) {
		
		String servletPath = request.getServletPath();
		if (isNeedEntity(servletPath)) {
			T entity = null;
			if (id != null) {
				entity = mainService.findByID(id);
			}
			if (entity == null) {
				entity = mainService.createEntity();
			}
			model.addAttribute(ENTITY_ATTRIBUTE_NAME, entity);
		}
	}
	
	protected String baseShowListView(Model model, Iterable<T> entities) {
		model.addAttribute(ENTITIES_ATTRIBUTE_NAME, entities);
		model.addAttribute(MANAGER_ATTRIBUTE_NAME, listViewName);
		return MANAGER_VIEW_NAME;
	}

	protected static String redirect(String path) {
		return "redirect:" + path.replaceFirst("^[/]+", "");
	}

	private boolean isNeedEntity(String servletPath) {
		if (servletPath != null) {
			for (String suffix : needEntityURLSuffix) {
				if (servletPath.endsWith(suffix)) {
					return true;
				}
			}
		}
		return false;
	}
}
