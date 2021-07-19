<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>
		
		<form:form action="processForm" modelAttribute="student">
		
		First name: <form:input path="firstName" />
		
		<br><br>
		
		Last name: <form:input path="lastName" />
		
		<br><br>
		
		Country:
		
		<form:select path="Country" >
		
		<form:options items="${student.countryOptions}" />
		
		</form:select>
		
		<br><br>
		
		Favorite Language:
		
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		C# <form:radiobutton path="favoriteLanguage" value="C#" />
		PHP <form:radiobutton path="favoriteLanguage" value="Php" />
		RUBY <form:radiobutton path="favoriteLanguage" value="Ruby" />
		
		<br><br>
		
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Window" />
		
		
		<input type="submit" value="Sumbit" />
		
		</form:form>
		
		
</body>

</html>
