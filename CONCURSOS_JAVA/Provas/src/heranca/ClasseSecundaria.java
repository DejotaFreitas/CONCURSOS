package heranca;

public class ClasseSecundaria extends ClasseBase {

	int a = 20;
	
	public ClasseSecundaria() {
		System.out.println("ClasseSecundaria "+a);
	}


	public void metodoPrincipal(int i) {
		System.out.print(i * 4);
	}

}
