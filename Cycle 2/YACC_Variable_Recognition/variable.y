%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
int yylex();
%}

%token LETTER DIGIT INVALID EOL

%%
start: variable EOL { printf("Valid variable\n"); }
     | error EOL    { printf("Invalid variable\n"); }
     ;

variable: LETTER
        | variable LETTER
        | variable DIGIT
        ;
%%

void yyerror(char *s) { }

int main() {
    printf("Enter variables to validate (one per line):\n");
    yyparse();
    return 0;
}
