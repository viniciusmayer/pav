function confirmar() {
	return confirm("Tens certeza?");
}

/*
<form name="myForm" action="demo_form.asp" onsubmit="return validateForm()" method="post">
	First name: <input type="text" name="fname">
	<input type="submit" value="Submit">
</form>
 */
function validateCamposObrigatorios() {
	var x = document.forms["myForm"]["fname"].value;
	if (x == null || x == "") {
		alert("First name must be filled out");
		return false;
	}
}

/*
<form name="myForm" action="demo_form.asp" onsubmit="return validateForm();" method="post">
	Email: <input type="text" name="email">
	<input type="submit" value="Submit">
</form>
 */
function validateEmail() {
	var x = document.forms["myForm"]["email"].value;
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
		alert("Not a valid e-mail address");
		return false;
	}
}