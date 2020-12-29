package pers.dhf.exam.entity.common;

import java.io.Serializable;
import java.util.Date;

import pers.dhf.exam.util.CurrentUtils;
import pers.dhf.exam.entity.sys.SysUser;

public interface BaseEntity<ID extends Serializable> extends IdEntity<ID> {
	
	SysModifyLog getSysModifyLog();
	void setSysModifyLog(SysModifyLog sysModifyLog);

	default void updateSysModifyLog() {
		SysUser currentUser = CurrentUtils.getCurrentUser();
		Date nowDate = new Date();
		SysModifyLog modifyLog = getSysModifyLog();
		if (modifyLog == null) {	// modifyLog为空，即新增操作
			modifyLog = new SysModifyLog();
			modifyLog.setCreateDate(nowDate);
			modifyLog.setCreator(currentUser);
			setSysModifyLog(modifyLog);
		} else {	// modifyLog不为空，即更新操作
			modifyLog.setModifiedDate(nowDate);
			modifyLog.setModifier(currentUser);
		}
	}
}
