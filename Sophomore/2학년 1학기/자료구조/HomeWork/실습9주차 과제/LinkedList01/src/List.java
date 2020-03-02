
public class List {
	Node head; // ��ü �������ϰ� Node head�� �ϸ� �׸����� ��� �Ǵ���?

	public void addFirst(int val) {
		Node newNode = new Node(val);
		if (head == null) { // head �� ���(null)������
			head = newNode;
		} else {
			newNode.link = head;
			head = newNode;

		}
	}

	public void addLast(int val) {
		Node newNode = new Node(val);
		if (head == null) { 
			head = newNode;
		} else if (head != null) {
			Node temp;
			temp = head;
			while (temp.link != null) {
				temp = temp.link;
			}
			// while���� ������ temp�� �������� Node�� ����Ű�� �ȴ�.
			// ������ Node�� ��ũ���ٰ� newNode�� �Է½����ش�.
			temp.link = newNode;
		}
	}

	public void Print() {
		Node temp = head; // Node��� ������ temp�� head���� Node��� ��ü�� ���������Ƿ� 
						 // Node temp = head�� �ϸ� temp�� head�� ���� ����Ű�Եȴ�(reference)
		while (temp.link != null) {
			System.out.println(temp.data);
			temp = temp.link;
		}
		System.out.println(temp.data); // ���⿡ temp�� �������ϰ� ����� ���� ������ Node���̴�.
									  //������ Node������ ����� ���־���ϱ⶧���� while�� �ۿ��� ����� ���ش�.
	}

	public void Insert(Node p, int val) // �Ű����� Node p �� ������ head.link�� ������ Node ��ü������
	{
		Node newNode = new Node(val);
		if (p == null) {
			p.link = newNode;
		} else {
			newNode.link = p.link;
			p.link = newNode;
		}
	}

	public void Delete(Node p) {
		if (p.link == null) {
			System.out.println("������ ���� �����ϴ�.");
		} else {
			p.link = p.link.link;

		}
	}

	public static void main(String[] args) {
		List test = new List();
		test.addFirst(10); // head�� ������.
		test.addLast(20);
		test.addFirst(30);
		test.Print();
		System.out.println("");
		test.Insert(test.head.link, 40);
		test.Delete(test.head.link);
		test.Print();
	}
}
