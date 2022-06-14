package day0413;

import java.util.Arrays;

/**
 * @author user
 *web parameter를 받기 위한 VO
 *HTML Form control에 name 속성의 이름과 instance variable의 이룸아 반드시 같아야 한다.
 *생성자 안만들어됨 (만들때에는 오버로딩)
 */
public class ParamVO {
private String text,password,hid,date,file,gender,domain,flag;
private String[] loc;
private int age;


public ParamVO() {
	System.out.println("ParamVO의 기본 생성자");
}



public ParamVO(String text, String password, String hid, String date, String file, String gender, String domain,
		String flag, String[] loc, int age) {
	System.out.println("ParamVO의 오버로딩된 생성자");
	this.text = text;
	this.password = password;
	this.hid = hid;
	this.date = date;
	this.file = file;
	this.gender = gender;
	this.domain = domain;
	this.flag = flag;
	this.loc = loc;
	this.age = age;
}



/**
 * @return the text
 */
public String getText() {
	return text;
}
/**
 * @param text the text to set
 */
public void setText(String text) {
	this.text = text;
}
/**
 * @return the password
 */
public String getPassword() {
	return password;
}
/**
 * @param password the password to set
 */
public void setPassword(String password) {
	this.password = password;
}
/**
 * @return the hid
 */
public String getHid() {
	return hid;
}
/**
 * @param hid the hid to set
 */
public void setHid(String hid) {
	this.hid = hid;
}
/**
 * @return the date
 */
public String getDate() {
	return date;
}
/**
 * @param date the date to set
 */
public void setDate(String date) {
	this.date = date;
}
/**
 * @return the file
 */
public String getFile() {
	return file;
}
/**
 * @param file the file to set
 */
public void setFile(String file) {
	this.file = file;
}
/**
 * @return the gender
 */
public String getGender() {
	return gender;
}
/**
 * @param gender the gender to set
 */
public void setGender(String gender) {
	this.gender = gender;
}
/**
 * @return the domain
 */
public String getDomain() {
	return domain;
}
/**
 * @param domain the domain to set
 */
public void setDomain(String domain) {
	this.domain = domain;
}
/**
 * @return the flag
 */
public String getFlag() {
	return flag;
}
/**
 * @param flag the flag to set
 */
public void setFlag(String flag) {
	this.flag = flag;
}
/**
 * @return the loc
 */
public String[] getLoc() {
	return loc;
}
/**
 * @param loc the loc to set
 */
public void setLoc(String[] loc) {
	this.loc = loc;
}
/**
 * @return the age
 */
public int getAge() {
	return age;
}
/**
 * @param age the age to set
 */
public void setAge(int age) {
	this.age = age;
}

@Override
public String toString() {
	return "ParamVO [text=" + text + ", password=" + password + ", hid=" + hid + ", date=" + date + ", file=" + file
			+ ", gender=" + gender + ", domain=" + domain + ", flag=" + flag + ", loc=" + Arrays.toString(loc)
			+ ", age=" + age + "]";
}



}
