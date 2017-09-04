package com.dto;

public class FreeBoardDTO {
	
	 private int board_num;
	 private String userid;
	 private String title;
	 private String author;
	 private String content;
	 private String writeday;
	 private String image;
	 private int readCnt;
	public FreeBoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FreeBoardDTO(int board_num, String userid, String title, String author, String content, String writeday,
			String image, int readCnt) {
		super();
		this.board_num = board_num;
		this.userid = userid;
		this.title = title;
		this.author = author;
		this.content = content;
		this.writeday = writeday;
		this.image = image;
		this.readCnt = readCnt;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	@Override
	public String toString() {
		return "FreeboardDTO [board_num=" + board_num + ", userid=" + userid + ", title=" + title + ", author=" + author
				+ ", content=" + content + ", writeday=" + writeday + ", image=" + image + ", readCnt=" + readCnt + "]";
	}
	 
	 

}
