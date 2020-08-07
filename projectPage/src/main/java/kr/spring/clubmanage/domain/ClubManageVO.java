package kr.spring.clubmanage.domain;

import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class ClubManageVO {
	
	private int club_num;
	private int mem_num;
	private String club_title;
	private String club_loc;
	private String club_name;
	private Date club_start;
	private String club_time;
	private String club_interval;
	private Date club_end;
	private String club_detail;
	private MultipartFile upload;
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) throws IOException {
		this.upload = upload;
		
		//멀티파트 파일 형식을 byte[]로 변환해야 DB에 업로드
		setClub_img(upload.getBytes());
		setFilename(upload.getOriginalFilename());
	}
	private byte[] club_img;
	private String filename;
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	private int club_state;
	private String return_message;
	private Date club_date;
	private String detail_name;
	private String detail_nick;
	private String detail_cell;
	private String detail_email;
	private byte[] detail_img;
	private String join_date;
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public int getClub_num() {
		return club_num;
	}
	public void setClub_num(int club_num) {
		this.club_num = club_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getClub_title() {
		return club_title;
	}
	public void setClub_title(String club_title) {
		this.club_title = club_title;
	}
	public String getClub_loc() {
		return club_loc;
	}
	public void setClub_loc(String club_loc) {
		this.club_loc = club_loc;
	}
	public String getClub_name() {
		return club_name;
	}
	public void setClub_name(String club_name) {
		this.club_name = club_name;
	}
	public Date getClub_start() {
		return club_start;
	}
	public void setClub_start(Date club_start) {
		this.club_start = club_start;
	}
	public String getClub_time() {
		return club_time;
	}
	public void setClub_time(String club_time) {
		this.club_time = club_time;
	}
	public String getClub_interval() {
		return club_interval;
	}
	public void setClub_interval(String club_interval) {
		this.club_interval = club_interval;
	}
	public Date getClub_end() {
		return club_end;
	}
	public void setClub_end(Date club_end) {
		this.club_end = club_end;
	}
	public String getClub_detail() {
		return club_detail;
	}
	public void setClub_detail(String club_detail) {
		this.club_detail = club_detail;
	}
	public byte[] getClub_img() {
		return club_img;
	}
	public void setClub_img(byte[] club_img) {
		this.club_img = club_img;
	}
	public int getClub_state() {
		return club_state;
	}
	public void setClub_state(int club_state) {
		this.club_state = club_state;
	}
	public String getReturn_message() {
		return return_message;
	}
	public void setReturn_message(String retrun_message) {
		this.return_message = retrun_message;
	}
	public Date getClub_date() {
		return club_date;
	}
	public void setClub_date(Date club_date) {
		this.club_date = club_date;
	}
	public String getDetail_nick() {
		return detail_nick;
	}
	public void setDetail_nick(String detail_nick) {
		this.detail_nick = detail_nick;
	}
	public String getDetail_name() {
		return detail_name;
	}
	public void setDetail_name(String detail_name) {
		this.detail_name = detail_name;
	}
	public String getDetail_cell() {
		return detail_cell;
	}
	public void setDetail_cell(String detail_cell) {
		this.detail_cell = detail_cell;
	}
	public String getDetail_email() {
		return detail_email;
	}
	public void setDetail_email(String detail_email) {
		this.detail_email = detail_email;
	}
	public byte[] getDetail_img() {
		return detail_img;
	}
	public void setDetail_img(byte[] detail_img) {
		this.detail_img = detail_img;
	}
	@Override
	public String toString() {
		return "ClubManageVO [club_num=" + club_num + ", mem_num=" + mem_num + ", club_title=" + club_title
				+ ", club_loc=" + club_loc + ", club_name=" + club_name + ", club_start=" + club_start + ", club_time="
				+ club_time + ", club_interval=" + club_interval + ", club_end=" + club_end + ", club_detail="
				+ club_detail + ", upload=" + upload + ", filename="
				+ filename + ", club_state=" + club_state + ", retrun_message=" + return_message + ", club_date="
				+ club_date + ", detail_name=" + detail_name + ", detail_nick=" + detail_nick + ", detail_cell="
				+ detail_cell + ", detail_email=" + detail_email + ", detail_img=" + Arrays.toString(detail_img)
				+ ", join_date=" + join_date + "]";
	}
	
	
}