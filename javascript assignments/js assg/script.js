
window.addEventListener("load", function () {

    // getElementById()
    let name = document.getElementById("studentName");

    // querySelector()
    let email = document.querySelector("#email");

    // querySelectorAll()
    let inputs = document.querySelectorAll("input");

    // getElementsByClassName()
    let controls = document.getElementsByClassName("form-control");

    // Focus event
    name.addEventListener("focus", function () {
        name.style.borderColor = "blue";
    });

    // Input event - display name immediately
    name.addEventListener("input", function () {
        document.getElementById("nameDisplay").innerHTML =
            "Student Name: " + name.value;
    });

    // Change event - display department
    let dept = document.getElementById("department");

    dept.addEventListener("change", function () {
        document.getElementById("deptDisplay").innerHTML =
            "Department: " + dept.value;
    });

    // Submit event - form validation
    document.getElementById("studentForm")
        .addEventListener("submit", function (event) {

            event.preventDefault();

            if (name.value.trim() === "" || email.value === "" ||
                dept.value === "") {
                alert("Please fill all fields");
                return;
            }

            // innerHTML - display details
            let result = document.getElementById("result");

            result.innerHTML =
                "<h3>Registration Successful!</h3>" +
                "<p>Name: " + name.value + "</p>" +
                "<p>Email: " + email.value + "</p>" +
                "<p>Department: " + dept.value + "</p>";

            // style - change background color
            result.style.backgroundColor = "lightgreen";

        });

    // Display selected input elements
    console.log(inputs);
    console.log(controls);

});
