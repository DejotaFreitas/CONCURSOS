package heranca;

public class ClassePrincipal {

	int a = 30;

	public void metodoPrincipal(int i) {
		System.out.print(i * 6);
	}

	public static void main(String[] args) {
		ClasseBase p = new ClasseSecundaria();
		System.out.print("Resultado=");
		p.metodoPrincipal(3);
		System.out.print(",");
		System.out.print(p.a);
	}

}
