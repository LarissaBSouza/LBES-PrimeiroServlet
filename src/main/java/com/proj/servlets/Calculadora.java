package com.proj.servlets;

public class Calculadora {
	private int valor1;
	private int valor2;
	
	Calculadora(int val1, int val2) {
		this.valor1 = val1;
		this.valor2 = val2;
	}
	
	public int somar() {
		return this.valor1 + this.valor2;
	}
	
	public int subtrair() {
		return this.valor1 - this.valor2;
	}
	
	public double dividir() {
		return (double) this.valor1 / this.valor2;
	}
	
	public int multiplicar() {
		return this.valor1 * this.valor2;
	}
	
	
}
