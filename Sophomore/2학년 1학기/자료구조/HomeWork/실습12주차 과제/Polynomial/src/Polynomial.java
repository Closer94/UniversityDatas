 class Polynomial
 {
	 polyNode firstNode;
	 
	 public boolean isZero()
	 {
		 if(firstNode != null)
			 return false;
		 else
			 return true;
			 
	 }
	 
	 public void addTerm(int gesu, int jisu)
	 {
		 polyNode newNode = new polyNode(gesu, jisu);
		
		 if(firstNode == null) // ���� �ƹ��͵� ������
		 {
			 firstNode = newNode;
		 }
		 else // ���� ���� �� ���
		 {
			 polyNode p = firstNode;
			 polyNode q = null;
			 boolean istf = false;
			 while(p.link != null)
			 {
				 if(p.jisu > newNode.jisu)
				 {
					 q = p;
					 p = p.link;
				 }
				 else if(p.jisu < newNode.jisu)
				 {
					 istf = true;
					 break;
				 }
			 }
			 
			 if(istf == true)
			 {
				 if(p == firstNode && (p.jisu > newNode.jisu)) // p�� ù��° ����϶�, ���ε��� ����� ������  ù��° ����� �������� ������
				 {
					 newNode.link = p.link;
					 p.link = newNode;
				 }
				 else if(p == firstNode && (p.jisu < newNode.jisu)) // ������ ù��° ��庸�� ū ���� ��� ������
				 {
					 newNode.link = p;
					 firstNode = newNode;
				 }
				 else
				 {
					 q.link = newNode;
					 newNode.link = p;
				 }
			 }
			 
			 else if(istf == false) // ���� ���� ���� ��� ������ ������ ���� �̵�
			 {
				 if(p.jisu > newNode.jisu)
				 {
					 p.link = newNode;
				 }
				 else if(p.jisu < newNode.jisu)
				 {
					 q.link = newNode;
					 newNode.link = p;
				 }
				
			 } 
			 
		 }
	 }
	 
	 public void print()
	 {
		 polyNode p = firstNode;
		 
		 while(p.link != null)
		 {
			 System.out.print(p.gesu + "[" + p.jisu + "]");
			 System.out.print("+");
			 p = p.link;
		 }
		 System.out.print(p.gesu + "[" + p.jisu + "]");
	 }
	 
	 public void delTerm(int jisu)
	 {
		 polyNode p = firstNode;
		 polyNode q = null;
		 
		 if(p.jisu == jisu)
		 {
			 firstNode = p.link;
		 }
		 else
		 {
			 while(p.link != null)
			 {
				 if(p.jisu == jisu)
				 {
					 q.link = p.link;
					 break;
				 }
				 q = p;
				 p = p.link;
			 }
			 if(p.jisu == jisu)
			 {
				 q.link = null;
			 }
		 }
	 }
	 
	 public Polynomial polyadd(Polynomial t)
	 {
		 Polynomial result = new Polynomial();
		 polyNode p1 = firstNode;
		 polyNode p2 = t.firstNode;
		 
		 while(p1.link != null && p2.link != null)
		 {
		 if(p1.jisu == p2.jisu)
		 {
			 result.addTerm(p1.gesu + p2.gesu, p1.jisu);
			 p1 = p1.link;
			 p2 = p2.link;
		 }
		 
		 else if(p1.jisu > p2.jisu)
		 {
			 result.addTerm(p1.gesu, p1.jisu);
			 p1 = p1.link;
		 }
		 else if(p1.jisu < p2.jisu)
		 {
			 result.addTerm(p2.gesu, p2.jisu);
			 p2 = p2.link;
		 }
		 
		 }
		 if(p1.link != null)
		 {
			 while(p1.link != null)
			 {
				 result.addTerm(p1.gesu, p1.jisu);
				 p1 = p1.link;
			 }
			 result.addTerm(p1.gesu, p1.jisu);
		 }
		 else if(p2.link != null)
		 {
			 while(p2.link != null)
			 {
				 result.addTerm(p2.gesu, p2.jisu);
				 p2 = p2.link;
			 }
			 result.addTerm(p2.gesu, p2.jisu);
		 }
		 return result;
	 }
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 