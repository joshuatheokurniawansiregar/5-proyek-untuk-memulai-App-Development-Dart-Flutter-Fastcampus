void main() {
  GeneralAccount joshuaGA = GeneralAccount(
      accountName: "Joshua",
      accountId: "1990298",
      accountType: AccountType.general,
      balance: 500000,
      openingDate: DateTime.now());
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
      return balance;
    }
  }

  int deposit(int amount) {
    balance += amount;
    return balance;
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

  int getCurrentBalance() => super.getCurrentBalance();

  int deposit(int amount) {
    if (amount > 500000) {
      int interest = (amount * 0.01).floor();
      balance = balance + amount + interest;
    } else {
      balance += amount;
    }
    return balance;
  }

  @override
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
    return balance;
  }

  int getInterest() {
    int interest = (balance * 0.04).floor();
    balance += interest;
    return balance;
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

  int deposit(int amount) {
    if (amount > 1000000) {
      balance += amount + 25000;
    } else {
      balance += amount;
    }
    return balance;
  }

  int withDraw(int amount) {
    int calculatedTax = (amount * 0.25).floor();
    if (balance < amount + calculatedTax) {
      throw Exception("You don't have enough mony");
    } else {
      balance = balance - (amount + calculatedTax);
    }
    return balance;
  }

  int buyStock(int amount) {
    if (balance < amount) {
      throw Exception("You don't have enough money");
    } else {
      int caluclatedTax = (amount * 0.001).floor();
      balance = balance - (amount + caluclatedTax);
      investedBalance = balance;
      return balance;
    }
  }

  int sellStock(int amount) {
    if (investedBalance < amount) {
      throw Exception("You don't have enough invested balance");
    } else {
      int calculatedTax = (amount * 0.001).floor();
      investedBalance -= amount;
      balance = balance + amount - calculatedTax;
      return balance;
    }
  }
}
