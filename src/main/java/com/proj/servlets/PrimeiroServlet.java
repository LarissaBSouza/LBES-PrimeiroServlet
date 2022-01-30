package com.proj.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PrimeiroServlet
 */
@WebServlet("/PrimeiroServlet")
public class PrimeiroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrimeiroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response)

		if ((request.getParameter("val1") != null) && (request.getParameter("val2") != null)) {
			
			int val1 = Integer.parseInt(request.getParameter("val1"));
			int val2 = Integer.parseInt(request.getParameter("val2"));
			String operacoes = request.getParameter("operacoes");
		
			Calculadora c = new Calculadora(val1, val2);
			if (operacoes.equals("subtracao")) {
				int resultado = c.subtrair();
				request.setAttribute("res", resultado); //requestScope-forward
				
			} else if (operacoes.equals("soma")) {
				int resultado = c.somar();
				request.setAttribute("res", resultado); //requestScope-forward
				
			} else if (operacoes.equals("divisao")) {
				double resultado = c.dividir();
				request.setAttribute("res", resultado); //requestScope-forward
				
			} else if (operacoes.equals("multiplicacao")) {
				int resultado = c.multiplicar();
				request.setAttribute("res", resultado); //requestScope-forward
			}
	
//			request.setAttribute("res", resultado); //requestScope-forward
		}
		
		request.getRequestDispatcher("/").forward(request, response); //Rediciona para ele mesmo)
	}

}
