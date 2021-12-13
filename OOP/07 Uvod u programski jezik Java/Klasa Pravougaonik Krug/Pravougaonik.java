package z1;

public class Pravougaonik {
	private double a;
	private double b;
	
	public Pravougaonik(Pravougaonik p) {
		a = p.a;
		b = p.b;
	}
	
	public double getO() {
		return 2 * (a + b);
	}
	
	public double getP() {
		return a * b;
	}
	
	public double getA() {
		return a;
	}
	public void setA(double a) {
		this.a = a;
	}
	public double getB() {
		return b;
	}
	public void setB(double b) {
		this.b = b;
	}
	
	public Pravougaonik(double a, double b) {
		this.a = a;
		this.b = b;
	}
}
