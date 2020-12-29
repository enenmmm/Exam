package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;
import pers.dhf.exam.entity.sys.SysAuthority;

public interface SysAuthorityDAO extends CrudRepository<SysAuthority, Long> {
	
}
