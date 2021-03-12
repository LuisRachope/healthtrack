package br.com.healthtrack.alimentacao;

/**
 * @author Luis Roberto Chiasso Rachope
 *
 * @version 4.2
 *
 */

public class TipoAlimentacao {
	private byte codAlim;
	private String descAlim;
	
	public byte getCodAlim() {
		return codAlim;
	}
	public void setCodAlim(byte codAlim) {
		this.codAlim = codAlim;
	}
	public String getDescAlim() {
		return descAlim;
	}
	public void setDescAlim(String descAlim) {
		this.descAlim = descAlim;
	}
	
}
