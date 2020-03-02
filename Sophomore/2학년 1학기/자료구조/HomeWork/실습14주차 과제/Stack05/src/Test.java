
public class Test {

	public void testPair(String exp) {
		Node stack = new Node();
		
		int i= 0;
		char ch;
		while (i < exp.length()) {

			ch = exp.charAt(i);

			if (ch == '(' || ch == '{' || ch == '[') 
				stack.push(ch);
			else if (ch == '+' || ch == '-') // + - �����ڰ� ����
			{ 
				if(stack.top != null && (stack.top.data == '*' || stack.top.data == '/')) // ���� * �� / �� ���ÿ� ������ �ȿ� �ִ� �����ڴ� ��� ���´�.
				{
					while(stack.top != null && (stack.top.data != '(' && stack.top.data != '{' && stack.top.data != '['))
						System.out.print(stack.pop());
					
					stack.push(ch); //�� �� ���¿� ���� push�� ���ش�.
				}
				else
					stack.push(ch);
			}
			else if (ch == '*' || ch == '/')
			{
				stack.push(ch);
			}
			else if (ch >= 'A' && ch <= 'Z')
				System.out.print(ch);
			else if (ch == ')' || ch == '}' || ch == ']')
			{
				while (stack.top.data != '(' && stack.top.data != '{' && stack.top.data != '[') { 
					System.out.print(stack.pop());
				}
				stack.pop();
			} 
			
			i = i + 1;
		}
		while (stack.top != null)
		{
			System.out.print(stack.pop());
		}
		
	}
}
