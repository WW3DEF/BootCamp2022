package board;

import java.sql.Date;

public class BoardDto {
	private int bnum;
	private String btitle;
	private String btag;
	private String bwriter;
	private Date bdate;
	private int bview;
	private int category;
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBtag() {
		return btag;
	}
	public void setBtag(String btag) {
		this.btag = btag;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getBview() {
		return bview;
	}
	public void setBview(int bview) {
		this.bview = bview;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	
	public BoardDto(int bnum, String btitle, String btag, String bwriter, Date bdate, int bview, int category) {
		this.bnum = bnum;
		this.btitle = btitle;
		this.btag = btag;
		this.bwriter = bwriter;
		this.bdate = bdate;
		this.bview = bview;
		this.category = category;
	}
	
	public BoardDto() {}

}
