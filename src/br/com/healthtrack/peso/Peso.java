package br.com.healthtrack.peso;

import java.time.LocalDate;

/**
 * @author Luis Roberto Chiasso Rachope
 *
 * @version 4.2
 *
 */

public class Peso {
	private short cd_peso;
	private String ds_email;
	private float peso;
	private LocalDate data;
	
	public Peso(short cd_peso, String ds_email, float peso, LocalDate data) {
		this.cd_peso = cd_peso;
		this.ds_email = ds_email;
		this.peso = peso;
		this.data = data;
	}
	
	public Peso(float peso, LocalDate data) {
		this.ds_email = "null";
		this.peso = peso;
		this.data = data;
	}

	public float getPeso() {
		return peso;
	}

	public void setPeso(float peso) {
		this.peso = peso;
	}
	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
	public String getDs_email() {
		return ds_email;
	}
	public void setDs_email(String ds_email) {
		this.ds_email = ds_email;
	}
	public short getCd_peso() {
		return cd_peso;
	}
	public void setCd_peso(short cd_peso) {
		this.cd_peso = cd_peso;
	}
	
}
