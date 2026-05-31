function validateLogin() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    if (email === "" || password === "") {
        alert("Please fill all fields");
        return false;
    }

    return true;
}
function validateRegister() {
    var password = document.getElementById("password").value;

   
    var pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/;

    if (!pattern.test(password)) {
        alert("Password must contain:\n- At least 8 characters\n- One uppercase letter\n- One lowercase letter\n- One number\n- One special character (@$!%*?&)");
        return false;
    }

    return true;
}
function validateRegister() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    if (name === "" || email === "" || password === "" || confirmPassword === "") {
        alert("Please fill all fields");
        return false;
    }

    if (password !== confirmPassword) {
        alert("Passwords do not match");
        return false;
    }

    return true;
}

window.onload = function () {
    const params = new URLSearchParams(window.location.search);
    const msg = params.get("msg");
    const name = params.get("name");

    // Register message
    const regMsg = document.getElementById("message");
    if (regMsg) {
        if (msg === "success") {
            regMsg.innerText = "Registration Successful!";
            regMsg.style.color = "green";
        } else if (msg === "error")
			 {
            regMsg.innerText = "Something went wrong!";
            regMsg.style.color = "red";
        }
		else if (msg === "exists") {  
		        message.innerText = "Email already exists!";
		        message.style.color = "red";
				}
			
    }

    // Login message
	if (name) {
	        const welcome = document.getElementById("welcomeUser");
	        if (welcome) {
	            welcome.innerText = "Welcome, " + name + "!";
	        }
	    }

    // Booking message
    const bookingMsg = document.getElementById("bookingMessage");
    if (bookingMsg) {
        if (msg === "success") {
            bookingMsg.innerText = "Booking Successful!";
            bookingMsg.style.color = "green";
        } else if (msg === "error") {
            bookingMsg.innerText = "Booking Failed!";
            bookingMsg.style.color = "red";
        }
    }
};