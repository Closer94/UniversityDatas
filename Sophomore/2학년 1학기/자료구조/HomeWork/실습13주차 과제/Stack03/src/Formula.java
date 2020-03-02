
public class Formula {

	
	public boolean testPair(String data)
	{
		boolean result = true;
		int i = 0;
		char ch;
		Node stack = new Node();
		while(i < data.length())
		{
			ch = data.charAt(i); // ���ڿ��� ���ڷ� ����� �ǽ�
			if(ch == '[')
			{
				stack.push(ch);
			}
			else if(ch == '{')
			{
				stack.push(ch);
			}
			else if(ch == '(')
			{
				stack.push(ch);
			}
			
			else if(ch == ']')
			{
				if(stack.pop() != '['){
					result = false;
					return result;
				}
			}
			else if(ch == '}')
			{
				if(stack.pop() != '{'){
					result = false;
					return result;
				}
			}
			else if(ch == ')')
			{
				
				if(stack.pop() != '('){
					result = false;
					return result;
				}
			}
			i = i + 1;
		}
		if(stack.top != null) // ���࿡ ���ÿ� ��ȣ�� �ִ� ��쿡�� ������ �ùٸ��� ���� ���̱� ������ false�� ����
		{
			return false;
			
		}
		return result;
	}
}
