
public class Test {
	public static void main(String[] args) {
		Formula op = new Formula();
		String exp = "((A*B)-(C/D))";
		System.out.println(exp);
		
		System.out.println("===����������===");
		op.testPair(exp);
		
	}
}
