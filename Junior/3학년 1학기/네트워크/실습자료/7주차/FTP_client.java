package week7;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;

public class FTP_client {
	private static final String sServer = "210.115.227.106"; //���� ������
	private static final int iPort = 21;
	private static final String sId = "user1"; //����� ���̵�
	private static final String sPassword = "123456"; //��й�ȣ

	private static final String sUpDir = "C:/FTP_folder";
	private static final String sDownDir = "C:/test";

	FTPClient ftpClient;

	public FTP_client() {
		ftpClient = new FTPClient();
	}
	 
	 
	public static void main(String[] args) {
		FTP_client obj = new FTP_client();
		obj.connect();
		obj.login();
		FTPFile[] list = obj.list();
		for(int i=0; i < list.length;i++) {
			System.out.println(obj.list()[i].toString());
		}
		obj.get("SM1646.pdf", "test.pdf");
	}   
	
	// ������ ����
	private void connect() {
		try {
			ftpClient.connect(sServer, iPort);
			int reply;
			// ���� �õ���, �����ߴ��� ���� �ڵ� Ȯ��
			reply = ftpClient.getReplyCode();
	    
			if(!FTPReply.isPositiveCompletion(reply)) {
				ftpClient.disconnect();
				System.out.println("�����κ��� ������ �źδ��߽��ϴ�");
				}
	    }catch (IOException ioe) {
	    	if(ftpClient.isConnected()) {
			    try {
			    	ftpClient.disconnect();
			    }
			    catch(IOException f) {
			    }	
	    }
	    System.out.println("������ ������ �� �����ϴ�");
	   }
	}
	   
	 // ������ �н������ �α���
	private boolean login() {
		try {
	    this.connect();
	    return ftpClient.login(sId, sPassword);
		}
		catch (IOException ioe){
			System.out.println("������ �α��� ���� ���߽��ϴ�");
		}
	  return false;
	 }
	   
	 // �����κ��� �α׾ƿ�
	private boolean logout() {
		 try {
			 	return ftpClient.logout();
		 }catch (IOException ioe) {
			 	System.out.println("�α׾ƿ��� ���� ���߽��ϴ�");
		 }
		 return false;
	 }
	   
	 // FTP�� ls ���, ��� ���� ����Ʈ�� �����´�
	private FTPFile[] list() {
		FTPFile[] files = null;
		try {
			files = this.ftpClient.listFiles();
			return files;
		}catch (IOException ioe) {
			System.out.println("�����κ��� ���� ����Ʈ�� �������� ���߽��ϴ�");
		}
		return null;
	}

	 // ������ ���� �޴´�
	 private boolean get(String source, String name) {
		 boolean flag = false;
		 OutputStream output = null;
		 try {
			 // �޴� ���� ���� �� ��ġ�� �� �̸����� ���� �����ȴ�
			 File local = new File(sDownDir, name);
			 output = new FileOutputStream(local);
		 }catch (FileNotFoundException fnfe) {
			 System.out.println("�ٿ�ε��� ���丮�� �����ϴ�");
			 return flag;
	  }
	  
		 File file = new File(source);
		 try {
			 if (ftpClient.retrieveFile(source, output)) {
				 flag = true;
			 }
		 }catch (IOException ioe) {
			 System.out.println("������ �ٿ�ε� ���� ���߽��ϴ�");
		 }
		 return flag;
	 }

	 // ������ ���� �޴´� ���� method �� return ���� �޶� �ϳ� �� �������
	private File getFile(String source, String name) {
		OutputStream output = null;
		File local = null;
		try {
			// �޴� ���� ����
			local = new File(sDownDir, name);
			output = new FileOutputStream(local);
		}catch (FileNotFoundException fnfe) {
			System.out.println("�ٿ�ε��� ���丮�� �����ϴ�");
		}
		File file = new File(source);
		try {
			ftpClient.retrieveFile(source, output);
		}catch (IOException ioe) {
			System.out.println("������ �ٿ�ε� ���� ���߽��ϴ�");
		}
		return local;
	}

	 // ������ ���� �Ѵ�
	 private boolean put(String fileName, String targetName) {
		 boolean flag = false;
		 InputStream input = null;
		 File local = null;
		 try {
			 local = new File(sUpDir, fileName);
			 input = new FileInputStream(local);
		 }catch(FileNotFoundException e) {
			 return flag;
		 }

		 try {
			 // targetName ���� ������ �ö󰣴�\
			 if(ftpClient.storeFile(targetName, input)) {
				 flag = true;
			 }
		 }catch(IOException e) {
			 System.out.println("������ �������� ���߽��ϴ�");
			 return flag;
		 }
		 return flag;
	 }

	 // ���� ���丮 �̵�
	private void cd(String path) {   
		try {
		ftpClient.changeWorkingDirectory(path);
		}catch (IOException ioe) {
			System.out.println("������ �̵����� ���߽��ϴ�");
		}
	}

	 // �����κ��� ������ �ݴ´�
	private void disconnect() {
	    try {
	    	ftpClient.disconnect();
	    }catch (IOException ioe) {
	    	ioe.printStackTrace();
	    }
	}	
	   
	private void setFileType(int iFileType) {
		try {
			ftpClient.setFileType(iFileType);
		}catch(Exception e) {
			System.out.println("���� Ÿ���� �������� ���߽��ϴ�");
		}      
	}
	
}
