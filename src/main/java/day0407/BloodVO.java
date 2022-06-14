package day0407;

public class BloodVO {
private String imgPath,url,info;
private int num;

public BloodVO() {
	
}

public BloodVO(String imgPath, String url, String info, int num) {
	super();
	this.imgPath = imgPath;
	this.url = url;
	this.info = info;
	this.num = num;
}

/**
 * @return the imgPath
 */
public String getImgPath() {
	return imgPath;
}

/**
 * @param imgPath the imgPath to set
 */
public void setImgPath(String imgPath) {
	this.imgPath = imgPath;
}

/**
 * @return the url
 */
public String getUrl() {
	return url;
}

/**
 * @param url the url to set
 */
public void setUrl(String url) {
	this.url = url;
}

/**
 * @return the info
 */
public String getInfo() {
	return info;
}

/**
 * @param info the info to set
 */
public void setInfo(String info) {
	this.info = info;
}

/**
 * @return the num
 */
public int getNum() {
	return num;
}

/**
 * @param num the num to set
 */
public void setNum(int num) {
	this.num = num;
}


}
