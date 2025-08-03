%{
#include <stdio.h>
#include "ast_builder.tab.h"
%}

%%
[0-9]+          { yylval.value = atoi(yytext); return NUMBER; }
"+"             { return '+'; }
"-"             { return '-'; }
"*"             { return '*'; }
"/"             { return '/'; }
"("             { return '('; }
")"             { return ')'; }
\n              { return EOL; }
[ \t]           { /* ignore whitespace */ }
.               { /* ignore other chars */ }
%%

int yywrap() { return 1; }
