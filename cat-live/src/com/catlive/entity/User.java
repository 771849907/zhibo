package com.catlive.entity;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {

	@Id	
	@Column(name="ID",columnDefinition="BIGINT UNSIGNED")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id;
	
	@Column(name="NAME", length=50,nullable=false,unique=true)
    private String username;
	
	@Column(name="PASSWORD", length=50,nullable=false)
    private String password;
	
	@Column(name="EMAIL",length=30,nullable=false,unique=true)
	private String email;
	
	@Column(name="PHONE",length=11,nullable=false,unique=true)
	private String phone;
    
	
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return username;
    }
    public void setName(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail(){
    	return email;
    }
    public void setEmail(String email){
    	this.email = email;
    }
    public String getPhone(){
    	return phone;
    }
    public void  setPhone(String phone){
    	this.phone = phone;
    }
    
  
    
    
}
