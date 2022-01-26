<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Maven -->
	<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<div class="container col-4 mt-4 mb-4">
			<h1>Calculadora</h1>
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
				<div class="col">
    				<button type="reset" class="btn btn-warning">Limpar</button>
  				</div>
				<div class="col">
    				<button type="submit" class="btn btn-warning">Somar</button>
  				</div>
  			</div>
		</div>
	</form>
		

</body>
</html>