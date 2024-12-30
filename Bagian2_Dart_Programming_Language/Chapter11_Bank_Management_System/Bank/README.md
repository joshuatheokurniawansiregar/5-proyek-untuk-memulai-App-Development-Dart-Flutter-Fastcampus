# Bank Management System

## Problem

### Create three types of bank account:

- General Account
- Savings Account
- Investment Account

### Account Fields

#### All Account

- account name
- account id
- account type
- balance
- opening date
- closing date (nullable)

#### Investment Account

- invested balance

### Capabilies

#### All Account

- deposit
- withdraw
- get current balance

#### Savings Account

- get interest (4%)
- withdraw after 90 days
- deposit amount more than 500000 get 1% interest

#### Investment Account

- buy stock with 0.1% tax
- sell stock with 0.1% tax
- deposit amount more than 1000000 get 25000
- withdraw tax 2.5%
