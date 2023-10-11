<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/09/2023
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Murach's Java Servlets and JSP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<img src="img/murachlogo.jpg">
<h1>Survey</h1>
<p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
<h2>Your information:</h2>
<c:if test="${not empty eror}">
    <p>${eror}</p>
</c:if>
<form action="survey" method="post">
    <input type="hidden" name="action" value="add"/>

    <div class="form-row">
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" id="firstName"/>
    </div>

    <div class="form-row">
        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" id="lastName"/>
    </div>

    <div class="form-row">
        <label for="email">Email:</label>
        <input type="text" name="email" id="email"/>
    </div>

    <h2>How did you here about us?</h2>

    <p>
        <input type="radio" name="HearAboutUs" value="Search engine" checked/>Search engine
        <input type="radio" name="HearAboutUs" value="Word of mouth"/>Word of mouth
        <input type="radio" name="HearAboutUs" value="Other"/>Other
    </p>
    <h2>
        Would you like to receive announcements about new CDs and special offers?
    </h2>
    <p>
        <input type="checkbox" name="yesILikeThat" checked/>Yes, I'd like that<br/>
    </p>
    Please contact me by:
    <select name="contactMethod">
        <option value="Email or postal mail" selected>Email or postal mail</option>
        <option value="Other">Other</option>
    </select><br/>

    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left pad_top btn btn-outline-success">

</form>
<form class="returnproject" method="get" action="https://ltwgiuaki-final.onrender.com/home/#home">
    <button type="submit">
        <input type="submit" value="Return Profile" class="margin_left pad_top btn btn-outline-success">
    </button>
</form>
</body>
</html>
