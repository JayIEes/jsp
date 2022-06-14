package kr.co.sist.vo;

public class UploadFileVO {
	private int num;
	private String name,	original_name,	file_system_name,	ip_address,	input_date;
	
	
	public UploadFileVO() {
		
	}
	
	
	public UploadFileVO(int num, String name, String original_name, String file_system_name, String ip_address,
			String input_date) {
		super();
		this.num = num;
		this.name = name;
		this.original_name = original_name;
		this.file_system_name = file_system_name;
		this.ip_address = ip_address;
		this.input_date = input_date;
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
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the original_name
	 */
	public String getOriginal_name() {
		return original_name;
	}
	/**
	 * @param original_name the original_name to set
	 */
	public void setOriginal_name(String original_name) {
		this.original_name = original_name;
	}
	/**
	 * @return the file_system_name
	 */
	public String getFile_system_name() {
		return file_system_name;
	}
	/**
	 * @param file_system_name the file_system_name to set
	 */
	public void setFile_system_name(String file_system_name) {
		this.file_system_name = file_system_name;
	}
	/**
	 * @return the ip_address
	 */
	public String getIp_address() {
		return ip_address;
	}
	/**
	 * @param ip_address the ip_address to set
	 */
	public void setIp_address(String ip_address) {
		this.ip_address = ip_address;
	}
	/**
	 * @return the input_date
	 */
	public String getInput_date() {
		return input_date;
	}
	/**
	 * @param input_date the input_date to set
	 */
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	@Override
	public String toString() {
		return "UploadFileVO [num=" + num + ", name=" + name + ", original_name=" + original_name
				+ ", file_system_name=" + file_system_name + ", ip_address=" + ip_address + ", input_date=" + input_date
				+ "]";
	}
	
	
}
