package xml0425;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;



import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

import day0418.EmpDAO;
import day0418.EmpVO;

public class CreateEmpXML {

	/**
	 * �Էµ� �����͸� ����Ͽ� XML�� ����
	 * @param empData
	 * @return
	 */
	public Document createEmpXML(List<EmpVO> empData) {
		
		//1. ���� ��ü ����
		Document doc=new Document();
		
		//2. �ֻ��� �θ� ��� ����
		Element rootNode=new Element("employees");//<employees>
		
		//3.�ڽĳ�� ����
		//���� ���� ������ �����ϴ� ��� ����
		Element pubDateNode=new Element("pubDate");
		pubDateNode.setText(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		
		Element descNode=new Element("description");
		descNode.setText("��Ⱥ�� ��� ����");
		
		Element langNode=new Element("language");
		langNode.setText("kor");
		
		Element resultNode=new Element("resultFlag");
		resultNode.setText( String.valueOf(empData!=null && !empData.isEmpty()));
		
		//������ ���� ���� ��带 �θ��忡 ��ġ
		rootNode.addContent(pubDateNode);
		rootNode.addContent(descNode);
		rootNode.addContent(langNode);
		rootNode.addContent(resultNode);
		
		if(empData!=null && !empData.isEmpty()) {
			
			//��ȸ �����͸� ������ ��� ����
			Element empNode=null;
			Element empnoNode=null;
			Element enameNode=null;
			Element jobNode=null;
			Element salNode=null;
			Element hiredateNode=null;
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd EEEE HH:mm:ss");
			
			for(EmpVO eVO:empData) {
				empNode=new Element("emp"); // <emp>
				
				empnoNode=new Element("empno"); //<empno>
				empnoNode.setText(String.valueOf(eVO.getEmpno()));
				
				enameNode=new Element("ename");//<ename>
				enameNode.setText(eVO.getEname());
				
				jobNode=new Element("job");//<job>
				jobNode.setText(eVO.getJob());
				
				salNode=new Element("sal");//<sal>
				salNode.setText(String.valueOf(eVO.getSal()));
				
				
				hiredateNode=new Element("hiredate");//<hiredate>
				hiredateNode.setText(sdf.format( eVO.getHiredate()));
				
				//�ڽĳ�带 ���� empNode�� employees(�ֻ��� �θ� ���)�� ��ġ
				rootNode.addContent(empNode);
			
				//�ڽĳ�带 empNode�� ��ġ
				empNode.addContent(empnoNode);
				empNode.addContent(enameNode);
				empNode.addContent(jobNode);
				empNode.addContent(salNode);
				empNode.addContent(hiredateNode);
			}
			//��� �����͸� ���� �ֻ��� �θ� ��带 ���� ��ü�� ��ġ
			doc.addContent(rootNode);
			
			
		}//end if
		
		
		
		
		
		return doc; 
	}//createEmpXML
	
	
	
	/**
	 * ������ XML�� ����Ͽ� File�� �����.
	 * @param doc
	 * @throws IOException
	 */
	public void createFileEmpXML(Document doc, String fileName) throws IOException{
		XMLOutputter xOut=new XMLOutputter(Format.getPrettyFormat());
		//xOut.output(doc, System.out);
		File saveDir=new File("E:/dev/workspace/jsp_prj/src/main/webapp/xml0425");
		if(!saveDir.exists()) {
			saveDir.mkdirs();
		}
		FileOutputStream fos=null;
		
		try {
			fos=new FileOutputStream(saveDir.getAbsolutePath()+"/"+fileName);
			xOut.output(doc, fos);
		}finally {
			if(fos!=null) {fos.close();}//end if
		}//end finally
	}//createFileEmpXML
	
	
	
	
	public static void main(String[] args) throws SQLException, IOException {
		EmpDAO d=new EmpDAO();
		CreateEmpXML c=new CreateEmpXML();
		Document doc=c.createEmpXML(d.selectAllEmp());
		c.createFileEmpXML(doc,"emp.xml");
	}
	
	
}//class







