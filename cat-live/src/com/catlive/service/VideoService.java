package com.catlive.service;

import java.util.List;




import com.catlive.entity.Video;


public interface VideoService {

	public List<Video> getAllVideo();

	public void insert(Video video);

	

}
