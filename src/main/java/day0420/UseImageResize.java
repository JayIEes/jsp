package day0420;

import java.io.File;

import kr.co.sist.util.img.ImageResize;

/**
 * sist_util.jar���� �����ϴ� �̹��� ũ�⸦ �����Ͽ� �����ϴ� ���� Ŭ������ ���. 
 * @author user
 */
public class UseImageResize {

	
	
	public static void main(String[] args) {

		//1. ������ �̹��� ���Ͽ� ����
		File file=new File("E:/dev/workspace/jsp_prj/src/main/java/day0420/daum_logo.png");
		
		//2. ������ �����ϸ� 
		if(file.exists()) {
			ImageResize.resizeImage(file.getAbsolutePath(), 400, 200);
			System.out.println("�̹����� �����Ǿ����ϴ�.");
		}//end if
		
				
		
	}//main

}//class
