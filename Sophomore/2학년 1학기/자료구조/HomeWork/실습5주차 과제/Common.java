import java.util.Scanner;

public class Common {
	public static void main(String[] args) {
		int a, b, max, min;

		Scanner sc = new Scanner(System.in);
		System.out.println("�ΰ��� ������ �Է��ϼ���: ");
		a = sc.nextInt();
		b = sc.nextInt();
		max = Big(a, b);
		System.out.println(a + " �� " + b + "�� �ִ�����: " + max);
		min = Small(a, b, max);
		System.out.println(a + " �� " + b + "�� �ּҰ����: " + min);
	}

	public static int Big(int a, int b) {
		if (a > b) {
			if (b == 0)
				return a;

			return Big(b, a % b);
		} else {
			if (a == 0)
				return b;
			return Big(a, b % a);
		}
		// ȣ����
		// 192 72 �� �ִ�����
		// 192 = 72*2 + 48
		// 72 = 48*1 + 24
		// 48 = 24*2 +0
		// b�� 0 �̴ϱ� stop a�� �ִ����� 24

	}

	public static int Small(int a, int b, int max) {
		return max * (a / max) * (b / max);
	}
	// �ִ������� �˶� �ּҰ������ ���ϴ� ���
	// �ִ�����*(ù��° �Է� ��/�ִ�����)*(�ι�° �Է� ��/�ִ����� )= �ּҰ����
}
