import java.util.Scanner;

public class Person {

	String name = null;
	int num = 0;
	int max = 0;

	public Person(int max) { // main���� ���� max�� ������
		this.max = max;
	}

	public void insert(List[] list) {
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < max; i++) {
			list[i] = new List(); // ����Ʈ�� ���� �־��� ��ü�� ����
			System.out.println(i + "��° �л��� �̸�:");
			name = sc.next(); // �л��̸� ����
			System.out.println(i + "��° �л��� �й���:");
			num = sc.nextInt(); // �л��й� ����

			list[i].setValue(name, num); // List�� �ִ� setValue()�� �̸��� �й��� �����Ŵ.
		}
	}

	public void prt(List[] list) {
		System.out.println("����� �л� ���");
		for (int i = 0; i < max; i++) {
			System.out.println(i + "��° �л��� �̸�: " + list[i].getName() + " �й�: " + list[i].getNum());
			// setValue�� ���� List�� ����� �̸��� �й��� �ҷ���.
		}
	}
}
