%{
#include <stdio.h>
%}

%%
/* Assuming first four characters are "RAUN" */
[^R]*|R[^A]*|RA[^U]*|RAU[^N]* { printf("Valid - does not contain RAUN\n"); }
.*RAUN.* { printf("Invalid - contains RAUN\n"); }
%%

int main() {
    printf("Enter strings (Ctrl+D to exit):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
