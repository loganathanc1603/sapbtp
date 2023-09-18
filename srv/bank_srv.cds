using { app.bank as bank } from '../db/bank-schema';

service BankService @(path: '/BankProcessor') {

    entity Banks as projection on bank.Banks;
    entity Branches as projection on bank.Branches;

}
