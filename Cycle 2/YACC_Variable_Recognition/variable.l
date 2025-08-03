%{
#include <stdio.h>
#include "variable.tab.h"
%}

%%
[a-zA-Z]      { return LETTER; }
[0-9]         { return DIGIT; }
\n            { return EOL; }
.             { return INVALID; }
%%

int yywrap() { return 1; }
