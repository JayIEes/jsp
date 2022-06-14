package xml0425;

import java.io.FileOutputStream;
import java.io.IOException;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

/**
 * Parser를 사용한 XML 생성
 * @author user
 */
public class UseXMLParser {

	
	public UseXMLParser() throws IOException {
		//1. XML 문서 객체를 생성 
		Document doc =new Document();//<? version="1.0" ?>
		
		//2. 최상위 부모 노드 생성
		Element rootNode=new Element("root"); //<root></root>
		
		//3. 자식 노드를 생성 
		Element subNode=new Element("name");
		
		//자식 노드에 노드 값 설정
		subNode.setText("테스트"); //<name>서지숙</name>
		
		//4. 자식 노드를 부모 노드에 배치
		rootNode.addContent(subNode); //<root><name>테스트</name></root>
		
		//5. 부모 노드를 문서 객체에 배치
		doc.addContent(rootNode);
		
		
		//6. 출력
		//XMLOutputter xOut=new XMLOutputter(Format.getCompactFormat());
		//XMLOutputter xOut=new XMLOutputter(Format.getRawFormat());
		XMLOutputter xOut=new XMLOutputter(Format.getPrettyFormat());
		
		//출력할 객체와 스트림을 넣어 출력 
		xOut.output(doc, System.out); //out stream을 넣어서 console로 출력
		FileOutputStream fos=new FileOutputStream("E:/dev/workspace/jsp_prj/src/main/java/xml0425/create_data.xml");
		xOut.output(doc, fos);
		
		
//		System.out.println(doc);
//		System.out.println("------------------");
//		System.out.println(rootNode);
//		System.out.println("------------------");
//		System.out.println(subNode);
	}//UseXMLParser
	
	
	
	public void createXml() {
		
	}//createXml
	
	
	
	
	public static void main(String[] args) {
		try {
			new UseXMLParser().createXml();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}//main

}//class
