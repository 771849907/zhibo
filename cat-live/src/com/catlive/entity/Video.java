package com.catlive.entity;

import java.sql.Timestamp;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name="video")
public class Video {

	@Id	
	@Column(name="ID",columnDefinition="BIGINT UNSIGNED")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id;
	
	@Column(name="NAME",length=50,nullable=false,unique=true)
	private String name;
	
	@Column(name="CLASSIFICATION",length=50,nullable=false)
	private String classification;
	
	@Column(name="INFO",length=100,nullable=false)
	private String info;
	
	@Column(name="URL",length=255,nullable=false)
	private String url;
	
	
	
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getClassification(){
		return classification;
	}
	
	public void setClassification(String classification){
		this.classification=classification;
	}
	
	public String getInfo(){
		return info;
	}
	
	public void setInfo(String info){
		this.info=info;
	}
	
	public String getUrl(){
		return url;
	}
	
	public void setUrl(String url){
		this.url=url;
	}
	
	
}
