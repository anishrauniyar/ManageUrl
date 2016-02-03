function Validate()
{
	if (ValidateFirstName()==true && ValidateMiddleName()==true && ValidateLastName()==true)
	{
		if(ValidateUserName()==true && ValidatePassword()==true && ValidateConfirmPassword()==true)
		{
			if(ValidateEmail()==true)
			{
				return true;
			}
			else { return false; }
		}
		else { return false; }
	}
	else
	{
		//alert("Please correct the errors.");
		return false;
	}
	
	//return true;
}

function ValidateFirstName()
{
	var fname=document.register.fname.value;
	var illegalchar=/[\0-9\`\-\=\\\[\]\;\'\,\.\/\~\!\@\#\$\%\^\&\*\(\)\_\+\|\{\}\:\"\<\>\?\]]/;
	
	if (fname=="" || fname==null)
	{
		//alert ("First name empty");
		document.register.fname.focus();
		//document.register.fname.style.borderColor = "#F00";
		return false;
	}
    if (fname.length<2)
	{
		//document.register.fname.style.borderColor = "#F00";
		alert("First name should be atleast 2 characteres");
		document.register.fname.focus();
		return false;
	}
	else if(illegalchar.test(fname))
	{
		alert("Illegal First name");
		//document.register.fname.style.borderColor = "#F00";
		document.register.fname.focus();
		return false;
	}
	//document.register.fname.style.borderColor = "#0000";
	return true;
}
function ValidateMiddleName()
{
	var mname=document.register.mname.value;
	var illegalchar=/[\0-9\`\-\=\\\[\]\;\'\,\.\/\~\!\@\#\$\%\^\&\*\(\)\_\+\|\{\}\:\"\<\>\?\]]/;
	
	if (mname=="" || mname==null)
	{
		//document.register.lname.style.borderColor = "#F00";
		return true;
	}
    if (mname.length<2)
	{
		//document.register.lname.style.borderColor = "#F00";
		alert("Middle name should be atleast 2 characteres");
		document.register.mname.focus();
		return false;
	}
	else if(illegalchar.test(mname))
	{
		//document.register.lname.style.borderColor = "#F00";
		alert("Illegal Middle name");
		document.register.mname.focus();
		return false;
	}
	//document.register.lname.style.borderColor = "#0000";
	return true;
}
function ValidateLastName()
{
	var lname=document.register.lname.value;
	var illegalchar=/[\0-9\`\-\=\\\[\]\;\'\,\.\/\~\!\@\#\$\%\^\&\*\(\)\_\+\|\{\}\:\"\<\>\?\]]/;
	
	if (lname=="" || lname==null)
	{
		//document.register.lname.style.borderColor = "#F00";
		alert ("Last name empty");
		document.register.lname.focus();
		return false;
	}
    if (lname.length<2)
	{
		//document.register.lname.style.borderColor = "#F00";
		alert("Last name should be atleast 2 characteres");
		document.register.lname.focus();
		return false;
	}
	else if(illegalchar.test(lname))
	{
		//document.register.lname.style.borderColor = "#F00";
		alert("Illegal Last name");
		document.register.lname.focus();
		return false;
	}
	//document.register.lname.style.borderColor = "#0000";
	return true;
}
function ValidateUserName()
{
	var Username=document.register.uname.value;
	var illegalchar=/[\W ]/;

	if (Username=="" || Username==null)
	{
		//document.register.Username.style.borderColor = "#F00";
		alert("Username Empty");
		document.register.uname.focus();
		return false;
	}
	if (Username.length<5)
	{
		//document.register.Username.style.borderColor = "#F00";
		alert("Username should be atleast 5 characters");
		document.register.uname.focus();
		return false;
	}
	else if(illegalchar.test(Username))
	{
		//document.register.Username.style.borderColor = "#F00";
		alert("Invalid Username");
		document.register.uname.focus();
		return false;
	}
	return true;
}
function ValidatePassword()
{
	if (document.register.password.value.length<3)
	{
		//document.register.Password.style.borderColor = "#F00";
		alert("Password should be atleast 3 characters");
		document.register.password.focus();
		return false;
	}
	return true;
}

function ValidateConfirmPassword(){
	var password = document.register.password.value;
	var cpassword = document.register.cpassword.value;
	if (password == cpassword){
		return true;
	}
	else {
		alert("Confirm Password Mismatch");
		return false;
	}
}

function ValidateEmail()
{
   var x=document.forms["register"]["email"].value;
   var atpos=x.indexOf("@");
   var dotpos=x.lastIndexOf(".");
   if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
   {
		//document.register.Email.style.borderColor = "#F00";
		alert("Not a valid e-mail address");
		document.register.email.focus();
		return false;
   }
   else{
		return true;
   }
}