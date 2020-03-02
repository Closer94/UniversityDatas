
public class DList {

	DNode head;

	public void Insert(DNode p, int val) {
		DNode newNode = new DNode(val);

		if (head == null) { // ��ũ�� ���� �ƹ��͵� ������
			head = newNode; // head�� ���ο�� �ִ´�
			head.Pre_link = head; // head�� �����ּҰ��� �ڱ� �ڽ��� ����ġ�� �Ѵ�.
			head.Next_link = head; // head�� �����ּҰ��� �ڱ� �ڽ��� ����ġ�� �Ѵ�. �ֳĸ� ������ Ư����
									// ���� �����Ƿ�
		} 
		else if (p == null) { // p����� �������� ��带 �߰��Ϸ����ߴµ� ���� p��尡 ������
			p = newNode; // p�� ���ο� ���� �Է��Ѵ�.
			p.Pre_link = head.Next_link; // p(���ο)�� �����ּҸ� head�� �����ּҸ� ����Ű�� �Ѵ�.
			p.Next_link = head; // p(���ο)�� �����ּҸ� head�� ����Ű���Ѵ�.
			head.Next_link = p.Pre_link; // head�� �����ּҿ� p(���ο)�� �����ּҸ� ����Ű���Ѵ�.
			head.Pre_link = p; // head�� �����ּҴ� p(���ο)�� ����Ű���Ѵ�.

		}
		else if (p.rlink == head){
			newNode.rlink = p.rlink;
			p.rlink.llink = newNode;
			newNode.llink = p;
			p.rlink = newNode;
			

		}
		else {
			newNode.Next_link = p.Next_link; // ���ο� ����� �����ּҸ� p�� �������� ����Ű���Ѵ�.
			newNode.Pre_link = p; // ���ο� ����� �����ּҿ� p�� ����Ű���Ѵ�.
			p.Next_link.Pre_link = newNode; // newNode�� �����ּ��� ��忡�� ���� �ּҸ� ���ο� ��带
			// ����Ű���Ѵ�.
			p.Next_link = newNode; // p�� �����ּҸ� ���ο� ��带 ����Ű�� �Ѵ�.
		}
	}

	public void Delete(DNode p) {
		if (p == null) { // ������ ��� p�� ���� ���
			System.out.println("������ ���� ���������ʽ��ϴ�.");
		} else if (p == head) // ������ ��� p�� head�� ���
		{
			head = p.Next_link; // head�� p�� �����ּ��� ���� �����Ѵ�.
			p.Next_link.Pre_link = p.Pre_link; // p�� �����ּ��� ����� �����ּҸ� �����
													// �����ּҸ� �־��ش�.
			p.Pre_link.Next_link = p.Next_link; // p�� �����ּ��� ����� �����ּҸ� p�� �����ּҸ�
												// �־��ش�.

		} 
		else if (p.Next_link == head) // p�� �ؽ�Ʈ��ũ�� ����϶�, => p�� ������ ����϶�
		{
			p.Pre_link.Next_link = head; // p�� �����ּ��� ����� �����ּҸ� head�� ����Ų��.
			head.Pre_link = p.Pre_link; // head�� �����ּҴ� p�� �����ּҸ� �־��ش�.
		} 
		else {
			p.Pre_link.Next_link = p.Next_link; // p�� �����ּ��� ��忡�� �����ּҸ� p�� �����ּҸ� �־��ش�.
			p.Next_link.Pre_link = p.Pre_link; // p�� �����ּ��� ��忡�� �����ּҿ� p�� �����ּҸ� �־��ش�.
		}
	}

	public void Print() {
		System.out.println("�� ���: ");
		if (head == null) {
			System.out.println("����� ���� �����ϴ�.");
		} else {
			DNode p = head;
			while (p.Next_link != head) {
				System.out.println(p.data);
				p = p.Next_link;
			}
			System.out.println(p.data);
		}
		System.out.println("");
	}

	public static void main(String[] args) {
		DList dl = new DList();
		dl.Insert(dl.head, 10);
		dl.Insert(dl.head, 20);
		dl.Insert(dl.head.Next_link, 30);
		dl.Insert(dl.head.Next_link.Next_link, 40);
		dl.Print();
		System.out.println("Delete: " + dl.head.Next_link.data);
		dl.Delete(dl.head.Next_link);
		dl.Print();
	}
}
