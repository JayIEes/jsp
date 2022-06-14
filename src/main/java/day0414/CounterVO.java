package day0414;

public class CounterVO {

	private int cnt;
	private String name;
	
	public CounterVO(){
		System.out.println("Counter의 기본 생성자");
	}//CounterVO

	/**
	 * @return the cnt
	 */
	public int getCnt() {
		return cnt;
	}

	/**
	 * @param cnt the cnt to set
	 */
	public void setCnt(int cnt) {
		this.cnt+= cnt; //누적합
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
	
	
	
}//class
