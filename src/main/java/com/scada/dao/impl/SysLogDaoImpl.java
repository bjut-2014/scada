package com.scada.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SysLogDao;
import com.scada.domain.SysLog;

public class SysLogDaoImpl extends HibernateDaoSupport implements SysLogDao {

	public void delete(Integer id) {
		SysLog sysLog = this.getHibernateTemplate().get(SysLog.class, id);
		this.getHibernateTemplate().delete(sysLog);
	}

	public List<SysLog> getAll() {
		String hql = "from SysLog sl order by sl.id desc";
		return (List<SysLog>) this.getHibernateTemplate().find(hql);
	}

	public void save(SysLog sysLog) {
		
	}

	public void update() {
		
	}

	public void deleteAll() {
		this.getHibernateTemplate().deleteAll(getAll());
	}

	public List<SysLog> findByPage(int pageNo,int pageSize){
		String queryString = "from SysLog sl order by sl.id desc";
//		getHibernateTemplate().findByCriteria(queryString, (pageNo-1)*pageSize, pageSize);
		Session session = getSessionFactory().openSession();
		Query queryObject = session.createQuery(queryString);
		queryObject.setFirstResult((pageNo-1)*pageSize);
		queryObject.setMaxResults(pageSize);
		List<SysLog> result = queryObject.list();
		session.close();
		return result;
	}
	
	
}
