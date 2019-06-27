function formValidate() {

    var email1 = document.forms["myForm"]["email"].value;
    var ePassword1 = document.forms["myForm"]["ePassword"].value;
    var name1 = document.forms["myForm"]["name"].value;
    var location1 = document.forms["myForm"]["location"].value;
    var country1 = document.forms["myForm"]["country"].value;
    var gender1 = document.forms["myForm"]["gender"].value;

    passwords(ePassword1);
    isEmpty1(ePassword1);
    emailValidation(email);
    isAlphebatic(name1);
    isEmpty(name1);
    isAlphebatic(location1);
    isEmpty2(location1);
    isAlphebatic(country1);
    isEmpty3(country1);
    radioValidation(redioButton);
}
function isEmpty(email) {

    if (email == "" || email == null) {

        alert("you cannot have email empty");
        return true;
    }

    else {
        return false;
    }
}
function isEmpty1(ePassword) {

    if (ePassword == "" || ePassword == null) {

        alert("you cannot have password empty");
        return true;
    }
    else {
        return false;
    }
}
function isEmpty2(location) {

    if (location == "" || location == null) {

        alert("you cannot have location filed empty");
        return true;
    }
    else {
        return false;
    }

}

function isEmpty3(country) {

    if (country == "" || country == null) {

        alert("you cannot have country filed empty");
        return true;
    }
    else {
        return false;
    }

}
function radioValidation(gender ){

    if(gender == null || gender == '')
    {
        alert("select gender");
        return false;
    }
    else
    {
        return true;
    }
}
function isAlphebatic(name) {
    var exp = /^[a-zA-Z]+$/;

    if (!isEmpty(name, "Name")) {
        if (name.match(exp)) {
            return true;
        }
        else {
            alert("Enter only text for your name");
            return false;
        }
    }
    else
        return false;
}
function isAlphebatic(location) {
    var exp = /^[a-zA-Z]+$/;

    if (!isEmpty(location, "Location")) {
        if (location.match(exp)) {
            return true;
        }
        else {
            alert("Enter only text for your location");
            return false;
        }
    }
    else
        return false;
}
function isAlphebatic(country) {
    var exp = /^[a-zA-Z]+$/;

    if (!isEmpty(country, "Country")) {
        if (country.match(exp)) {
            return true;
        }
        else {
            alert("Enter only text for your country");
            return false;
        }
    }
    else
        return false;
}

function passwords(ePassword) {
    var pas = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

    if (!isEmpty4(ePassword, "Email Password")) {
        if (ePassword.match(pas)) {
            return true;
        }
        else {
            alert("Enter at least 8 characters long and must be a combination of uppercase characters, lowercase characters, numeric characters and a special character.");
            return false;
        }
    }
    else
        return false;
}
function emailValidation(email) {

    if (!isEmpty10(email, "Email address")) {
        var atops = email.indexOf("@");
        var dotops = email.indexOf(".");
        if (atops < 1 || dotops + 2 >= email.length || atops + 2 > dotops) {
            alert("Enter Valid Email address");
            return false;
        }
        else {
            return true;
        }
    }
    else
        return false;
}
