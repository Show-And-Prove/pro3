package kr.go.shinan.dto;

public class ImpressDTO {
	
	private int no;
	private String cate;
	private String tourNo;
	private String id;
	private String content;
	private double star;
	private String imgSrc;
	private String regdate;
	
	

	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getStar() {
		return star;
	}
	public void setStar(double star) {
		this.star = star;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "ImpressDTO [no=" + no + ", cate=" + cate + ", id=" + id
				+ ", content=" + content + ", star=" + star + ", imgSrc="
				+ imgSrc + ", regdate=" + regdate + "]";
	}
	
	
}
