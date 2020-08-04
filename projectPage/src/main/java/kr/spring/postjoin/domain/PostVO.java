package kr.spring.postjoin.domain;

import java.sql.Date;

public class PostVO {
	
	private int post_num;
	private int mem_num;
	private int club_num;
	private String post_title;
	private String post_board;
	private String post_img;
	private Date post_date;
	private int post_hit;
	private String post_imgname;
	
	@Override
	public String toString() {
		return "PostVO [post_num=" + post_num + ", mem_num=" + mem_num + ", club_num=" + club_num + ", post_title="
				+ post_title + ", post_board=" + post_board + ", post_img=" + post_img + ", post_date=" + post_date
				+ ", post_hit=" + post_hit + ", post_imgname=" + post_imgname + "]";
	}
	
	
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public int getClub_num() {
		return club_num;
	}
	public void setClub_num(int club_num) {
		this.club_num = club_num;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_board() {
		return post_board;
	}
	public void setPost_board(String post_board) {
		this.post_board = post_board;
	}
	public String getPost_img() {
		return post_img;
	}
	public void setPost_img(String post_img) {
		this.post_img = post_img;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	public int getPost_hit() {
		return post_hit;
	}
	public void setPost_hit(int post_hit) {
		this.post_hit = post_hit;
	}
	public String getPost_imgname() {
		return post_imgname;
	}
	public void setPost_imgname(String post_imgname) {
		this.post_imgname = post_imgname;
	}
	
}
	
	
	
	
	
	
