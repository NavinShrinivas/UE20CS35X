%{
#include<stdio.h>
/* int nword=0; */
/* int nchar = 0; */
/* int nline = 0; */
%}
%%
[a-z]([a-zA-Z0-9])* { return ID; }
[0-9]* { return ID; }
%% 
int main(){
   yylex();
   return 0;
}
int yywrap(){
   printf("Reached end of file");
   return 1;
}
