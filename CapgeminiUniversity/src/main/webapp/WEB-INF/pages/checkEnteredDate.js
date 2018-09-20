function checkEnteredDate() {
	var systemDate = new Date();
	var systemDD = systemDate.getDate();
	var systemMM = systemDate.getMonth() + 1; // because January is 0!
	var systemYYYY = systemDate.getFullYear();
	var startDate = document.getElementById("startDate").value;
	var enteredDate = document.getElementById("enteredDate");
	var enteredDD = enteredDate.getDate();
	var enteredMM;
	var enteredYYYY;
	
	console.log("Entered date:" + enteredDate);
	console.log("System date:" + systemDate);
	console.log("Start date:" + startDate);
	
	if(enteredDate > systemDate && enteredDate < startDate) {
		return true;
	}
	else
		alert("Please enter interview date between today's date and start date of program");
}