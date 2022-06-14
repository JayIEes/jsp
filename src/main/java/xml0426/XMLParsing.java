package xml0426;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

public class XMLParsing {

	
	public XMLParsing() throws JDOMException, IOException {
		//1. Builder ����
		SAXBuilder sb=new SAXBuilder();
		
		//2. XML������ ��θ� �Է��Ͽ� XML������ Document��ü�� ����
		File file=new File("E:/dev/workspace/jsp_prj/src/main/java/xml0425/create_data.xml");
		if(file.exists()) {
			Document doc=sb.build(file);
			System.out.println(doc);
			
			//3. �ֻ��� ��� ���
			Element rootNode=doc.getRootElement();
			System.out.println(rootNode);
			
			//4. �ڽĳ��� ���
			//Element nameNode=rootNode.getChild("name");
			//System.out.println(nameNode);
			
			List<Element> subNodes=rootNode.getChildren();
			System.out.println("�ڽĳ���� �� "+subNodes.size());
			
			//5. �Ľ��� �ڽ� ��带 �ݺ�
			Element nameNode=null;
			for(int i=0;i<subNodes.size();i++) {
				nameNode=subNodes.get(i);
				if("first_name".equals(nameNode.getName())) {
					System.out.println("���� : "+nameNode.getName()+", ��� �� : "+nameNode.getText());					
				}
			}
			
			
		}//end if
		
		
	}//XMLParsing
	
	
	public static void main(String[] args) {
		try {
			new XMLParsing();
		} catch (JDOMException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}//main

}//class
