package com.scada.dao.impl;

import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionContext;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.AchievementDao;
import com.scada.domain.Achievement;
import com.scada.domain.MyInformation;




public class AchievementDaoImpl extends HibernateDaoSupport implements AchievementDao{

	@Override
	public List<Achievement> get() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Achievement getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Achievement> getAll() {
		String hql = "from Achievement as ac where ac.id=1";
		return (List<Achievement>) this.getHibernateTemplate().find(hql);
	}
	
	

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save() {
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String infor=(String) session.get("information");
  
		try{   	  	

        Class.forName("com.mysql.jdbc.Driver");  

        String url = "jdbc:mysql://localhost:3306/scada";  

        String username = "root";  

        String password = "root";  

        Connection conn = (Connection) DriverManager.getConnection(url , username , password); 
        
        if (conn != null)   
      	  
            System.out.println("数据库连接成功!");  

        else  

            System.out.println("数据库连接失败!"); 
        
        String sql_1="SELECT `id` FROM `scada`.`information`;";
        PreparedStatement ps_1 = (PreparedStatement) conn.prepareStatement(sql_1);
        ResultSet s_1= ps_1.executeQuery();
        
        int id=0;
          while(s_1.next()){
              id =s_1.getInt("id");
            }
            int id_1=id+1;    

        String sql_2="INSERT INTO `scada`.`information` (`id`,`text`) VALUES ('"+id_1+"','"+infor+"')";
        
        
        PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql_2);
        
        int row = ps.executeUpdate(); 
        
        if(row > 0) 
            System.out.println("成功添加了" + row + "条数据"); 

  
     	
        conn.close();
        conn=null;
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Achievement> Search(){
		try{
		String hql=null;
    	ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String select=(String) session.get("select");
 
    	switch(select){
    	case "id":
    	{
    		try{
    			String mess=(String) session.get("message");
    			int id=Integer.valueOf(mess);
        		hql = "from Achievement as ac where ac.id="+"'"+id+"'";
				List<Achievement> achievement=(List<Achievement>)this.getHibernateTemplate().find(hql);
        		return achievement;
        	}catch(Exception e)
        	{
        		return null;
        	}	
    	}
    	case "name":
    	{
    		try{
    			String mess=(String) session.get("message");
        		hql = "from Achievement as ac where ac.name="+"'"+mess+"'";
				List<Achievement> achievement=(List<Achievement>)this.getHibernateTemplate().find(hql);
        		return achievement;
        	}catch(Exception e)
        	{
        		return null;
        	}
    	}
    	default:{
    		hql = "from Achievement as ac where ac.id=1";
			List<Achievement> achievement=(List<Achievement>)this.getHibernateTemplate().find(hql);
    		return achievement;
    	}
	}
   
		
	}catch(Exception e){
		System.out.println(e);
		return null;
	}
	}

	public List<MyInformation> getAllinformation(){
		Connection conn=null;
        try{
        	
        conn=getConnection();
   
        String sql="SELECT * FROM `scada`.`information`";
        
        PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
        
        ResultSet rs=ps.executeQuery();
        
        List<MyInformation> lr=new ArrayList<MyInformation>();
             
        while(rs.next()){
        	MyInformation r=new MyInformation();
        	r.setId(rs.getInt("id"));
        	r.setInformation(rs.getString("text"));       	
        	      
        	lr.add(r);
        	r=null;
        }
        conn.close();  
        conn=null;
        return lr;
              
        }catch(Exception e)
        {
        	e.printStackTrace();
        }
        
		return null;
	}
	
public Connection getConnection() throws Exception{
		
        try {
        	Connection conn = null;
        	
            Class.forName("com.mysql.jdbc.Driver");
            
            String url = "jdbc:mysql://localhost:3306/scada";  

		    String username = "root";  

		    String password = "root";
		    
		    conn = (Connection) DriverManager.getConnection(url , username , password);
		    
		    if (conn != null)   
		       	  
		        System.out.println("数据库连接成功!");  

		    else  

		        System.out.println("数据库连接失败!");
		    
		    return conn;
		    
        } catch (Exception e) {
        	
            System.out.println("数据库连接失败");
            return null;
            
        }
}
}
