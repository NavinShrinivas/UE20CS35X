%{
#include<stdio.h>
%}
%%
([a-zA-Z0-9])* {printf("Identifier : %s \n",yytext);}
. {printf("Possibly special chars : %s \n",yytext);}
%% 
int main(){
   yylex();
   return 0;
}
int yywrap(){
   printf("Reached end of file");
   return 1;
}
