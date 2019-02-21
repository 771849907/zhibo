package com.catlive.servicelmpl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.catlive.dao.VideoDao;
import com.catlive.entity.Video;
import com.catlive.service.VideoService;

@Service("videoService")
@Transactional
public class VideoServiceimpl implements VideoService{
	
	@Autowired
	private VideoDao videoDao;
	
	@Override
	public List<Video> getAllVideo(){
		List<Video> getAllVideo = videoDao.getAllVideo();
		return getAllVideo;
	}
	@Override
	public void insert(Video video) {
		videoDao.insert(video);
	}

	

}
