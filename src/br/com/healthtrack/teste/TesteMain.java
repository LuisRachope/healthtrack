package br.com.healthtrack.teste;

import br.com.healthtrack.peso.PesoDAO;
/**
 * Verificação se está funcionando as classes
 *
 */

public class TesteMain {

	public static void main(String[] args) {
		System.out.println(PesoDAO.select("luisroberto1811@hotmail.com").get(0).getPeso());
		
	}

}
