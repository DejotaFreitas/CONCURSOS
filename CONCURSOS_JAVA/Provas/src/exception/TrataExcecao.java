package exception;

class MinhaException extends Exception {}
class OutraException extends RuntimeException {}

public class TrataExcecao {
	
	public void metodo() throws MinhaException {
		throw new MinhaException();
	}

	public static void main(String args[]) {
		int a, b, c, d;
		a = b = c = d = 0;
		try {
			new TrataExcecao().metodo();
			a++;
		} catch (MinhaException e) {
			b++;
		} catch (OutraException e) {
			c++;
		} finally {
			d++;
		}
		System.out.println(a + "," + b + "," + c + "," + d);
	}
}