## Details : 
- SRN : PES2UG20CS237
- Name : P K Navin Shrinivas
- Section : D
## Lex file : 
```c
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
```
## Yacc file :
```c
%{
    #include <stdio.h>
    #include<stdlib.h>
    #include<stdbool.h>
    int yylex();
    int yyerror();
%}
%%
%token NUMBER PLUS MINUS MULTIPLY DIVIDE LINEEND LEFTBRACKET RIGHTBRACKET;
%left PLUS MINUS;
%left MULTIPLY DIVIDE;
%start input;
input:exp LINEEND{printf("%d\n",$$);return 0;}
exp:exp PLUS exp {$$=$1+$3;}
   |exp MINUS exp{$$=$1-$3;}
   |exp MULTIPLY exp{$$=$1*$3;}
   |exp DIVIDE exp { if($3==0){printf("Divide by Zero error\n");exit(0);} else $$=$1/$3;}
   |RIGHTBRACKET exp LEFTBRACKET {$$=$2;}
   |NUMBER{$$=$1;};
%%
int yyerror()
{
printf("error");
exit(0);
}
int main() {
  while(true){
   yyparse();
  }
  return 1;
}
```
## Compilation : 
![Image of compilation](CD/lab2/1.png)

## Testing : 
![Image of evaluating expression](CD/lab2/2.png)