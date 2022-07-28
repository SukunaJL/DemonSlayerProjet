function validateForm()  {
    
    let myForm = document.forms["myForm"];
    
    let name = myForm["name"].value;
    let prenom = myForm["firstname"].value;
    let adresse = myForm["address"].value;
    let email = myForm["email"].value;
    let password = myForm["password"].value;
    
    let isValid = true;    
    
    if(name == "") {
        let nameerror = document.getElementById('name');
        nameerror.innerText = 'Veuillez entrer votre Nom !';
        
        myForm["name"].focus();
        isValid = false;
    }
    if(prenom == "") {
        let prenomerror = document.getElementById('firstname');
        prenomerror.innerText = 'Veuillez entrer votre Prénom !';
        
        myForm["firstname"].focus();
        isValid = false;
    }
    if(adresse == "") {
        let adresseerror = document.getElementById('address');
        adresseerror.innerText = 'Veuillez entrer votre Adresse !';
        
        myForm["address"].focus();
        isValid = false;
    }
    if(email == "") {
        let emailerror = document.getElementById('email');
        emailerror.innerText = 'Veuillez entrer votre E-mail !';
        
        myForm["email"].focus();
        isValid = false;
    }
    if(password == "") {
        let passworderror = document.getElementById('password');
        passworderror.innerText = 'Veuillez entrer votre Mot de passe !';
        
        myForm["password"].focus();
        isValid = false;
    }
    
    
    if(isValid) {
        let confirmregister = document.getElementById('confirmation-register');
        confirmregister.innerText = 'Vous avez bien été enregistrer pourfendeur !';
        
    } else {
        return isValid;
    }
}
