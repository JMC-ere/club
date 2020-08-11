package kr.spring.manage.domain;

import java.io.IOException;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class EditMainPictureVO {
	private MultipartFile pic_upload;
	private int picture_order;
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
	
	
	
	public int getPicture_order() {
		return picture_order;
	}
	public void setPicture_order(int picture_order) {
		this.picture_order = picture_order;
	}
	
	@Override
	public String toString() {
		return "EditMainPictureVO [picture_order=" + picture_order + ", image=" + Arrays.toString(image) + ", filename="
				+ filename + "]";
	}

	
	
}
