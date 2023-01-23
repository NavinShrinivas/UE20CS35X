%{
#include<stdio.h>
int nword=0;
int nchar = 0;
int nline = 0;
%}
%%
([a-zA-Z0-9]) {nchar++;printf("char : %s\n",yytext);}
([a-zA-Z0-9])* {nword++;printf("Word : %s\n",yytext);}
%% 
int main(){
   yylex();
   return 0;
}
int yywrap(){
   printf("Reached end of file");
   return 1;
}
