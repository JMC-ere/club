package kr.spring.manage.domain;

import java.io.IOException;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class EditMainPictureVO {
	private MultipartFile pic_upload;
	private byte[] image;
	private String filename;
	
	
	public MultipartFile getPic_upload() {
		return pic_upload;
	}
	public void setPic_upload(MultipartFile pic_upload) throws IOException{
		this.pic_upload = pic_upload;
		
		//byte[]변환
		setImage(pic_upload.getBytes());
		//파일명 구하기
		setFilename(pic_upload.getOriginalFilename());
	}
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	@Override
	public String toString() {
		return "EditMainPictureVO [image=" + Arrays.toString(image) + ", filename=" + filename + "]";
	}
	
	
}
