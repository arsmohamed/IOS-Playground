// MARK - Class sectopn - Part 1
class Bank {
    //mutable property
    var accountType : String = ""
    var input = 0
    //Method - welcoming method
    func greetCustomer(){
        print("Welcome to your virtual bank system.")
    }
    //Method - Customer Input
    func CustomerAccountOption(){
        print("What kind of account would like to open?")
        print("1- Debit account")
        print("2- Credit account")
    }
    // Method - user input for bank account type
    func makeAccount (numberPadKey : Int) {
        print("The Selected option is \(numberPadKey)")
        switch numberPadKey {
            case 1:
                accountType = "debit"
            case 2:
                accountType = "credit"
            default:
                print("Invalid input: \(numberPadKey)")
            return
        }
        print("you have opened a \(accountType) account")
    }
}
let virtualBankSystem = Bank()
virtualBankSystem.greetCustomer()
while virtualBankSystem.accountType == "" {
    virtualBankSystem.CustomerAccountOption()
    let randomNumber = Int.random(in: 1...5)
    virtualBankSystem.makeAccount(numberPadKey: randomNumber)
}
// MARK: - struct section - Part 2
struct BankAccount {
    //starting debit balance
    var debitBalance = 0
    //starting credit balance
    var creditBalance = 0
    // operations variable
    var creditLimit = 100
    //computded properties
    var debitBalanceInfo : String { "Debit balance: $ \(debitBalance)" }
    var availableCredit : Int { creditLimit + creditBalance}
    var creditBalanceInfo : String { "Available credit: $ \(availableCredit)"}
    //Methods - it has to be mutating because we are changing in the struct
    mutating func debitDeposit (_ amount : Int) {
        debitBalance += amount
        print("Deposited $ \(amount) . \(debitBalanceInfo)")
    }
    mutating func creditDeposit ( _ amount : Int) {
        creditBalance += amount
        print("credit : $ \(amount) . \(availableCredit)")
        if creditBalance == 0 { print("Paid off credit balance. ") }
        else if creditBalance > 0 { print("Overpaid credit balance. ")}
    }
    // Methods - implement the withfrawal operation
    mutating func debitWithdraw (_ amount : Int) {
        if amount > debitBalance {
            print("Insufficient fund to withdra $ \(amount) . \(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("debit withdra: $ \(amount) . \(debitBalanceInfo)")
        }
    }
    mutating func creditWithdraw (_ amount : Int ){
        if amount > availableCredit {
            print("Insufficient credit to withdraw $ \(amount) . \(creditBalanceInfo)")
        } else {
            creditBalance -= amount
            print("credut wutgdraw: $ \(amount) . \(creditBalanceInfo)")
        }
    }
}
// MARK: - create a bank instance

var bankAccount = BankAccount()
print(bankAccount.debitBalanceInfo)
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
