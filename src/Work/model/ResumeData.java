package Work.model;

import oracle.sql.DATE;

public class ResumeData {

 
	public int NUM;
	public String TITLE;
	public String FILENAME;
	public String FILEUUID;
	public String UPLOADER;
	public DATE UPDAY;
	public DATE LISTUPDATE;
	public int FILESIZE;
	
	public ResumeData(int nUM, String tITLE, String fILENAME, String fILEUUID, String uPLOADER, DATE uPDAY,
			DATE lISTUPDATE, int fILESIZE) {
		NUM = nUM;
		TITLE = tITLE;
		FILENAME = fILENAME;
		FILEUUID = fILEUUID;
		UPLOADER = uPLOADER;
		UPDAY = uPDAY;
		LISTUPDATE = lISTUPDATE;
		FILESIZE = fILESIZE;
	}
	
	public ResumeData(){
		this(0, null, null, null, null, null, null, 0);
	}
	

	public int getNUM() {
		return NUM;
	}

	public void setNUM(int nUM) {
		NUM = nUM;
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public String getFILENAME() {
		return FILENAME;
	}

	public void setFILENAME(String fILENAME) {
		FILENAME = fILENAME;
	}

	public String getFILEUUID() {
		return FILEUUID;
	}

	public void setFILEUUID(String fILEUUID) {
		FILEUUID = fILEUUID;
	}

	public String getUPLOADER() {
		return UPLOADER;
	}

	public void setUPLOADER(String uPLOADER) {
		UPLOADER = uPLOADER;
	}

	public DATE getUPDAY() {
		return UPDAY;
	}

	public void setUPDAY(DATE uPDAY) {
		UPDAY = uPDAY;
	}

	public DATE getLISTUPDATE() {
		return LISTUPDATE;
	}

	public void setLISTUPDATE(DATE lISTUPDATE) {
		LISTUPDATE = lISTUPDATE;
	}

	public int getFILESIZE() {
		return FILESIZE;
	}

	public void setFILESIZE(int fILESIZE) {
		FILESIZE = fILESIZE;
	}
	
	
	
	
}
