import 'dart:io'; // Import the dart:io library for input/output

//Interface
abstract class Account {
  String id = "";
  String name = "";
  double balance = 0.0;
  static double interestRate = 0.0;
  static double minBalance = 0.0;

  bool deposit(double amount);
  bool withdraw(double amount);
  double interest();
  void viewBalance();
  void home();
}

//SavingAccount Class implementing Account
class SavingAccount implements Account {
  String id = "";
  String name = "";
  double balance = 0.0;
  static double interestRate = 2.0;
  static double minBalance = 1000;

  //constructor
  SavingAccount(String id, String name, double openingBalance) {
    this.id = id;
    this.name = name;
    this.balance = openingBalance;
  }

  @override
  bool deposit(double amount) {
    if (amount <= 0) return false;
    this.balance += amount;
    return true;
  }

  @override
  bool withdraw(double amount) {
    if (amount <= 0 || this.balance - amount < minBalance) return false;
    this.balance -= amount;
    return true;
  }

  @override
  double interest() {
    return this.balance * interestRate / 100;
  }

  @override
  double viewBalance() {
    return this.balance;
  }

  @override
  void home() {
    print("Welcome to ${this.name}'s Savings Account");
    while (true) {
      print("Press 1 to Deposit");
      print("Press 2 to Withdraw");
      print("Press 3 to View Balance and Interest");
      print("Press 4 to Exit");
      int choice = int.parse(stdin.readLineSync()!);
      bool exit = false;

      switch (choice) {
        case 1:
          print("Enter the amount to deposit:");
          double depositAmount = double.parse(stdin.readLineSync()!);
          if (deposit(depositAmount)) {
            print("Deposit Successful! Your new balance is: ${this.balance}");
          } else {
            print("Invalid deposit amount");
          }
          break;
        case 2:
          print("Enter the amount to withdraw:");
          double withdrawAmount = double.parse(stdin.readLineSync()!);
          if (withdraw(withdrawAmount)) {
            print(
                "Withdrawal Successful! Your new balance is: ${this.balance}");
          } else {
            print("Invalid withdrawal amount or insufficient balance.");
          }
          break;
        case 3:
          print("Your current balance is: ${viewBalance()}");
          print("Your Interest is: ${interest()}");
          break;
        case 4:
          print("Thankyou ${this.name}");
          exit = true;
          break;
        default:
          print("Invalid choice. Please try again.");
      }
      if (exit) break;
    }
  }
}

//CurrentAccount Class implementing Account
class CurrentAccount implements Account {
  String id = "";
  String name = "";
  double balance = 0.0;
  static double interestRate = 1.0; //current account gives no interest at all
  static double minBalance = 10000;

  //constructor
  CurrentAccount(String id, String name, double openingBalance) {
    this.id = id;
    this.name = name;
    this.balance = openingBalance;
  }

  @override
  bool deposit(double amount) {
    if (amount <= 0) return false;
    this.balance += amount;
    return true;
  }

  @override
  bool withdraw(double amount) {
    if (amount <= 0 || this.balance - amount < minBalance) return false;
    this.balance -= amount;
    return true;
  }

  @override
  double interest() {
    print("No Interest for Current Account Users");
    return this.balance * interestRate / 100;
  }

  @override
  double viewBalance() {
    return this.balance;
  }

  @override
  void home() {
    print("Welcome to ${this.name}'s Current Account");
    while (true) {
      print("Press 1 to Deposit");
      print("Press 2 to Withdraw");
      print("Press 3 to View Balance and Interest");
      print("Press 4 to Exit");
      int choice = int.parse(stdin.readLineSync()!);
      bool exit = false;

      switch (choice) {
        case 1:
          print("Enter the amount to deposit:");
          double depositAmount = double.parse(stdin.readLineSync()!);
          if (deposit(depositAmount)) {
            print("Deposit Successful! Your new balance is: ${this.balance}");
          } else {
            print("Invalid deposit amount");
          }
          break;
        case 2:
          print("Enter the amount to withdraw:");
          double withdrawAmount = double.parse(stdin.readLineSync()!);
          if (withdraw(withdrawAmount)) {
            print(
                "Withdrawal Successful! Your new balance is: ${this.balance}");
          } else {
            print("Invalid withdrawal amount or insufficient balance.");
          }
          break;
        case 3:
          print("Your current balance is: ${viewBalance()}");
          print("Your Interest is: ${interest()}");
          break;
        case 4:
          print("Thankyou ${this.name}");
          exit = true;
          break;
        default:
          print("Invalid choice. Please try again.");
      }
      if (exit) break;
    }
  }
}

//Holds all the objects of Current/Saving accounts
class Bank {
  int globalId = 0;
  List<SavingAccount> savingAccounts = [];
  List<CurrentAccount> currentAccounts = [];

  //Add a new saving account to the bank
  void addSavingAccount(String name, double openingBalance) {
    if (openingBalance < SavingAccount.minBalance) {
      print("Min opening balance is ${SavingAccount.minBalance}");
      return;
    }

    this.globalId++;
    SavingAccount acc =
        SavingAccount(globalId.toString(), name, openingBalance);
    savingAccounts.add(acc);
    print("Account added, your id is ${this.globalId}");
  }

  //Add a new current account to the bank
  void addCurrentAccount(String name, double openingBalance) {
    if (openingBalance < CurrentAccount.minBalance) {
      print("Min opening balance is ${CurrentAccount.minBalance}");
      return;
    }

    this.globalId++;
    CurrentAccount acc =
        CurrentAccount(globalId.toString(), name, openingBalance);
    currentAccounts.add(acc);
    print("Account added, your id is ${this.globalId}");
  }

  //Individually checking Lists for account
  void gotoAcc(String Id) {
    for (SavingAccount acc in savingAccounts) {
      if (acc.id == Id) {
        acc.home();
        return;
      }
    }

    for (CurrentAccount acc in currentAccounts) {
      if (acc.id == Id) {
        acc.home();
        return;
      }
    }

    print("Account not found");
  }
}

void main() {
  Bank bank = Bank();
  while (true) {
    print("Welcome to Banking System");
    print("Press 1 to Add a new Saving Account");
    print("Press 2 to Add a new Current Account");
    print("Press 3 to Go to an Existing Account");
    print("Press 4 to Exit");
    int choice = int.parse(stdin.readLineSync()!);
    bool exit = false;

    switch (choice) {
      case 1:
        print("Enter the name:");
        String name = stdin.readLineSync()!;
        print("Enter the opening balance:");
        double openingBalance = double.parse(stdin.readLineSync()!);
        bank.addSavingAccount(name, openingBalance);
        break;
      case 2:
        print("Enter the name:");
        String name2 = stdin.readLineSync()!;
        print("Enter the opening balance:");
        double openingBalance2 = double.parse(stdin.readLineSync()!);
        bank.addCurrentAccount(name2, openingBalance2);
        break;
      case 3:
        print("Enter the Account ID:");
        String accountId = stdin.readLineSync()!;
        bank.gotoAcc(accountId);
        break;
      case 4:
        print("Thank you");
        exit = true;
        break;
      default:
        print("Invalid choice. Please try again.");
    }

    if (exit) break;
  }
}