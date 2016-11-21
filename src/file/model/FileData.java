package file.model;

import java.sql.Date;

public class FileData {
	int NUM;
	int FILESIZE;
	String FILETYPE;
	String COMPANY;
	int POST;
	String TITLE;
	String FILENAME;
	String FILEUUID;
	String UPLOADER;
	Date UPDAY;
	
	
	// 기업 업로드시 파일정보 저장
	public FileData(int fILESIZE, String fILETYPE, int pOST, String tITLE, String fILENAME, String fILEUUID,
			String uPLOADER) {
		FILESIZE = fILESIZE;
		FILETYPE = fILETYPE;
		POST = pOST;
		TITLE = tITLE;
		FILENAME = fILENAME;
		FILEUUID = fILEUUID;
		UPLOADER = uPLOADER;
	}


	// 유저 업로드시 파일정보 저장
	public FileData(String cOMPANY, int pOST, String tITLE, String fILENAME, String fILEUUID, String uPLOADER) {
		COMPANY = cOMPANY;
		POST = pOST;
		TITLE = tITLE;
		FILENAME = fILENAME;
		FILEUUID = fILEUUID;
		UPLOADER = uPLOADER;
	}


	// 기본생성자
	public FileData() {
		this("",0,"","","","");
	}


	public int getNUM() {
		return NUM;
	}


	public int getFILESIZE() {
		return FILESIZE;
	}


	public String getFILETYPE() {
		return FILETYPE;
	}


	public String getCOMPANY() {
		return COMPANY;
	}


	public int getPOST() {
		return POST;
	}


	public String getTITLE() {
		return TITLE;
	}


	public String getFILENAME() {
		return FILENAME;
	}


	public String getFILEUUID() {
		return FILEUUID;
	}


	public String getUPLOADER() {
		return UPLOADER;
	}


	public Date getUPDAY() {
		return UPDAY;
	}


	public void setNUM(int nUM) {
		NUM = nUM;
	}


	public void setFILESIZE(int fILESIZE) {
		FILESIZE = fILESIZE;
	}


	public void setFILETYPE(String fILETYPE) {
		FILETYPE = fILETYPE;
	}


	public void setCOMPANY(String cOMPANY) {
		COMPANY = cOMPANY;
	}


	public void setPOST(int pOST) {
		POST = pOST;
	}


	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}


	public void setFILENAME(String fILENAME) {
		FILENAME = fILENAME;
	}


	public void setFILEUUID(String fILEUUID) {
		FILEUUID = fILEUUID;
	}


	public void setUPLOADER(String uPLOADER) {
		UPLOADER = uPLOADER;
	}


	public void setUPDAY(Date uPDAY) {
		UPDAY = uPDAY;
	}


	@Override
	public String toString() {
		return "FileData [NUM=" + NUM + ", TITLE=" + TITLE + ", FILENAME=" + FILENAME + ", UPLOADER=" + UPLOADER
				+ ", UPDAY=" + UPDAY + "]";
	}
	
}
