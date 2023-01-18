#ifndef FUNCS_HPP_INCLUDED
#define FUNCS_HPP_INCLUDED

void run();

void showMenu();

void showSaldo();

void makeDeposit();

void withdraw();

// Funções relacionadas ao banco de dados

void criaDB();

void criaTabela();

void updateDB(double novoSaldo);

// Funções relacionadas às operações com os valores

void selectSaldo();

void convertSaldo();

typedef int (*sqlite3_callback)(
    void *,  /* Dados fornecidos no 4º argumento do sqlite3_exec() */
    int,     /* The number of columns in row */
    char **, /* An array of strings representing fields in the row */
    char **  /* An array of strings representing column names */
);

#endif // FUNCS_HPP_INCLUDED
