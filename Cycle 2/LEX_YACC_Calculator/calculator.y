%{
#include <stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NUMBER
%left '+' '-'
%left '*' '/'

%%
S : E              { printf("Result: %d\n", $1); }
  ;
E : E '+' T        { $$ = $1 + $3; }
  | E '-' T        { $$ = $1 - $3; }
  | T              { $$ = $1; }
  ;
T : T '*' F        { $$ = $1 * $3; }
  | T '/' F        { $$ = $1 / $3; }
  | F              { $$ = $1; }
  ;
F : NUMBER         { $$ = $1; }
  | '(' E ')'      { $$ = $2; }
  ;
%%

void yyerror(char *s) {
    printf("Error: %s\n", s);
}

int main() {
    printf("Enter expressions to calculate:\n");
    yyparse();
    return 0;
}
