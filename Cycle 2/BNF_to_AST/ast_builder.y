%{
#include <stdio.h>
#include <stdlib.h>
#include "ast_nodes.h"
ASTNode *root;
%}

%union {
    int value;
    ASTNode *node;
}

%token <value> NUMBER
%token EOL

%type <node> expr term factor

%left '+' '-'
%left '*' '/'

%%
start: expr EOL     { root = $1; printAST(root, 0); }
     ;

expr: expr '+' term { $$ = createOpNode(ADD_NODE, $1, $3); }
    | expr '-' term { $$ = createOpNode(SUB_NODE, $1, $3); }
    | term          { $$ = $1; }
    ;

term: term '*' factor { $$ = createOpNode(MUL_NODE, $1, $3); }
    | term '/' factor { $$ = createOpNode(DIV_NODE, $1, $3); }
    | factor          { $$ = $1; }
    ;

factor: NUMBER      { $$ = createNumNode($1); }
      | '(' expr ')' { $$ = $2; }
      ;
%%

int yyerror(char *s) {
    printf("Error: %s\n", s);
    return 0;
}

int main() {
    printf("Enter expression: ");
    yyparse();
    return 0;
}
