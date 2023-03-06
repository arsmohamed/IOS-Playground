var password = "1234";
let passcode = Int(password);
print("The passcode of the app is \(passcode!)")
password = "hello world"
if let code = Int(password) { print("the passcode is \(code)")} else { print("Invalid passcode!") }

let accessCode :Int
if let code = Int(password) { accessCode = code } else { accessCode = 1111 }
print("The passcode of the app is \(accessCode)")

let firstPassword = "hello"
let secoundPassword = "word"
if let FirstPasscode = Int(firstPassword), let SecondPasscode = Int(secoundPassword) {
    print("The first passcode of the app is \(firstPassword) and the second passcode of the app is \(secoundPassword)")
} else { print("Invalid Passcodes !")}

let FirstAccessCode:Int, SecondAccessCode:Int
if let FirstPasscode = Int(firstPassword), let SecondPasscode = Int(secoundPassword) {
    FirstAccessCode = FirstPasscode
    SecondAccessCode = SecondPasscode
} else {
    FirstAccessCode = 1111
    SecondAccessCode = 2222
}

print("The first passcode of the app is \(FirstAccessCode), the second is \(SecondAccessCode)")
