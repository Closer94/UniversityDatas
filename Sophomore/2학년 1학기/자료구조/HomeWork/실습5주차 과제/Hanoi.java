import java.util.Scanner;

public class Hanoi {
	public void hanoi(int n, char a, char b, char c) {
		if (n == 1) {
			System.out.println(n + "��° ������ " + a + "���� " + c + "�� �̵�");
		} else {
			hanoi(n - 1, a, c, b);
			System.out.println(n + "��° ������" + a + "����" + c + "�� �̵�");
			hanoi(n - 1, b, a, c);
		}
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n;

		System.out.print("��� ž�� �����Ұ��Դϱ�?");
		n = sc.nextInt();
		Hanoi ex = new Hanoi();
		ex.hanoi(n, 'A', 'B', 'C');
	}
}

// �ϳ��� ����!!

// ó�� ����(3 A B C)���� A -> B(ù��° -> �ι�°), B -> C(�ι�° -> ����°)�� ��� �ٲ��
// 3 A B C �������� A�� �̵��� ��� C�� �̵��� ��ǥ�� ���ϰ�, 2��° ž�� �����̴� ���� ����
// ������ ù -> ��, �� -> �� �̹Ƿ� 3 A B C ���� ù -> �� �� 2 A C B, �� -> �� �� 2 B A C �̴�.
// 2 A C B ������ ù -> �� �� 1 A B C �̰� �� -> �� �� 1 C A B �̴�.
// ���� �߿��Ѱ�  "3 A B C �������� A�� �̵��� ��� C�� �̵��� ��ǥ" �ΰ��̴�. �� �� ù��, �Ѽ��̴�.