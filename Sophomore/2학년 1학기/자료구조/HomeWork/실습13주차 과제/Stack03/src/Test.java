
public class Test {
	public static void main(String[] args) {
		Formula op = new Formula();
		String exp = "{(A+B)-3}*5+[{cos(x+y)+7}]";
		System.out.println(exp);
		
		if(op.testPair(exp) == true)
		{
			System.out.println("������ �ùٸ�");
		}
		else
		{
			System.out.println("������ �ùٸ��� ����");
		}
	}
}
