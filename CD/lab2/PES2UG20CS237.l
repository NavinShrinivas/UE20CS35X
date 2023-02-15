%{
#include <stdio.h>
#include "y.tab.h"
extern  yylval;
%}
%%
[0-9]* {yylval = atoi(yytext);return NUMBER;}
"+" {return PLUS;}
"-" {return MINUS;}
"*" {return MULTIPLY;}
"/" {return DIVIDE;}
[)] {return LEFTBRACKET;}
[(] {return RIGHTBRACKET;}
\n {return LINEEND;}
. {;}
%%
int yywrap(void){
   printf("End of file");
   return 1;
}
