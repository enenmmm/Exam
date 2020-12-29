package pers.dhf.exam.dao;

import org.springframework.data.repository.CrudRepository;
import pers.dhf.exam.entity.sys.SysUser;

public interface SysUserDAO extends CrudRepository<SysUser, Long> {

	SysUser findByUsername(String username);
	Iterable<SysUser> findByNameStartingWith(String keyword);
}
