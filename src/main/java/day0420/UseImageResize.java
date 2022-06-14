package day0420;

import java.io.File;

import kr.co.sist.util.img.ImageResize;

/**
 * sist_util.jar에서 제공하는 이미지 크기를 변경하여 생성하는 일의 클래스를 사용. 
 * @author user
 */
public class UseImageResize {

	
	
	public static void main(String[] args) {

		//1. 변경할 이미지 파일에 접근
		File file=new File("E:/dev/workspace/jsp_prj/src/main/java/day0420/daum_logo.png");
		
		//2. 파일이 존재하면 
		if(file.exists()) {
			ImageResize.resizeImage(file.getAbsolutePath(), 400, 200);
			System.out.println("이미지가 생성되었습니다.");
		}//end if
		
				
		
	}//main

}//class
