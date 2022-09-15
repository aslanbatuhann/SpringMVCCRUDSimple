package com.javatpoint.dao;    
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.javatpoint.beans.User;    
    
    
public class UserService {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(User p){    
    String sql="insert into users(first_name,last_name,phone_number,address,blood_type) values('"+p.getFirstName()+"','"+p.getLastName()+"','"+p.getPhoneNumber()+"','"+p.getAddress()+"','"+p.getBloodType()+"')";    
    return template.update(sql);    
}      
  
public List<User> getUsers(){    
    return template.query("select * from users",new RowMapper<User>(){    
        public User mapRow(ResultSet rs, int row) throws SQLException {    
        	User user=new User();       
        	user.setFirstName(rs.getString(2));    
        	user.setLastName(rs.getString(3));    
        	user.setPhoneNumber(rs.getString(4));  
        	user.setAddress(rs.getString(5));
        	user.setBloodType(rs.getString(6));
            return user;    
        }    
    });    
}    
}   