import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] a = new int[100];
		int key;
		int index;

		for (int i = 1; i <= 100; i++) {
			a[i - 1] = i;
		}
		System.out.println("0���� 100���� ã�� ���ڸ� �Է��ϼ���:");
		key = sc.nextInt();

		Binary find = new Binary();
		index = find.search(a, key);
		if (index >= 0) {
			System.out.println("á�Ҵ�!! ���!! ��ġ: a [" + index + "] �� �ֽ��ϴ�.");
		} else {
			System.out.println("0���� 100������ ������ ���� �Է����� �ʾҽ��ϴ�. ");
		}
	}
}