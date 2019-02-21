package com.catlive.daolmpl;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.catlive.entity.Video;
import com.catlive.dao.UserDao;
import com.catlive.dao.VideoDao;;

@Repository("videoDao")
public class VideoDaoimpl implements VideoDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    @Override
	public void insert(Video video) {
		
		this.getSession().save(video);
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Video> getAllVideo() {
	
		Query query=this.getSession().createQuery("from Video");
		List<Video> videos=query.list();
		
		System.out.println(videos);
		return videos;
	}

}
