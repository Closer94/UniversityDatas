import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int max;
		System.out.println("�л� ������ ������ ������ �� �� �ʿ��մϱ�?");
		max = sc.nextInt();

		List list[] = new List[max]; // list �迭 ��ü ����
		Person per = new Person(max); // per ��ü ����

		per.insert(list); // per�� insert �޼ҵ忡 ����Ʈ�� �־���
		per.prt(list); // per�� ����Ʈ�� ����� �ִ� ������ ����Ʈ ����.
	}
}
