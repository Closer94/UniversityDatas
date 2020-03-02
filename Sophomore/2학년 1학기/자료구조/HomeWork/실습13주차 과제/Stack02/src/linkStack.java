
public class linkStack {
	listNode top;
	
	public void push(int x)
	{
		listNode newNode = new listNode(x);
		
		if(top == null)
		{
			top = newNode;
		}
		else
		{
			newNode.link = top;
			top = newNode;
		}
	}
	
	public int pop()
	{
		if(top == null)
		{
			System.out.println("���̻� ����� ���� �����ϴ�.");
		}
		else
		{		
			int result = top.data;
			top = top.link;
			return result;
			
		}
		return -1;
	}
	
	public boolean isEmpty()
	{
		if(top == null)
			return true;
		else
			return false;
	}
}











