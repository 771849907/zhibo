package com.catlive.dao;


import java.util.List;
import java.sql.SQLException;
import com.catlive.entity.Video;
public interface VideoDao {
	
	public List<Video> getAllVideo();
	public void insert(Video video);	
}
