function checkEnteredDate() {
	var systemDate = new Date();
	var systemDD = systemDate.getDate();
	var systemMM = systemDate.getMonth() + 1; // because January is 0!
	var systemYYYY = systemDate.getFullYear();
	var enteredDate = document.getElementById("enteredDate").value;
	
	unit = parseInt(unit,10);	//Converting the digit string to an Integer
	if(unit<=100){
		total_charges= unit*price_first_100;
	}
	else{
		total_charges = 100*price_first_100 + (unit-100)*price_normal; 
	}
	alert("Your total electricity bill is : Rs."+total_charges);
	return true;
}