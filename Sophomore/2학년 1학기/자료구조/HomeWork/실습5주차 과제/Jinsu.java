import java.util.Scanner;

public class Jinsu {
	public static void main(String[] args) {
		int num;
		int prt;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("2������ �˰����ϴ� 10������ ���� �Է��ϼ���:");
		num = sc.nextInt();
		System.out.print("[" + num + "]�� 2���� ǥ��: ");
		jin(num);
	}
	
	public static int jin(int n)
	{
		int rest;
		
		if(n > 0){
		rest = n % 2;
		n = n / 2;
		jin(n);
		System.out.print(rest);
		}
		return 0;
	}
}