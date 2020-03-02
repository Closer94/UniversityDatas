public class Polynomial {
	private int MAX;
	private Term terms[];
	private int noOfTerms; // = size; ��ü����(= ���Ұ���)
	int degree; // �ְ������� �����ϴ� ����

	public Polynomial() {
		int MAX = 10;
		terms = new Term[MAX];
		noOfTerms = 0;
		degree = 0;

	}

	public boolean ispZero() {
		if (noOfTerms > 0)
			return false;
		else
			return true;
	}

	public int maxJisu() {
		for (int i = 0; i < noOfTerms; i++) {
			if (degree < terms[i].getJisu())
				degree = terms[i].getJisu();
		}
		return degree;
	}

	public void addTerm(int gesu, int jisu) {
		terms[noOfTerms] = new Term(gesu, jisu);
		// terms �迭�� ��ü����.
		noOfTerms = noOfTerms + 1;
	}

	public void delTerm(int jisu) {
		for (int i = 0; i < noOfTerms; i++) {
			if (terms[i].getJisu() == jisu) {
				terms[i].setJisu(0);
				terms[i].setGesu(0);
				for (int k = i + 1; k < noOfTerms; k++)
					terms[k - 1] = terms[k];
			}
		}

		noOfTerms = noOfTerms - 1;
	}

	public void Print() {
		for (int i = 0; i < noOfTerms; i++) {
			System.out.print(terms[i].getGesu() + "[" + terms[i].getJisu() + "]");
			if (i < noOfTerms - 1)
				System.out.print("+");
		}
		System.out.println("");
	}

	public int findIndex(int jisu) {
		for (int i = 0; i < noOfTerms; i++) {
			if (terms[i].getJisu() == jisu)
				return terms[i].getGesu();
		}
		return 0;
	}

	public int findNextIndex(int jisu) {
		for (int i = 0; i < noOfTerms; i++) {
			if (terms[i].getJisu() == jisu)
				return terms[i + 1].getJisu();
		}
		return 0;
	}

	public Polynomial polyAdd(Polynomial p) {
		int p1index = 0, p2index = 0, reindex = 0;
		Polynomial result = new Polynomial(); 
		while (p1index < noOfTerms && p2index < p.noOfTerms) {
			if (p.terms[p2index].getJisu() > terms[p1index].getJisu()) {
				result.terms[reindex] = new Term(p.terms[p2index].getGesu(), p.terms[p2index].getJisu());
				p2index++;
				reindex++;
			} else if (p.terms[p2index].getJisu() < terms[p1index].getJisu()) {
				result.terms[reindex] = new Term(terms[p1index].getGesu(), terms[p1index].getJisu());
				p1index++;
				reindex++;
			} else if (p.terms[p2index].getJisu() == terms[p1index].getJisu()) {
				result.terms[reindex] = new Term(terms[p1index].getGesu() + p.terms[p2index].getGesu(),
						p.terms[p2index].getJisu());
				p1index++;
				p2index++;
				reindex++;
			}
		}
		
		// �񱳸� ���ϰ� ���� ���� ������ֱ� ���ؼ� �Ʒ��� �ҽ��� �̿�.
		// ���� ��� ���� �ΰ��� ���׽��� ���ϸ� ���߿��� 3[0]�� ���ԵǴµ� �װ��� ����ϴ� �ҽ��̴�.
		
		if(terms[p1index] != null)
		{
			while(terms[p1index] != null)
			{
				result.terms[reindex] = new Term(terms[p1index].getGesu(), terms[p1index].getJisu());
				reindex++;
				p1index++;
			}
		}
		else if(p.terms[p2index] != null)
		{
			while(p.terms[p2index] != null)
			{
				result.terms[reindex] = new Term(p.terms[p2index].getGesu(), p.terms[p2index].getJisu());
				reindex++;
				p2index++;
			}
		}
		
		result.noOfTerms = reindex; // Polynomial �� �Ӽ��� ���� result�� noOfTerms�� ����
									// �������־�߸�
									// Print�Ҷ� ������ ����� ���� �� �� �ִ�.
									// �׷��� result�� noOfTerms(result.noOfTerms)��
									// reindex�� �־��ش�.

		return result;

	}

	public Polynomial Mult(Polynomial p) {
		Polynomial result = new Polynomial();
		Polynomial temp = new Polynomial();
		int teGesu, teJisu;
		for (int i = 0; i < noOfTerms; i++) {
			for (int j = 0; j < p.noOfTerms; j++) {
				teGesu = terms[i].getGesu() * p.terms[j].getGesu();
				teJisu = terms[i].getJisu() + p.terms[j].getJisu();
				temp.terms[j] = new Term(teGesu, teJisu);
			}
			temp.noOfTerms = p.noOfTerms;
			result = result.polyAdd(temp);
			}
		return result;
	}
}
