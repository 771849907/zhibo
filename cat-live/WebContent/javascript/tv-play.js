// JavaScript Document
var videoObject = {
			container:'#video',
			variable:'player',
			autoplay:true,
			//在推流端发布的rtmp地址
			video:'rtmp://localhost/live/record1'
	};
	var play = new ckplayer(videoObject);