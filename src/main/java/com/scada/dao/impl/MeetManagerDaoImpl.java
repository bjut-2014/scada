package com.scada.dao.impl;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionContext;
import com.scada.dao.MeetManagerDao;
import com.scada.domain.MeetManager;
import com.scada.domain.Room;


public class MeetManagerDaoImpl extends HibernateDaoSupport implements MeetManagerDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<MeetManager> getAll() {
		String hql = "from MeetManager mr";
		return (List<MeetManager>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Room> getAllRoom() {
		Connection conn=null;
        try{
        	
        conn=getConnection();
   
        String sql="SELECT * FROM `scada`.`meet_room`;";
        
        PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
        
        ResultSet rs=ps.executeQuery();
        
        List<Room> lr=new ArrayList<Room>();
             
        while(rs.next()){
        	Room r=new Room();
        	r.setMeetroom_id(rs.getInt(1));
        	r.setTime(rs.getString(2));       	
        	r.setUseful(rs.getString(3));      	
        	r.setNum(rs.getInt(4));      
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

	
	@Override
	@SuppressWarnings("unchecked")
	public List<MeetManager> Search() {
		try{
			String hql=null;
	    	ActionContext actionContext = ActionContext.getContext();
	    	Map<String, Object> session = actionContext.getSession();
	    	String select=(String) session.get("select");
	    	String mess=(String) session.get("message");
	    	
	    	switch(select){
	    	case "id":
	    	{
	    		try{		
	    			int id=Integer.valueOf(mess);
	        		hql = "from MeetManager as mm where mm.meet_id="+id;
					List<MeetManager> meetManager=(List<MeetManager>)this.getHibernateTemplate().find(hql);
	        		return meetManager;
	        	}catch(Exception e)
	        	{
	        		return null;
	        	}	
	    	}
	    	default:{
	    		return null;
	    	}
		}
	   
			
		}catch(Exception e){
			System.out.println(e);
			return null;
		}
		
	}

	@Override
	public void updateAndDelete(int id) {
		
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String select=(String) session.get("select");
    	String message=(String) session.get("message");

    	Connection conn=null;
    	
    	String sql=null;
    	
    	
    	if(!message.equals("")){
    	if(select.equals("id")){
    		try{
    		  			
        		conn=getConnection();
        		     	   
        		sql="UPDATE `scada`.`meet_room` SET `useful`='可用' WHERE `meetroom_id`="+"'"+id+"'";

                PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
    		        
        		ps.executeUpdate();
        		    
        	    //MeetManager meetManager=(MeetManager)this.getSessionFactory().openSession().get(MeetManager.class, id);
        		//this.getHibernateTemplate().delete(meetManager);
        		//this.getSessionFactory().openSession().close();
        		conn.close();
        		conn=null;
        		System.out.println(conn);
        		
    		}catch(Exception e){
    			System.out.println(e);		
    	     }
    	}
    		
    }
   }
	
	@Override
	public void updateAndInput(int id){

    	Connection conn=null;
    	
    	String sql=null;
    
    	
    		try{
    				
        		conn=getConnection();
        	    
        		sql="UPDATE `scada`.`meet_room` SET `useful`='不可用' WHERE `meetroom_id`="+"'"+id+"'";

                PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
    		        
        		ps.executeUpdate();
        		    
        	    //MeetManager meetManager=(MeetManager)this.getSessionFactory().openSession().get(MeetManager.class, id);
        		//this.getHibernateTemplate().delete(meetManager);
        		//this.getSessionFactory().openSession().close();
        		conn.close();
        		conn=null;
        		
        		
    		}catch(Exception e){
    			System.out.println(e);		
    	    }
    
	}
	
	@Override
	public String queryRoomUseful(String id) {
		String sql=null;
		Connection conn=null;
		String useful=null;
		
		try{
			conn=getConnection();
			sql="SELECT `useful` FROM scada.meet_room WHERE `meetroom_id`="+id;
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
	        
	        ResultSet rs=ps.executeQuery();
	        
	        while(rs.next()){
	        	useful=rs.getString("useful");
	        }

	        conn.close();
	        conn=null;
	        
	        return useful;
		}catch(Exception e){
			
		}
		
		return useful;
	}

	public String query(String id){
       
		String sql=null;
		String sql_2=null;
		Connection conn=null;
		
		try{
			
			conn=getConnection();
			
			sql="SELECT `meetroom_num` FROM scada.meet_manager WHERE meet_id="+id;
	        
	        PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
	        
	        ResultSet rs=ps.executeQuery();
	        
	        while(rs.next()){
	        	sql_2=rs.getString("meetroom_num");
	        }
	        
	        conn.close();
	        conn=null;
	        
	        return sql_2;
			
		}catch(Exception e){
			System.out.println(e);
		}
		return sql_2;

	}
	
	@Override
	public void delete(String mess){
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String select=(String) session.get("select");
    	String message=(String) session.get("message");
    	int id =Integer.valueOf(mess);
		/*
		Connection conn=null;
	    String sql=null;
        try{	
			conn=getConnection();
			
		    sql="DELETE FROM `big_project`.`meet_manager` WHERE `meet_id`="+"'"+id+"'";        
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            ps.executeUpdate();
            conn.close();
            conn=null;
	    }catch(Exception e){
		    //e.printStackTrace();
	    }
	    */
        if(!message.equals("")){
        	if(select.equals("id")){
        		try{
        			MeetManager meetManager=(MeetManager)this.getSessionFactory().openSession().get(MeetManager.class, id);
        		    this.getHibernateTemplate().delete(meetManager);
        		    this.getSessionFactory().openSession().close();
      
        		}catch(Exception e){
        			System.out.println(e);		
        		}
        	}
        	}
	}
	
	@Override
	public List<MeetManager> get() {
		
		return null;
	}

	@Override
	public void save() {
		
		Connection conn=null;
		try {  
			ActionContext actionContext = ActionContext.getContext();
	    	Map<String, Object> session = actionContext.getSession();

	    	String []file=new String[10];

	    	/*****************************************************/
			file[0]=(String) session.get("meet_id");
			file[1]=(String) session.get("meet_name");
			file[2]=(String) session.get("meet_title");
			file[3]=(String) session.get("meet_content");
			file[4]=(String) session.get("people_num");		
			file[5]=(String) session.get("start_end");
			file[6]=(String) session.get("location");
			file[7]=(String) session.get("meetroom_num");			
			file[8]=(String) session.get("useful_time");
			file[9]=(String) session.get("room_size");
			int meet_id=Integer.valueOf(file[0]);
			int people_num=Integer.valueOf(file[4]);
			int meetroom_num=Integer.valueOf(file[7]);
			int room_size=Integer.valueOf(file[9]);
			/*****************************************************/

			conn=getConnection();
	
			String sql=
            "INSERT INTO `scada`.`meet_manager` (`meet_id`, `meet_name`, `meet_title`, `meet_content`, `people_num`, `start_end`, `location`, `meetroom_num`, `useful_time`, `room_size`) "
			+ "VALUES ("+"'"+meet_id+"', '"+file[1]+"', '"+file[2]+"', '"+file[3]+"', '"+people_num+"', '"+file[5]+"', '"+file[6]+"', '"+meetroom_num+"', '"+file[8]+"', '"+room_size+"');";
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
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
	public String check(String id){
		Connection conn=null;
		String sql=null;
		String sql_1=null;
		try{
			conn=getConnection();
			
            sql="SELECT `meet_id` FROM scada.meet_manager WHERE meet_id="+id;
	        
	        PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
	        
	        ResultSet rs=ps.executeQuery();
	        
	        while(rs.next()){
	        	sql_1=rs.getString("meet_id");
	        }
	        
	        conn.close();
	        
	        return sql_1;
	        
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return sql_1;
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
