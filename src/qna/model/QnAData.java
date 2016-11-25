package qna.model;

public class QnAData {

	int NUM;
	String UPDAY;
	String QUEID;
	String QTITLE;
	String QUES;
	String ANSCO;
	String ANSW;
	String CHE;
	
	public QnAData(String qUEID, String qTITLE, String qUES, String ansco) {
		QUEID = qUEID;
		QTITLE = qTITLE;
		QUES = qUES;
		NUM = 0;
		UPDAY = "";
		ANSCO = ansco;
		ANSW = "";
		CHE = "";
	}
	
	public void doAnsw(String ansco, String answ){
		ANSCO = ansco;
		ANSW = answ;
		CHE = "check";
	}

	public QnAData() {
		this("","","","");
	}

	@Override
	public String toString() {
		return "QnAData [NUM=" + NUM + ", UPDAY=" + UPDAY + ", QUEID=" + QUEID + ", QTITLE=" + QTITLE + ", ANSID="
				+ ANSCO + " : " + CHE + "]";
	}

	public int getNUM() {
		return NUM;
	}

	public void setNUM(int nUM) {
		NUM = nUM;
	}

	public String getUPDAY() {
		return UPDAY;
	}

	public void setUPDAY(String uPDAY) {
		UPDAY = uPDAY;
	}

	public String getQUEID() {
		return QUEID;
	}

	public void setQUEID(String qUEID) {
		QUEID = qUEID;
	}

	public String getQTITLE() {
		return QTITLE;
	}

	public void setQTITLE(String qTITLE) {
		QTITLE = qTITLE;
	}

	public String getQUES() {
		return QUES;
	}

	public void setQUES(String qUES) {
		QUES = qUES;
	}

	public String getANSCO() {
		return ANSCO;
	}

	public void setANSCO(String aNSID) {
		ANSCO = aNSID;
	}

	public String getANSW() {
		return ANSW;
	}

	public void setANSW(String aNSW) {
		ANSW = aNSW;
	}

	public String getCHE() {
		return CHE;
	}

	public void setCHE(String cHE) {
		CHE = cHE;
	}
	
	
}
