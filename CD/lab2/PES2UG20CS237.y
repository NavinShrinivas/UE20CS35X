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
