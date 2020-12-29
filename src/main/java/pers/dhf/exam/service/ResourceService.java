package pers.dhf.exam.service;

import pers.dhf.exam.service.common.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.dhf.exam.dao.ResourceDAO;
import pers.dhf.exam.entity.Resource;

@Service
public class ResourceService extends BaseServiceImpl<Resource, Long> {

	private final ResourceDAO dao;
	
	@Autowired
	public ResourceService(ResourceDAO dao) {
		super(dao);
		this.dao = dao;
	}

	public Iterable<Resource> search(String keyword) {
		return dao.findByNameStartingWith(keyword);
	}
}
