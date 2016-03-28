package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.DocumentURLDao;
import com.scada.domain.DocumentURL;
import com.scada.domain.Publish;

public class DocumentURLDaoImpl extends HibernateDaoSupport implements DocumentURLDao {

	@Override
	public void saveDocumentURL(DocumentURL documentURL) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(documentURL);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		DocumentURL documentURL = getDocumentURLById(id);
		System.out.println("deldete:"+documentURL.getId());
		this.getHibernateTemplate().delete(documentURL);
	}

	@Override
	public List<DocumentURL> getAll() {
		// TODO Auto-generated method stub
		String hql = "from DocumentURL du";
		return (List<DocumentURL>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public DocumentURL getDocumentURLById(int id) {
		// TODO Auto-generated method stub
		String hql = "from DocumentURL du where du.id = "+id;
		return (DocumentURL) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public List<DocumentURL> getDocumentURLByType(String type, String subtype) {
		// TODO Auto-generated method stub
		String hql = "from DocumentURL du where du.doc_type = '"+type+"' and "+"du.doc_subtype = '" +subtype+"'";
		return (List<DocumentURL>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<DocumentURL> getDocumentURLByName(String name) {
		// TODO Auto-generated method stub
		String hql = "from DocumentURL du where du.doc_name = '"+name+"'";
		return (List<DocumentURL>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<DocumentURL> getDocumentURLByAuthor(String author) {
		// TODO Auto-generated method stub
		String hql = "from DocumentURL du where du.doc_author = '"+author+"'";
		return (List<DocumentURL>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<DocumentURL> getDocumentURLByTime(String time) {
		// TODO Auto-generated method stub
		return null;
	}

}
