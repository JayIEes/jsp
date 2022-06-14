package xml0425;

import java.io.FileOutputStream;
import java.io.IOException;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

/**
 * Parser�� ����� XML ����
 * @author user
 */
public class UseXMLParser {

	
	public UseXMLParser() throws IOException {
		//1. XML ���� ��ü�� ���� 
		Document doc =new Document();//<? version="1.0" ?>
		
		//2. �ֻ��� �θ� ��� ����
		Element rootNode=new Element("root"); //<root></root>
		
		//3. �ڽ� ��带 ���� 
		Element subNode=new Element("name");
		
		//�ڽ� ��忡 ��� �� ����
		subNode.setText("�׽�Ʈ"); //<name>������</name>
		
		//4. �ڽ� ��带 �θ� ��忡 ��ġ
		rootNode.addContent(subNode); //<root><name>�׽�Ʈ</name></root>
		
		//5. �θ� ��带 ���� ��ü�� ��ġ
		doc.addContent(rootNode);
		
		
		//6. ���
		//XMLOutputter xOut=new XMLOutputter(Format.getCompactFormat());
		//XMLOutputter xOut=new XMLOutputter(Format.getRawFormat());
		XMLOutputter xOut=new XMLOutputter(Format.getPrettyFormat());
		
		//����� ��ü�� ��Ʈ���� �־� ��� 
		xOut.output(doc, System.out); //out stream�� �־ console�� ���
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
