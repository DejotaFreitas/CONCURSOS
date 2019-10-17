package thread;

public class MinhaThread extends Thread {
	
	private String nome;
	
	public MinhaThread (String nome) {
		this.nome = nome;
	}
	
	public static void main(String args[]) {
		new MinhaThread("Thread 1").start();
		new MinhaThread("Thread 2").start();
	}

	public void run() {
		for (int i = 0; i < 5000; i++) {
			System.out.println(this.nome+" - "+i);
		}
	}
}