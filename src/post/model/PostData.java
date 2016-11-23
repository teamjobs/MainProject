package post.model;

import java.sql.Date;

import org.springframework.stereotype.Component;

public class PostData {
	int NUM;
	String WAY;
	String COMPANY;
	String TITLE;
	Date UPLOADDATE;
	String STARTDATE; 
	String ENDDATE;
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
	int PAY;
	String EDUCATION;
	
	@Override
	public String toString() {
		return "PostData [NUM=" + NUM + ", COMPANY=" + COMPANY + ", TITLE=" + TITLE + ", HITS=" + HITS + ", VOL=" + VOL
				+ "]";
	}
	
	// 업로드 일자 / 조회수 / 지원자수 제외하고 순서대로 입력해야합니다.
	public PostData(String wAY, String cOMPANY, String tITLE, String sTARTDATE, String eNDDATE, String jOB,
			String lOCAL, String cAREER, String hIRETYPE, String bUSINESS, String qUALIFICATION, String pROCESS,
			String rANK, String sALARY, String iNCHARGE, String cALLNUMBER, int pay, String e) {
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
		PAY = pay;
		EDUCATION = e;
		
	}
	
	public void adjPostData(String wAY, String cOMPANY, String tITLE, String sTARTDATE, String eNDDATE, String jOB,
			String lOCAL, String cAREER, String hIRETYPE, String bUSINESS, String qUALIFICATION, String pROCESS,
			String rANK, String sALARY, String iNCHARGE, String cALLNUMBER, int pay, String e) {
		WAY = wAY;
		COMPANY = cOMPANY;
		TITLE = tITLE;
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
		PAY = pay;
		EDUCATION = e;
	}
	

	public String getEDUCATION() {
		return EDUCATION;
	}


	public void setEDUCATION(String eDUCATION) {
		EDUCATION = eDUCATION;
	}


	public int getPAY() {
		return PAY;
	}

	public void setPAY(int pAY) {
		PAY = pAY;
	}

	// 기본생성자입니다.
	public PostData() {
		this("","","",null,null,"","","","","","","","","","","",0,"");
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

	public String getSTARTDATE() {
		return STARTDATE;
	}

	public String getENDDATE() {
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

	public void setSTARTDATE(String sTARTDATE) {
		STARTDATE = sTARTDATE;
	}

	public void setENDDATE(String eNDDATE) {
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
