import java.util.Scanner;
public class Factorial {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num = 0;
		System.out.println("�������� �Է��ϼ���: ");
		num = sc.nextInt();
		System.out.println("�����:" + fac(num));
	}

	public static int fac(int n) {
		int result = 1;

		if (n == 1)
			return 1;
		else {
			result = n * fac(n - 1);
		}
		return result;
	}
}
