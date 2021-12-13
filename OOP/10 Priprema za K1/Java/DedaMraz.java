import java.util.ArrayList;

public class DedaMraz {
	private ArrayList<NovogodisnjiPaketic> novogodisnjiPaketici;
	
	public DedaMraz() {
		super();
		this.novogodisnjiPaketici = new ArrayList<NovogodisnjiPaketic>();
	}
	
	public boolean pripremiZaIsporuku(NovogodisnjiPaketic np, String opisPaketica) {
		boolean spakovano = np.spakuj();
		
		if(spakovano) {
			np.setOpis(opisPaketica);
			np.setSpremanZaIsporuku(true);
			System.out.println("Novogodisnji paketic je spreman za isporuku.");
			return true;
		}
		return false;
	}
	
	/*
	    Metodu boolean dodaj(NovogodisnjiPaketic) � u slu�aju da prosle�eni
		novogodi�nji paketi� nije spreman za isporuku, metoda vra�a false. Ukoliko se pak
		ispostavi da je spreman za isporuku, i ve� se nalazi u listi, metoda tako�e vra�a false.
		Ako je novogodi�nji paketi� spreman za isporuku i ne nalazi se u vre�i Deda Mraza, tada
		povratna vrednost metode odgovara (ne)uspe�nom poku�aju dodavanja u listu.
	 */
	public boolean dodaj(NovogodisnjiPaketic novogodisnjiPaketic) {
		if(!novogodisnjiPaketic.isSpremanZaIsporuku()) 
			return false;
		
		for(NovogodisnjiPaketic np : novogodisnjiPaketici)
			if(np.equals(novogodisnjiPaketic)) 
				return false;
		
		return novogodisnjiPaketici.add(novogodisnjiPaketic);
	}
	
	/*
	 	Metodu boolean izbaci(String) � iz liste uklanja prvi novogodi�nji paketi� �ija je
		vrednost atributa namenjen jednaka prosle�enoj. Povratna vrednost metode odgovara
		(ne)uspe�nom poku�aju izbacivanja.
	 */
	public boolean izbaci(String namenjen) {
		for(int i = 0; i < novogodisnjiPaketici.size(); i++)
			if(novogodisnjiPaketici.get(i).getNamenjen().equals(namenjen))
				return novogodisnjiPaketici.remove(novogodisnjiPaketici.get(i));
					
		return false;
	}
	
	@Override
	public String toString() {
		String str = "";
		
		str += "---------------------------- DEDA MRAZ ----------------------------\n";
		
		if(novogodisnjiPaketici.isEmpty())
			str += "Vreca Deda Mraza je trenutno prazna!\n";
		else {
			for(int i = 0; i < novogodisnjiPaketici.size(); i++)
				str += novogodisnjiPaketici.get(i) + "\n";
		}
		
		str += "-------------------------------------------------------------------";
		
		return str;
	}
}
