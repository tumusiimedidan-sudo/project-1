// 1️⃣ Validate Registration Form
function validateForm() {
  let name = document.getElementById("name").value;
  let email = document.getElementById("email").value;
  let age = document.getElementById("age").value;
  let message = document.getElementById("message");

  if (name === "" || email === "" || age === "") {
    message.style.color = "red";
    message.innerText = "⚠️ Please fill in all fields!";
    return false;
  } else if (age < 5 || age > 100) {
    message.style.color = "red";
    message.innerText = "⚠️ Age must be between 5 and 100.";
    return false;
  } else {
    message.style.color = "green";
    message.innerText = "✅ Registration Successful!";
    return false;
  }
}

// 2️⃣ Calculate Grades
function calculateGrade() {
  let math = Number(document.getElementById("math").value);
  let science = Number(document.getElementById("science").value);
  let english = Number(document.getElementById("english").value);
  let message = document.getElementById("message");
  
let history = Number(document.getElementById("history").value);
let geography = Number(document.getElementById("geography").value);

if (isNaN(math) || isNaN(science) || isNaN(english) || isNaN(history) || isNaN(geography)) {
  message.style.color = "red";
  message.innerText = "⚠️ Please enter marks for all subjects!";
  return false;
}

let average = (math + science + english + history + geography) / 5;

  if (isNaN(math) || isNaN(science) || isNaN(english)) {
    message.style.color = "red";
    message.innerText = "⚠️ Please enter marks for all subjects!";
    return false;
  }

  let average = (math + science + english) / 3;
  let grade = "";

  if (average >= 80) grade = "A";
  else if (average >= 70) grade = "B";
  else if (average >= 60) grade = "C";
  else if (average >= 50) grade = "D";
  else grade = "F";

  message.style.color = "green";
  message.innerText = `Average: ${average.toFixed(2)} | Grade: ${grade}`;
  return false;
}

// 3️⃣ Reset Form with Confirmation
function resetForm(formId) {
  let confirmReset = confirm("Are you sure you want to reset the form?");
  if (confirmReset) {
    document.getElementById(formId).reset();
    document.getElementById("message").innerText = "";
  }
}
