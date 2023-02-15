%option noyywrap

%{
	#include <stdio.h>    
	#include "y.tab.h"
	int yylinen = 1;
	extern char* yytext;
%}

%x state

%%

int return INT;
float return FLOAT;
char return CHAR;
double return DOUBLE;
while return WHILE;
bool return BOOL;
if return IF;
else return ELSE;
for return FOR;
do return DO;
#include return INCLUDE;
true return TRUE;
false return FALSE;
main return MAIN;
"==" return EQCOMP;
"!=" return NEQCOMP;
"<=" return LEQCOMP;
">=" return GEQCOMP;
"<" return LCOMP;
">" return GCOMP;
"++" return INC;
"--" return DEC;
"||" return OR;
"&&" return AND;
"!" return NOT;
"(" return LPAREN;
")" return RPAREN;
"{" return LBRACE;
"}" return RBRACE;
"[" return LBRACKET;
"]" return RBRACKET;
";" return SEMICOLON;
"," return COMMA;
[" " | \t] ;
[a-zA-Z0-9_]*".h" return HEADER;
[a-zA-Z_]([a-zA-Z0-9_])* return ID;
"//"(.)* ;
\/\* {yymore(); BEGIN state;}
<state>[' '|\t] {yymore(); BEGIN state;}
<state>[\n] {yymore(); ++yylinen; BEGIN state;}
<state>[^\*] {yymore(); BEGIN state;}
<state>"*"[^/] {yymore(); BEGIN state;}
<state>"*"\/ BEGIN 0 ;
"\n" yylinen++;
[0-9]+ return NUM;
[0-9]*\.[0-9]+ return NUM;
. return *yytext;

%%
