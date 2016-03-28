package com.scada.dao.impl;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionContext;
import com.scada.dao.FileManagerDao;
import com.scada.domain.FileManager;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;



public class FileManagerDaoImpl extends HibernateDaoSupport implements FileManagerDao{
    
	@SuppressWarnings("unchecked")
	@Override
	public List<FileManager> get() {

		String hql = "from FileManager fm";
		return (List<FileManager>) this.getHibernateTemplate().find(hql);
	}



	@Override
	public FileManager getByName(String name) {

		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<FileManager> getAll() {
		String hql = "from FileManager fm";
		return (List<FileManager>) this.getHibernateTemplate().find(hql);

	}
	
    @SuppressWarnings("unchecked")
	public List<FileManager> Search(){
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
        		hql = "from FileManager as fm where fm.sid="+"'"+id+"'";
        		List<FileManager> fileManager=(List<FileManager>)this.getHibernateTemplate().find(hql);
        		return fileManager;
        	}catch(Exception e)
        	{
        		return null;
        	}	
    	}
    	case "name":
    	{
    		try{
    			String mess=(String) session.get("message");
        		hql = "from FileManager as fm where fm.sname="+"'"+mess+"'";
        		List<FileManager> fileManager=(List<FileManager>)this.getHibernateTemplate().find(hql);
        		return fileManager;
        	}catch(Exception e)
        	{
        		return null;
        	}
    	}
    	case "card":
    	{
    		try{
    			String mess=(String) session.get("message");
        		hql = "from FileManager as fm where fm.identity_card="+"'"+mess+"'";
        		List<FileManager> fileManager=(List<FileManager>)this.getHibernateTemplate().find(hql);
        		return fileManager;
        	}catch(Exception e)
        	{
        		return null;
        	}
    	}default:
    		return null;
    	}
    	
    }
    

    
 
	
	public void delete(Integer id){
    	ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String select=(String) session.get("select");
    	String message=(String) session.get("message");
    	
    	
    	if(!message.equals("")){
    	if(select.equals("id")){
    		try{
    			FileManager fileManager=(FileManager)this.getSessionFactory().openSession().get(FileManager.class, id);
    		    this.getHibernateTemplate().delete(fileManager);
    		    this.getSessionFactory().openSession().close();
  
    		}catch(Exception e){
    			System.out.println(e);		
    		}
    	}
    	}
    }




	

	@Override
	public void save() {
		
		try {  
			ActionContext actionContext = ActionContext.getContext();
	    	Map<String, Object> session = actionContext.getSession();
	    	int j = 1;

	    	String []file=new String[20];
			file[0]=(String) session.get("sname");
			file[1]=(String) session.get("identity_card");
			file[2]=(String) session.get("sex");
			file[3]=(String) session.get("both");
			file[4]=(String) session.get("age");
			
			file[5]=(String) session.get("location");
			file[6]=(String) session.get("zip_code");
			file[7]=(String) session.get("nation");
			
			file[8]=(String) session.get("politics_status");
			file[9]=(String) session.get("school");
			file[10]=(String) session.get("education_background");
			file[11]=(String) session.get("major");
			
			
			file[12]=(String) session.get("job_title");
			file[13]=(String) session.get("job_title_date");
			file[14]=(String) session.get("qualification");
			file[15]=(String) session.get("telephone");
			file[16]=(String) session.get("mobilephone");
			file[17]=(String) session.get("urgent_phone");
			file[18]=(String) session.get("company_email");
			file[19]=(String) session.get("sole_email");
			int age=Integer.valueOf(file[4]);

            Class.forName("com.mysql.jdbc.Driver");  

            String url = "jdbc:mysql://localhost:3306/scada";  

            String username = "root";  

            String password = "root";  

            Connection conn = (Connection) DriverManager.getConnection(url , username , password); 
            if (conn != null)   
            	  
                System.out.println("数据库连接成功!");  

            else  

                System.out.println("数据库连接失败!");  

            //完成后记得关闭数据库连接      
        
            String sql_1="SELECT `sid` FROM `scada`.`file_manager`;";
            PreparedStatement ps_1 = (PreparedStatement) conn.prepareStatement(sql_1);
            ResultSet s_1=ps_1.executeQuery();
            int sid;
              while(s_1.next()){
                  sid =s_1.getInt(1);
                  System.out.println(sid);
			      if(sid==0)
                  {
			    	  System.out.println(sid);
                  }else
                	 j=sid+1;
                }

            /*String sql_2="SELECT `identity_card` FROM `big_project`.`file_manager` WHERE identity_card="+"'"+file[1]+"';";
            PreparedStatement ps_2 = (PreparedStatement) conn.prepareStatement(sql_2);
            ResultSet s_2=ps_2.executeQuery();
            System.out.println(6);
            if(s_2==null){
            	System.out.println(7);*/
            String sql=
            		"INSERT INTO `scada`.`file_manager` (`sid`, `sname`, `identity_card`, `sex`, `both`, `age`, `location`, `zip_code`, `nation`, `politics_status`, `school`, `education_background`, `major`, `job_title`, `job_title_date`, `qualification`, `telephone`, `mobilephone`, `urgent_phone`, `company_email`, `sole_email`) "
            		+ "VALUES ('"+j+"', "+"'"+file[0]+"', '"+file[1]+"', '"+file[2]+"', '"+file[3]+"', '"+age+"', '"+file[5]+"', '"+file[6]+"', '"+file[7]+"', '"+file[8]+"', '"+file[9]+"', '"+file[10]+"', '"+file[11]+"', '"+file[12]+"', '"+file[13]+"', '"+file[14]+"', '"+file[15]+"', '"+file[16]+"', '"+file[17]+"', '"+file[18]+"', '"+file[19]+"');";
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            
            int row = ps.executeUpdate();  
           
            if(row > 0) 
                   System.out.println("成功添加了" + row + "条数据"); 
            //}else{
            conn.close();
            conn=null;
            //} 
		}catch(Exception e){
			System.out.println(e);
		}
	}
    
    
}
