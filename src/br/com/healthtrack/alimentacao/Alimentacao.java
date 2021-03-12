package br.com.healthtrack.alimentacao;

import java.time.LocalDate;
import java.time.LocalDateTime;


/**
 * @author Luis Roberto Chiasso Rachope
 *
 * @version 4.2
 *
 */

public class Alimentacao {
	private short cd_alimentacao;
	private LocalDate data;
	private LocalDateTime hora;
	private short calorias;
	private String descricao;
	private String ds_email;
	TipoAlimentacao tipo = new TipoAlimentacao();

	public Alimentacao(String ds_email, LocalDate data, LocalDateTime hora, short calorias, byte codAlim, short cd_alimentacao) {
		this.cd_alimentacao = cd_alimentacao;
		this.data = data;
		this.hora = hora;
		this.calorias = calorias;
		this.tipo.setCodAlim(codAlim);
		this.ds_email = ds_email;
		this.setDescAlimenNum();
	}



	public Alimentacao(String ds_email, LocalDate data, LocalDateTime hora, short calorias, byte codAlim, String descricao, short cd_alimentacao) {
		this.cd_alimentacao = cd_alimentacao;
		this.data = data;
		this.hora = hora;
		this.calorias = calorias;
		this.tipo.setCodAlim(codAlim);
		this.setDescAlimenNum();
		this.descricao = descricao;
		this.ds_email = ds_email;
	}

	public Alimentacao() {

	}

	public void setDescAlimenNum() {
		switch (this.tipo.getCodAlim()) {
		case 0:
			this.tipo.setDescAlim("Caf� da Manh�");
			break;
		case 1:
			this.tipo.setDescAlim("Alimenta��o");
			break;
		case 2:
			this.tipo.setDescAlim("Janta");
			break;
		case 3:
			this.tipo.setDescAlim("Lanche Leve");
			break;
		case 4:
			this.tipo.setDescAlim("Fruta");
			break;
		default:
			this.tipo.setDescAlim("Invalid");
			break;
		}
	}


	@Override
	public String toString() {
		return "Alimentacao [cd_alimentacao=" + cd_alimentacao + ", data=" + data + ", hora=" + hora + ", calorias="
				+ calorias + ", descricao=" + descricao + ", ds_email=" + ds_email + ", tipo=" + tipo.getDescAlim() + "]";
	}


	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
	public LocalDateTime getHora() {
		return hora;
	}
	public void setHora(LocalDateTime hora) {
		this.hora = hora;
	}
	public short getCalorias() {
		return calorias;
	}
	public void setCalorias(short calorias) {
		this.calorias = calorias;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDescAlimen() {
		return this.tipo.getDescAlim();
	}

	public short getCd_alimentacao() {
		return cd_alimentacao;
	}

	public void setCd_alimentacao(short cd_alimentacao) {
		this.cd_alimentacao = cd_alimentacao;
	}

	public String getDs_email() {
		return ds_email;
	}


	public void setDs_email(String ds_email) {
		this.ds_email = ds_email;
	}

	public TipoAlimentacao getTipo() {
		return tipo;
	}

	public void setTipo(TipoAlimentacao tipo) {
		this.tipo = tipo;
	}
}
