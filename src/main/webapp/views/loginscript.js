// Email Validation
var checkRequest = null;
console.log("afterCheckEmail");
function checkEmail() {

    var userEmail = $("#txtEmail").val();
    const emailRegex = new RegExp(/^[A-Za-z0-9_!#$%&'*+\/=?`{|}~^.-]+@[A-Za-z0-9.-]+$/, "gm");
    console.log("checkEmail");

    if(emailRegex.test(userEmail)){
        if (window.XMLHttpRequest)
            checkRequest = new XMLHttpRequest();
        else if
            (window.ActiveXObject) checkRequest = new ActiveXObject(Microsoft.XMLHTTP);
    
        checkRequest.onreadystatechange = emailHandler;
    
        url = "emailchecker?email=" + userEmail + "&timeStamp=" + new Date().getTime();
        checkRequest.open("GET", url, true);
        checkRequest.send(null);
    }
    else{
        $("#msgtxt").html("");
    }
}


function emailHandler() {
    if (checkRequest.readyState == 4 && checkRequest.status == 200) {
        console.log("...." + checkRequest.responseText + "..");
    }
    console.log(".." + checkRequest.responseText + "..");

    if (checkRequest.responseText == "Valid Email") {
        $("#msgtxt").css("color", "green");
        $("#msgtxt").html(checkRequest.responseText);
        $('#regbtn').attr("disabled", false);
    } else {
        $("#msgtxt").html("Email already used");
        $("#msgtxt").css("color", "red");
        $('#regbtn').attr("disabled", true);
    }
}

