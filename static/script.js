function displayInfo() {
    var fname = document.getElementById("fname").value;
    var mname = document.getElementById("mname").value;
    var lname = document.getElementById("lname").value;
    var birthdate = document.getElementById("birthdate").value;
    
    if (fname && lname && birthdate) {
      var xhr = new XMLHttpRequest();
      xhr.open("POST", "/calculate", true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
      xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
          if (xhr.status == 200) {
            var response = JSON.parse(xhr.responseText);
            var fullName = response.fname + " " + response.mname + " " + response.lname;
            var outputHtml = `
              <h2>Output</h2>
              <p><strong>Full Name:</strong> ${fullName}</p>
              <p><strong>Age:</strong> ${response.age}</p>
            `;
            document.getElementById("personal-info").innerHTML = outputHtml;
          } else {
            document.getElementById("personal-info").innerHTML = "<p>Failed to retrieve data.</p>";
          }
        }
      };
      xhr.send("fname=" + encodeURIComponent(fname) + "&mname=" + encodeURIComponent(mname) + "&lname=" + encodeURIComponent(lname) + "&birthdate=" + encodeURIComponent(birthdate));
    } else {
      document.getElementById("personal-info").innerHTML = "<p>Please enter all fields.</p>";
    }
  }
  