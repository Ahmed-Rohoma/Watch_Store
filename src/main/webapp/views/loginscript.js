
// Name Validation
var checkRequest = null;
console.log("afterCheckEmail");
function checkEmail() {
    
    console.log("checkEmail");
    if (window.XMLHttpRequest)
        checkRequest = new XMLHttpRequest();
    else if
        (window.ActiveXObject) checkRequest = new ActiveXObject(Microsoft.XMLHTTP);

    checkRequest.onreadystatechange = emailHandler;

    url = "emailchecker?email=" + $("#txtEmail").val() + "&timeStamp=" + new Date().getTime();
    checkRequest.open("GET", url, true);
    checkRequest.send(null);
}


function emailHandler() {
    if (checkRequest.readyState == 4 && checkRequest.status == 200) {
        document.getElementById("msgtxt").innerText = checkRequest.responseText;
    }

    if (checkRequest.responseText == "Valid Email") {
        document.getElementById("msgtxt").style.color = "green";
        $('#regsubmit').attr("disabled", false);
        // $('#submit').css('background', '#227f96');
    } else {
        document.getElementById("msgtxt").style.color = "red";
        $('#regsubmit').attr("disabled", true);
        // $('#submit').css('background', 'grey');
    }
}