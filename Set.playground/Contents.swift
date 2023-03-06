import UIKit

var reservationsOverPhone = Set<String>()
reservationsOverPhone.insert("000-345-3441")
reservationsOverPhone.insert("000-345-3442")
var reservationsInPerson = Set<String>()
reservationsInPerson.insert("000-345-3443")
reservationsInPerson.insert("000-345-3444")
var reservationsOnline = Set<String>()
reservationsOnline.insert("000-345-3445")
reservationsOnline.insert("000-345-3446")

let inPersonAndOverPhone = reservationsOverPhone.union(reservationsInPerson)
print(inPersonAndOverPhone)
var allPhoneNumbers = reservationsOnline.union(inPersonAndOverPhone)
print(allPhoneNumbers)

var confirmationCodes: Set = ["LL3450", "LL3451", "LL3452", "LL3453", "LL3454"]

print("allphoneNumbers are \(allPhoneNumbers.count), on the other hand the ConfirmationCodes are \(confirmationCodes.count)")

confirmationCodes.insert("LL3455")
print(confirmationCodes)
confirmationCodes.remove("LL3451")
allPhoneNumbers.remove("000-345-3443")
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")

