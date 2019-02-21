package com.catlive.controller;



import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.catlive.entity.Video;
import com.catlive.service.VideoService;

@Controller
@RequestMapping("/video")
public class VideoController {
	
	@Autowired
	private VideoService VideoService;
	
	/**
	 * 上传文件
	 * @param file
	 * @return
	 */
	@RequestMapping(value="uploadVideo.do",method=RequestMethod.POST)
	public ModelAndView uploadVideo(@RequestParam("file") MultipartFile[] files,
			@RequestParam("name") String name,
			@RequestParam("classification") String classification,
			@RequestParam("info") String info,
			@RequestParam("url") String url,
			HttpServletRequest request) throws IllegalStateException, IOException{
		System.out.println("begin uploading");
		String videoPath = request.getSession().getServletContext().getRealPath("/WEB-INF/uploadVideo/");
		
		File file = new File(videoPath);
		if(!file.isDirectory()) {
			//创建文件夹
			file.mkdirs();
			System.out.println("create directory:"+videoPath);
		}
		
		//批量上传
		String newvideoPath = null;
		String dbvideoPath=null;
		System.out.println("files length: "+files.length);
		for(int i=0;i<files.length;i++) {
			if(!files[i].getOriginalFilename().isEmpty()) {
				System.out.println("--------File detail: "+ "FILENAME:"+files[i].getOriginalFilename()+"   TYPE:"+files[i].getContentType());
					newvideoPath = videoPath+files[i].getOriginalFilename();
					dbvideoPath="uploadVideo/"+files[i].getOriginalFilename();
					File newFile = new File(newvideoPath);
					files[i].transferTo(newFile);
				
			}
		}
		System.out.println("name: "+name);
		System.out.println("classification: "+classification);
		System.out.println("info: "+info);
		System.out.println("url: "+url);
		Video video = new Video();
		video.setName(name);
		video.setClassification(classification);
		video.setInfo(info);
		video.setUrl(url);
		VideoService.insert(video);
		
		ModelAndView modelAndView = new ModelAndView("video");
		modelAndView.addObject("sta","video");
		return modelAndView;
		
	}
	
	@RequestMapping("/getAllVideo.do")
	@ResponseBody
	public Map<String,Object> getAllVideo(){
		List<Video> videoList = VideoService.getAllVideo();
		List<Map<String,String>> videolistmap = new ArrayList<>();
		for(Video v:videoList){
			Map<String,String> videomap = new HashMap<>();
			videomap.put("id", v.getId().toString());
			videomap.put("name", v.getName());
			videomap.put("classification", v.getClassification());
			videomap.put("info", v.getInfo());
			videomap.put("url", v.getUrl());
			videolistmap.add(videomap);		
		}
		Map <String,Object> map = new LinkedHashMap<>();
		map.put("total", videoList.size());
		map.put("rows", videolistmap);
		return map;
	}
}
