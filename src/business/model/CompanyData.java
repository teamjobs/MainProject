package business.model;

import java.sql.Date;

public class CompanyData {
	String ID;
	String PASS;
	String CALLNUM;
	String EMAIL;
	String CONUMBER;
	String NAME;
	String BOSS;
	String WEBSITE;
	int EMPLOYEE_NUM;
	String INCO;
	String FORM;
	String SALESACCOUNT;
	String INDUSTRY;
	String INTRODUCE;
	String SORT;
	String ADDR;
	
	//가입처리시 사용합니다 (ID/PASS/전화번호/이메일/사업자등록번호/회사명/대표이름)
	public CompanyData(String id, String pass, String callnum, String email, String conumber, String name, String boss, String addr) {
		ID = id;
		PASS = pass;
		CALLNUM = callnum;
		EMAIL = email;
		CONUMBER = conumber;
		NAME = name;
		BOSS = boss;
		ADDR = addr;
		SORT = "company";
		WEBSITE = "";
		EMPLOYEE_NUM = 0;
		INCO = "";
		FORM = "";
		SALESACCOUNT = "";
		INDUSTRY = "";
		INTRODUCE = "";
	}
	

	@Override
	public String toString() {
		return "CompanyData [ID=" + ID + ", PASS=" + PASS + ", NAME=" + NAME + ", BOSS=" + BOSS + ", SORT=" + SORT
				+ "]";
	}


	// 정보수정시 사용합니다(여타 나머지부분 추가)
	public void setData(String callnum, 
							String email, String boss, String addr, String website, String employee_num,
							String inco, String form,String salesaccount,String industry,String introduce){
		CALLNUM = callnum;
		EMAIL = email;
		BOSS = boss;
		ADDR = addr;
		WEBSITE = website;
		EMPLOYEE_NUM = 0;
		INCO = inco;
		FORM = form;
		SALESACCOUNT = salesaccount;
		INDUSTRY = industry;
		INTRODUCE = introduce;
	}

	public CompanyData() {
		// 기본생성시 전부 비어있는 상태입니다
		this("","","","","","","","");	
	}

	public String getID() {
		return ID;
	}

	public String getPASS() {
		return PASS;
	}

	public String getCALLNUM() {
		return CALLNUM;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public String getCONUMBER() {
		return CONUMBER;
	}

	public String getNAME() {
		return NAME;
	}

	public String getBOSS() {
		return BOSS;
	}

	public String getWEBSITE() {
		return WEBSITE;
	}

	public int getEMPLOYEE_NUM() {
		return EMPLOYEE_NUM;
	}

	public String getINCO() {
		return INCO;
	}

	public String getFORM() {
		return FORM;
	}

	public String getSALESACCOUNT() {
		return SALESACCOUNT;
	}

	public String getINDUSTRY() {
		return INDUSTRY;
	}

	public String getINTRODUCE() {
		return INTRODUCE;
	}

	public String getSORT() {
		return SORT;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public void setPASS(String pASS) {
		PASS = pASS;
	}

	public void setCALLNUM(String cALLNUM) {
		CALLNUM = cALLNUM;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public void setCONUMBER(String cONUMBER) {
		CONUMBER = cONUMBER;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public void setBOSS(String bOSS) {
		BOSS = bOSS;
	}

	public void setWEBSITE(String wEBSITE) {
		WEBSITE = wEBSITE;
	}

	public void setEMPLOYEE_NUM(int eMPLOYEE_NUM) {
		EMPLOYEE_NUM = eMPLOYEE_NUM;
	}

	public void setINCO(String iNCO) {
		INCO = iNCO;
	}

	public void setFORM(String fORM) {
		FORM = fORM;
	}

	public void setSALESACCOUNT(String sALESACCOUNT) {
		SALESACCOUNT = sALESACCOUNT;
	}

	public void setINDUSTRY(String iNDUSTRY) {
		INDUSTRY = iNDUSTRY;
	}

	public void setINTRODUCE(String iNTRODUCE) {
		INTRODUCE = iNTRODUCE;
	}

	public void setSORT(String sORT) {
		SORT = sORT;
	}


	public String getADDR() {
		return ADDR;
	}


	public void setADDR(String aDDR) {
		ADDR = aDDR;
	}

	
}
