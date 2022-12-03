package comments;

import java.sql.Date;

public class CommentsDto {
	private int conum;
	private String cobcode;
	private int cocode;
	private String cotag;
	private String cdate;
	public int getConum() {
		return conum;
	}
	public void setConum(int conum) {
		this.conum = conum;
	}
	public String getCobcode() {
		return cobcode;
	}
	public void setCobcode(String cobcode) {
		this.cobcode = cobcode;
	}
	public int getCocode() {
		return cocode;
	}
	public void setCocode(int cocode) {
		this.cocode = cocode;
	}
	public String getCotag() {
		return cotag;
	}
	public void setCotag(String cotag) {
		this.cotag = cotag;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	
	public CommentsDto(int conum, String cobcode, int cocode, String cotag, String cdate) {
		this.conum = conum;
		this.cobcode = cobcode;
		this.cocode = cocode;
		this.cotag = cotag;
		this.cdate = cdate;	
	}
	public CommentsDto() {}
	
}
