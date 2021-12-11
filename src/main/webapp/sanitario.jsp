<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
	<c:set var="tipo" value="sanitario"></c:set>
	<c:if test="${sessionScope.rol ne tipo}">
		<jsp:forward page="noAutorizado.jsp"></jsp:forward>
	</c:if>

	<div class="container">
		<div class="text-center">
			<h1>SANITARIO</h1>
		</div>


		<form action="ServletMedicina" method="post">
			<div class="form-group">
				<label for="usuario">Medicamento:</label> <input type="text"
					class="form-control" placeholder="Introduce medicamento"
					id="medicamento" list="medicinas"
					 name="nombre"
					onchange="javascript:document.forms[0].submit()" >
				<datalist id="medicinas">
					<c:forEach items="${medicinas}" var="nombre">
						<option value="${nombre }">
					</c:forEach>
				</datalist>
			</div>
			<h4>Nombre medicamento : ${medicamento.nombreMedicamento}</h4>
			<h4>Tipo medicamento : ${medicamento.tipoMedicamento}</h4>
			<div class="form-group">
				<label for="usuario">Generalidades:</label>
				<textarea class="form-control" rows="5" id="comment" disabled="true">${medicamento.generalidades }</textarea>
			</div>
			<div class="form-group">
				<label for="usuario">Indicaciones:</label>
				<textarea class="form-control" rows="5" id="comment" disabled="true">${medicamento.indicaciones }</textarea>
			</div>
			<div class="form-group">
				<label for="usuario">Cuidados:</label>
				<textarea class="form-control" rows="5" id="comment" disabled="true">${medicamento.cuidados }</textarea>
			</div>
			<div class="form-group">
				<label for="usuario">Ram:</label>
				<textarea class="form-control" rows="5" id="comment" disabled="true">${medicamento.ram }</textarea>
			</div>
			
			<button type="button" class="btn btn-warning"
				onclick="javascript:document.location='login.jsp'">Salir</button>

		</form>
		<h3 class="text-danger" id="error">${error}</h3>
	</div>
</body>
</html>