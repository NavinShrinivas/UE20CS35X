%{                          
    #include <stdio.h>           /* imports */
    #include <stdlib.h>  
    #include <ctype.h>                            
    int yylex(void);             /* function prototype */
    int yywrap();
%}

%token auto
%token break
%token case
%token char
%token const
%token continue
%token default
%token do
%token double
%token else
%token enum
%token extern
%token float
%token for
%token goto
%token if
%token int
%token long
%token register
%token return
%token short
%token signed
%token sizeof
%token static
%token struct
%token switch
%token typedef
%token union
%token unsigned
%token void
%token volatile
%token while

%% 
start : PRINTF {printf("Print statement detected");}
%% 
int main(){
   while(1) yyparse
}

