func exercise() {
    
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    
    var password = "";
    
    for _ in 1...6 {
        let randomLeter = alphabet.randomElement();
        password += randomLeter!;
    }
    
    print(password)
    
}

exercise();
