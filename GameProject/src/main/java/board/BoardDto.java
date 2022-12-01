package board;

import java.sql.Date;

public class BoardDto {
	private int bnum;
	private String btitle;
	private String btag;
	private String bwriter;
	private Date bdate;
	public int getMnum() {
		return bnum;
	}
	public void setMnum(int bnum) {
		this.bnum = bnum;
	}
	public String getMtitle() {
		return btitle;
	}
	public void setMtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getMtag() {
		return btag;
	}
	public void setMtag(String btag) {
		this.btag = btag;
	}
	public String getMwriter() {
		return bwriter;
	}
	public void setMwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public Date getMdate() {
		return bdate;
	}
	public void setMdate(Date bdate) {
		this.bdate = bdate;
	}
	
	public BoardDto(int bnum, String btitle, String btag, String bwriter, Date bdate) {
		this.bnum = bnum;
		this.btitle = btitle;
		this.btag = btag;
		this.bwriter = bwriter;
		this.bdate = bdate;
	}
	
	public BoardDto() {}

}
