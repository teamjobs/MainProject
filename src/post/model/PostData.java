package post.model;

import java.sql.Date;

public class PostData {
	int NUM;
	String WAY;
	String COMPANY;
	String TITLE;
	Date UPLOADDATE;
	Date STARTDATE; 
	Date ENDDATE;
	String JOB;
	String LOCAL;
	String CAREER;
	String HIRETYPE;
	String BUSINESS;
	String QUALIFICATION;
	String PROCESS;
	String RANK;
	String SALARY;
	String INCHARGE;
	String CALLNUMBER;
	int HITS;
	int VOL;
	
	public PostData(String wAY, String cOMPANY, String tITLE, Date sTARTDATE, Date eNDDATE, String jOB,
			String lOCAL, String cAREER, String hIRETYPE, String bUSINESS, String qUALIFICATION, String pROCESS,
			String rANK, String sALARY, String iNCHARGE, String cALLNUMBER) {
		NUM = 0;
		WAY = wAY;
		COMPANY = cOMPANY;
		TITLE = tITLE;
		UPLOADDATE = null;
		STARTDATE = sTARTDATE;
		ENDDATE = eNDDATE;
		JOB = jOB;
		LOCAL = lOCAL;
		CAREER = cAREER;
		HIRETYPE = hIRETYPE;
		BUSINESS = bUSINESS;
		QUALIFICATION = qUALIFICATION;
		PROCESS = pROCESS;
		RANK = rANK;
		SALARY = sALARY;
		INCHARGE = iNCHARGE;
		CALLNUMBER = cALLNUMBER;
		HITS = 0;
		VOL = 0;
	}

	public PostData() {
		this("","","",null,null,"","","","","","","","","","","");
	}

	public int getNUM() {
		return NUM;
	}

	public String getWAY() {
		return WAY;
	}

	public String getCOMPANY() {
		return COMPANY;
	}

	public String getTITLE() {
		return TITLE;
	}

	public Date getUPLOADDATE() {
		return UPLOADDATE;
	}

	public Date getSTARTDATE() {
		return STARTDATE;
	}

	public Date getENDDATE() {
		return ENDDATE;
	}

	public String getJOB() {
		return JOB;
	}

	public String getLOCAL() {
		return LOCAL;
	}

	public String getCAREER() {
		return CAREER;
	}

	public String getHIRETYPE() {
		return HIRETYPE;
	}

	public String getBUSINESS() {
		return BUSINESS;
	}

	public String getQUALIFICATION() {
		return QUALIFICATION;
	}

	public String getPROCESS() {
		return PROCESS;
	}

	public String getRANK() {
		return RANK;
	}

	public String getSALARY() {
		return SALARY;
	}

	public String getINCHARGE() {
		return INCHARGE;
	}

	public String getCALLNUMBER() {
		return CALLNUMBER;
	}

	public int getHITS() {
		return HITS;
	}

	public int getVOL() {
		return VOL;
	}

	public void setNUM(int nUM) {
		NUM = nUM;
	}

	public void setWAY(String wAY) {
		WAY = wAY;
	}

	public void setCOMPANY(String cOMPANY) {
		COMPANY = cOMPANY;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public void setUPLOADDATE(Date uPLOADDATE) {
		UPLOADDATE = uPLOADDATE;
	}

	public void setSTARTDATE(Date sTARTDATE) {
		STARTDATE = sTARTDATE;
	}

	public void setENDDATE(Date eNDDATE) {
		ENDDATE = eNDDATE;
	}

	public void setJOB(String jOB) {
		JOB = jOB;
	}

	public void setLOCAL(String lOCAL) {
		LOCAL = lOCAL;
	}

	public void setCAREER(String cAREER) {
		CAREER = cAREER;
	}

	public void setHIRETYPE(String hIRETYPE) {
		HIRETYPE = hIRETYPE;
	}

	public void setBUSINESS(String bUSINESS) {
		BUSINESS = bUSINESS;
	}

	public void setQUALIFICATION(String qUALIFICATION) {
		QUALIFICATION = qUALIFICATION;
	}

	public void setPROCESS(String pROCESS) {
		PROCESS = pROCESS;
	}

	public void setRANK(String rANK) {
		RANK = rANK;
	}

	public void setSALARY(String sALARY) {
		SALARY = sALARY;
	}

	public void setINCHARGE(String iNCHARGE) {
		INCHARGE = iNCHARGE;
	}

	public void setCALLNUMBER(String cALLNUMBER) {
		CALLNUMBER = cALLNUMBER;
	}

	public void setHITS(int hITS) {
		HITS = hITS;
	}

	public void setVOL(int vOL) {
		VOL = vOL;
	}
	
	
}
