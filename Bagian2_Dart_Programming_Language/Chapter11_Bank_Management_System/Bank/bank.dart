void main() {
  GeneralAccount joshuaGA = GeneralAccount(
      accountName: "Joshua",
      accountId: "1990298",
      accountType: AccountType.general,
      balance: 500000,
      openingDate: DateTime.now());

  SavingsAccount joshuaSA = SavingsAccount(
      accountName: "Joshua",
      accountId: "91288927",
      accountType: AccountType.saving,
      balance: 500000,
      openingDate: DateTime(2024, 1, 15));

  InvestmentAccount joshuaIA = InvestmentAccount(
      accountName: "Joshua",
      accountId: "9128328",
      accountType: AccountType.invest,
      balance: 1000000,
      openingDate: DateTime.now(),
      investedBalance: 0);

  // General account
  print("Generelan Account of Joshua");
  print("Account name: ${joshuaGA.accountName}");
  print("Account id ${joshuaGA.accountId}");
  print("Current balance ${joshuaGA.getCurrentBalance()}");
  print("Deposit ${joshuaGA.deposit(500000)}");
  print("Withdraw ${joshuaGA.withDraw(100000)}");
  print(
      "${joshuaGA.accountName}'s current balance(date:${DateTime.now()}) : ${joshuaGA.getCurrentBalance()}");
  print("\n____________________________________\n");
  //Saving account
  print("Saving Account of Joshua");
  print("Account name: ${joshuaSA.accountName}");
  print("Account id ${joshuaSA.accountId}");
  print("Account type ${joshuaSA.accountType.toString()}");
  print("Current balance ${joshuaSA.getCurrentBalance()}");
  print("Deposit ${joshuaSA.deposit(550000)}");
  print("Withdraw ${joshuaSA.withDraw(100000)}");
  print(
      "${joshuaSA.accountName}'s current balance(date:${DateTime.now()}) : ${joshuaSA.getCurrentBalance()}");

  print("\n____________________________________\n");

  // Investment Account
  print("Investment Account of Joshua");
  print("Account name: ${joshuaIA.accountName}");
  print("Account id ${joshuaIA.accountId}");
  print("Account type ${joshuaIA.accountType.toString()}");
  print("Current balance ${joshuaIA.getCurrentBalance()}");
  print("Current invested balance ${joshuaIA.investedBalance}");
  print("Deposit ${joshuaIA.deposit(550000)}");
  print("Withdraw ${joshuaIA.withDraw(100000)}");
  print("Buy stock ${joshuaIA.buyStock(200000)}");

  print(
      "${joshuaIA.accountName}'s current balance(date:${DateTime.now()}) : ${joshuaIA.getCurrentBalance()}");
  print(
      "${joshuaIA.accountName}'s investment current balance(date:${DateTime.now()}) : ${joshuaIA.getInvestedBalance()}");
}

enum AccountType {
  saving,
  invest,
  general,
}

abstract class Account {
  String accountName;
  String accountId;
  AccountType accountType;
  int balance;
  DateTime openingDate;
  DateTime? closingDate;

  Account(
      {required this.accountName,
      required this.accountId,
      required this.accountType,
      required this.balance,
      required this.openingDate,
      this.closingDate});

  int withDraw(int amount) {
    if (balance < amount) {
      throw Exception("WithDrawException: user balance is not enough");
    } else {
      balance -= amount;
    }
    return amount;
  }

  int deposit(int amount) {
    balance += amount;
    return amount;
  }

  int getCurrentBalance() => balance;
}

class GeneralAccount extends Account {
  GeneralAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
  }) : super(
          accountName: accountName,
          accountId: accountId,
          accountType: accountType,
          balance: balance,
          openingDate: openingDate,
          closingDate: closingDate,
        );

  @override
  int withDraw(int amount) => super.withDraw(amount);

  @override
  int deposit(int amount) => super.deposit(amount);

  @override
  int getCurrentBalance() => super.getCurrentBalance();
}

class SavingsAccount extends Account {
  SavingsAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
  }) : super(
          accountName: accountName,
          accountId: accountId,
          accountType: accountType,
          balance: balance,
          openingDate: openingDate,
          closingDate: closingDate,
        );

  @override
  int getCurrentBalance() => super.getCurrentBalance();

  int deposit(int amount) {
    if (amount > 500000) {
      int interest = (amount * 0.01).floor();
      // double interest_double = (amount * 0.01);
      // print("interest double $interest_double");
      balance = balance + amount + interest;
    } else {
      balance += amount;
    }
    return amount;
  }

  int withDraw(int amount) {
    if (DateTime.now().difference(openingDate).inDays < 90) {
      throw Exception("You can withdraw after 90 days");
    } else {
      if (balance < amount) {
        throw Exception("Your balance is not enough");
      } else {
        balance -= amount;
      }
    }
    return amount;
  }

  int getInterest() {
    int interest = (balance * 0.04).floor();
    balance += interest;
    return interest;
  }
}

class InvestmentAccount extends Account {
  int investedBalance;
  InvestmentAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
    required this.investedBalance,
  }) : super(
          accountName: accountName,
          accountId: accountId,
          accountType: accountType,
          balance: balance,
          openingDate: openingDate,
          closingDate: closingDate,
        );

  int getInvestedBalance() => investedBalance;

  @override
  int getCurrentBalance() => super.getCurrentBalance();

  int deposit(int amount) {
    if (amount > 1000000) {
      balance += amount + 25000;
    } else {
      balance += amount;
    }
    return amount;
  }

  int withDraw(int amount) {
    int calculatedTax = (amount * 0.25).floor();
    if (balance < amount + calculatedTax) {
      throw Exception("You don't have enough mony");
    } else {
      balance = balance - (amount + calculatedTax);
    }
    return amount;
  }

  int buyStock(int amount) {
    if (balance < amount) {
      throw Exception("You don't have enough money");
    } else {
      int calculatedTax = (amount * 0.001).floor();
      balance = balance - (amount + calculatedTax);
      investedBalance = balance;
    }
    return amount;
  }

  int sellStock(int amount) {
    if (investedBalance < amount) {
      throw Exception("You don't have enough invested balance");
    } else {
      int calculatedTax = (amount * 0.001).floor();
      investedBalance -= amount;
      balance = balance + amount - calculatedTax;
    }
    return amount;
  }
}
