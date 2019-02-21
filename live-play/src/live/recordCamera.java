package live;


import java.nio.ByteBuffer;

import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.DataLine;
import javax.sound.sampled.LineUnavailableException;
import javax.sound.sampled.Mixer;
import javax.sound.sampled.TargetDataLine;

import org.bytedeco.javacpp.avcodec;
import org.bytedeco.javacv.CanvasFrame;
import org.bytedeco.javacv.FFmpegFrameRecorder;
import org.bytedeco.javacv.Frame;
import org.bytedeco.javacv.OpenCVFrameGrabber;

public class recordCamera {
	/**
	 * ����/¼�Ʊ�������/��Ƶ(Webcam/Microphone)����ý�������(Stream media server)
	 * 
	 * @param WEBCAM_DEVICE_INDEX
	 *            - ��Ƶ�豸������Ĭ����0
	 * @param AUDIO_DEVICE_INDEX
	 *            - ��Ƶ�豸������Ĭ����4
	 * @param outputFile
	 *            - ����ļ�/��ַ(�����Ǳ����ļ���Ҳ��������ý���������ַ)
	 * @param captureWidth
	 *            - ����ͷ��
	 * @param captureHeight
	 *            - ����ͷ��
	 * @param FRAME_RATE
	 *            - ��Ƶ֡��:��� 25(��ÿ��25��ͼƬ,����25�ͻ��������)
	 * @throws org.bytedeco.javacv.FrameGrabber.Exception
	 */
	public static void recordWebcamAndMicrophone(int WEBCAM_DEVICE_INDEX, int AUDIO_DEVICE_INDEX, String outputFile,
			int captureWidth, int captureHeight, int FRAME_RATE) throws org.bytedeco.javacv.FrameGrabber.Exception {
		
		long startTime = 0;
		long videoTS = 0;
		/**
		 * FrameGrabber �������OpenCVFrameGrabber
		 * (opencv_videoio),C1394FrameGrabber, FlyCaptureFrameGrabber,
		 * OpenKinectFrameGrabber,PS3EyeFrameGrabber,VideoInputFrameGrabber, ��
		 * FFmpegFrameGrabber.
		 */
		OpenCVFrameGrabber grabber = new OpenCVFrameGrabber(WEBCAM_DEVICE_INDEX);
		grabber.setImageWidth(captureWidth);
		grabber.setImageHeight(captureHeight);
		System.out.println("��ʼץȡ����ͷ...");
		
		int isTrue = 0;// ����ͷ����״̬
		try {
			grabber.start();
			isTrue += 1;
			
		} catch (org.bytedeco.javacv.FrameGrabber.Exception e2) {
			if (grabber != null) {
				try {
					grabber.restart();
					isTrue += 1;
					
				} catch (org.bytedeco.javacv.FrameGrabber.Exception e) {
					isTrue -= 1;
					
					try {
						grabber.stop();
					} catch (org.bytedeco.javacv.FrameGrabber.Exception e1) {
						isTrue -= 1;
					}
				}
			}
		}
		
		if (isTrue < 0) {
			System.err.println("����ͷ�״ο���ʧ�ܣ���������Ҳʧ�ܣ�");
			return;
		} else if (isTrue < 1) {
			System.err.println("����ͷ����ʧ�ܣ�");
			return;
		} else if (isTrue == 1) {
			System.err.println("����ͷ�����ɹ���");
		} else if (isTrue == 1) {
			System.err.println("����ͷ�״ο���ʧ�ܣ����������ɹ���");
		}
 
		/**
		 * FFmpegFrameRecorder(String filename, int imageWidth, int imageHeight,
		 * int audioChannels) fileName�����Ǳ����ļ������Զ���������Ҳ������RTMP·������������ý���������
		 * imageWidth = width ��Ϊ���������ÿ� imageHeight = height ��Ϊ���������øߣ�
		 * audioChannels = 2������������1������������0������Ƶ��
		 */
		FFmpegFrameRecorder recorder = new FFmpegFrameRecorder(outputFile, captureWidth, captureHeight, 2);
		recorder.setInterleaved(true);
 
		/**
		 * �ò������ڽ����ӳ� �ο�FFMPEG�ٷ��ĵ���https://trac.ffmpeg.org/wiki/StreamingGuide
		 * �ٷ�ԭ�Ĳο���ffmpeg -f dshow -i video="Virtual-Camera" -vcodec libx264
		 * -tune zerolatency -b 900k -f mpegts udp://10.1.0.102:1234
		 */
 
		recorder.setVideoOption("tune", "zerolatency");
		/**
		 * Ȩ��quality(��Ƶ����)��encode speed(�����ٶ�) values(ֵ)��
		 * ultrafast(�ռ���),superfast(������), veryfast(�ǳ���), faster(�ܿ�), fast(��),
		 * medium(�е�), slow(��), slower(����), veryslow(�ǳ���)
		 * ultrafast(�ռ���)�ṩ���ٵ�ѹ�����ͱ�����CPU����������Ƶ����С����veryslow(�ǳ���)�ṩ��ѵ�ѹ�����߱�����CPU����ͬʱ������Ƶ���Ĵ�С
		 * �ο���https://trac.ffmpeg.org/wiki/Encode/H.264 �ٷ�ԭ�Ĳο���-preset ultrafast
		 * as the name implies provides for the fastest possible encoding. If
		 * some tradeoff between quality and encode speed, go for the speed.
		 * This might be needed if you are going to be transcoding multiple
		 * streams on one machine.
		 */
		recorder.setVideoOption("preset", "ultrafast");
		/**
		 * �ο�ת������: ffmpeg
		 * -i'udp://localhost:5000?fifo_size=1000000&overrun_nonfatal=1' -crf 30
		 * -preset ultrafast -acodec aac -strict experimental -ar 44100 -ac
		 * 2-b:a 96k -vcodec libx264 -r 25 -b:v 500k -f flv 'rtmp://<wowza
		 * serverIP>/live/cam0' -crf 30
		 * -����������������,����һ��x264�Ķ�̬�����ʲ��������ܹ��ڸ��ӳ�����(ʹ�ò�ͬ�����ʣ����ɱ������)������Ƶ������
		 * �������ø��͵�����(quality)�ͱ�����(bit rate),�ο�Encode/H.264 -preset ultrafast
		 * -�ο�����preset����������Ƶѹ����(��Ƶ��С)���ٶ��й�,��Ҫ�������ƽ������㣺ѹ����(��Ƶ��С)����/�����ٶ� -acodec
		 * aac -������Ƶ��/������ (�ڲ�AAC����) -strict experimental
		 * -����ʹ��һЩʵ��ı������(����������ڲ�AAC����ʵ��������) -ar 44100 ������Ƶ������(audio sample
		 * rate) -ac 2 ָ��˫ͨ����Ƶ(��������) -b:a 96k ������Ƶ������(bit rate) -vcodec libx264
		 * ������Ƶ�������(codec) -r 25 -����֡��(frame rate) -b:v 500k -������Ƶ������(bit
		 * rate),������Խ����ƵԽ����,��Ƶ���Ҳ����,��Ҫ����ʵ��ѡ�����Χ -f flv
		 * -�ṩ�������װ��ʽ(rtmpЭ��ֻ֧��flv��װ��ʽ) 'rtmp://<FMS server
		 * IP>/live/cam0'-��ý���������ַ
		 */
		recorder.setVideoOption("crf", "25");
		// 2000 kb/s, 720P��Ƶ�ĺ�������ʷ�Χ
		recorder.setVideoBitrate(2000000);
		// h264��/������
		recorder.setVideoCodec(avcodec.AV_CODEC_ID_H264);
		// ��װ��ʽflv
		recorder.setFormat("flv");
		// ��Ƶ֡��(��֤��Ƶ��������������25������25���������)
		recorder.setFrameRate(FRAME_RATE);
		// �ؼ�֡�����һ����֡����ͬ��������Ƶ֡�ʵ�����
		recorder.setGopSize(FRAME_RATE * 2);
		// ���ɱ�(�̶�)��Ƶ������
		recorder.setAudioOption("crf", "0");
		// �������
		recorder.setAudioQuality(0);
		// ��Ƶ������
		recorder.setAudioBitrate(192000);
		// ��Ƶ������
		recorder.setSampleRate(44100);
		// ˫ͨ��(������)
		recorder.setAudioChannels(2);
		// ��Ƶ��/������
		recorder.setAudioCodec(avcodec.AV_CODEC_ID_AAC);
		System.out.println("��ʼ¼��...");
 
		try {
			recorder.start();
		} catch (org.bytedeco.javacv.FrameRecorder.Exception e2) {
			if (recorder != null) {
				System.out.println("�ر�ʧ�ܣ���������");
				try {
					recorder.stop();
					recorder.start();
				} catch (org.bytedeco.javacv.FrameRecorder.Exception e) {
					try {
						System.out.println("����ʧ�ܣ��ر�¼��");
						recorder.stop();
						return;
					} catch (org.bytedeco.javacv.FrameRecorder.Exception e1) {
						return;
					}
				}
			}
 
		}
		
		// ��Ƶ����
		new Thread(new Runnable() {
			@Override
			public void run() {
				/**
				 * ������Ƶ������ �����ϵͳ֧�ֵĸ�ʽ������getLine() �ᷢ������
				 * ������:44.1k;������λ��:16λ;������(stereo);�Ƿ�ǩ��;true:
				 * big-endian�ֽ�˳��,false:little-endian�ֽ�˳��(���:ByteOrder��)
				 */
				AudioFormat audioFormat = new AudioFormat(44100.0F, 16, 2, true, false);
 
				// ͨ��AudioSystem��ȡ������Ƶ�������Ϣ
				Mixer.Info[] minfoSet = AudioSystem.getMixerInfo();
				// ͨ��AudioSystem��ȡ������Ƶ�����
				Mixer mixer = AudioSystem.getMixer(minfoSet[AUDIO_DEVICE_INDEX]);
				// ͨ�����úõ���Ƶ���������ȡ��������Ϣ
				DataLine.Info dataLineInfo = new DataLine.Info(TargetDataLine.class, audioFormat);
				try {
					// �򿪲���ʼ������Ƶ
					// ͨ��line���Ի�ø������Ȩ
					// ��ȡ�豸��TargetDataLine line
					// =(TargetDataLine)mixer.getLine(dataLineInfo);
					TargetDataLine line = (TargetDataLine) AudioSystem.getLine(dataLineInfo);
					line.open(audioFormat);
					line.start();
					// ��õ�ǰ��Ƶ������
					int sampleRate = (int) audioFormat.getSampleRate();
					// ��ȡ��ǰ��Ƶͨ������
					int numChannels = audioFormat.getChannels();
					// ��ʼ����Ƶ������(size����Ƶ������*ͨ����)
					int audioBufferSize = sampleRate * numChannels;
					byte[] audioBytes = new byte[audioBufferSize];
 
					ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);
					exec.scheduleAtFixedRate(new Runnable() {
						@Override
						public void run() {
							try {
								// ��������ʽ��ȡ
								int nBytesRead = line.read(audioBytes, 0, line.available());
								// ��Ϊ�������õ���16λ��Ƶ��ʽ,������Ҫ��byte[]ת��short[]
								int nSamplesRead = nBytesRead / 2;
								short[] samples = new short[nSamplesRead];
								/**
								 * ByteBuffer.wrap(audioBytes)-��byte[]�����װ��������
								 * ByteBuffer.order(ByteOrder)-��little-endian�޸��ֽ�˳�򣬽����������
								 * ByteBuffer.asShortBuffer()-����һ���µ�short[]������
								 * ShortBuffer.get(samples)-����������short���ݴ��䵽short[]
								 */
								ByteBuffer.wrap(audioBytes).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(samples);
								// ��short[]��װ��ShortBuffer
								ShortBuffer sBuff = ShortBuffer.wrap(samples, 0, nSamplesRead);
								// ��ͨ��¼��shortBuffer
								recorder.recordSamples(sampleRate, numChannels, sBuff);
							} catch (org.bytedeco.javacv.FrameRecorder.Exception e) {
								e.printStackTrace();
							}
						}
					}, 0, (long) 1000 / FRAME_RATE, TimeUnit.MILLISECONDS);
				} catch (LineUnavailableException e1) {
					e1.printStackTrace();
				}
			}
		}).start();
 
