%{
#include "calculator.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+(\.[0-9]+)?  { yylval = atof(yytext); return NUMBER; }
[-+*/()]           { return yytext[0]; }
[ \t\n]            { /* ignore whitespace */ }
.                  { /* ignore other characters */ }
%%

int yywrap() { return 1; }
