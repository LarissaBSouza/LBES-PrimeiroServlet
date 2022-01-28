<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Maven -->
	<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="estilo.css">
<meta charset="ISO-8859-1">
<title>Calculadora</title>
</head>
<body>
	<form method="post" action="PrimeiroServlet" >
		<div class="container col-4 mt-4 mb-4 text-center" >
			<h1>...:::::  Calculadora  :::::...</h1>
			<p>Digite dois valores a serem calculados: </p>
			<div class="row">
  				<div class="col">
    				<input type="text" class="form-control" placeholder="Valor 1" aria-label="Valor 1" name="val1" >
  				</div>
  				<div class="col">
    				<input type="text" class="form-control" placeholder="Valor 2" aria-label="Valor 2" name="val2" >
  				</div>
			</div>
			<div class="container row row-cols-lg-auto g-3 align-items-center mt-2 mb-2 buttons">
  				<select class="form-select" aria-label="Disabled select example" name="select">
  					<option value="Nulo">Selecione o tipo de operação</option>
  					<option value="Soma">Somar</option>
  					<option value="Subtração">Subtrair</option>
  					<option value="Divisão">Dividir</option>
  					<option value="Multiplicação">Multiplicar</option>
				</select>
				<div class="col">
    				<button type="reset" class="btn btn-warning">Limpar</button>
  				</div>
				<div class="col">
    				<button type="submit" class="btn btn-warning">Calcular</button>
  				</div>
  			</div>
		</div>
	</form>
	
	<p> Resultado = ${requestScope.res}	</p>	

</body>
</html>