		// javaCV�ṩ���Ż��ǳ��õ�Ӳ�����������������ʾ����ץȡ������ͷ��Ƶ
		CanvasFrame cFrame = new CanvasFrame("Capture Preview", CanvasFrame.getDefaultGamma() / grabber.getGamma());
		Frame capturedFrame = null;
		// ִ��ץȡ��capture������
		while ((capturedFrame = grabber.grab()) != null) {
			if (cFrame.isVisible()) {
				//����Ԥ��Ҫ���͵�֡
				cFrame.showImage(capturedFrame);
			}
			//�������ǵĿ�ʼʱ�䣬����ʼʱ��Ҫ�ȳ�ʼ��ʱ���
			if (startTime == 0)
				startTime = System.currentTimeMillis();
 
			// ����һ�� timestamp����д��֡��
			videoTS = 1000 * (System.currentTimeMillis() - startTime);
			//���ƫ����
			if (videoTS > recorder.getTimestamp()) {
				//System.out.println("Lip-flap correction: " + videoTS + " : " + recorder.getTimestamp() + " -> "
				//		+ (videoTS - recorder.getTimestamp()));
				//����¼����д�����timestamp
				recorder.setTimestamp(videoTS);
			}
			// ����֡
			try {
				recorder.record(capturedFrame);
			} catch (org.bytedeco.javacv.FrameRecorder.Exception e) {
				System.out.println("¼��֡�����쳣��ʲô������");
			}
		}
 
		cFrame.dispose();
		try {
			if (recorder != null) {
				recorder.stop();
			}
		} catch (org.bytedeco.javacv.FrameRecorder.Exception e) {
			System.out.println("�ر�¼����ʧ��");
			try {
				if (recorder != null) {
					grabber.stop();
				}
			} catch (org.bytedeco.javacv.FrameGrabber.Exception e1) {
				System.out.println("�ر�����ͷʧ��");
				return;
			}
		}
		try {
			if (recorder != null) {
				grabber.stop();
			}
		} catch (org.bytedeco.javacv.FrameGrabber.Exception e) {
			System.out.println("�ر�����ͷʧ��");
		}
	}

}
