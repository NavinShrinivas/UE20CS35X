## Details : 
> [!info] - Name : P K Navin Shrinivas
> - Section : D 
> - SRN : PES2UG20CS237 

## Lexer : 
```c
%{
    #define YYSTYPE char*
    #include <unistd.h>
    #include "y.tab.h"
    #include <stdio.h>
    extern void yyerror(const char *); // declare the error handling function
%}

/* Regular definitions */
digit	[0-9]
letter	[a-zA-Z]
id	{letter}({letter}|{digit})*
digits	{digit}+
opFraction	(\.{digits})?
opExponent	([Ee][+-]?{digits})?
number	{digits}{opFraction}{opExponent}
%option yylineno

%%
\/\/(.*) ; // ignore comments
[\t\n] ; // ignore whitespaces
"("		{return *yytext;}
")"		{return *yytext;}
"."         	{return *yytext;}
","         	{return *yytext;}
"*"         	{return *yytext;}
"+"         	{return *yytext;}
";"         	{return *yytext;}
"-"         	{return *yytext;}
"/"         	{return *yytext;}
"="         	{return *yytext;}
">"         	{return *yytext;}
"<"         	{return *yytext;}
{number}	{
			yylval = strdup(yytext);  //stores the value of the number to be used later for symbol table insertion
			return T_NUM;
		}
{id}        	{
					yylval = strdup(yytext); //stores the identifier to be used later for symbol table insertion
					return T_ID;
				}
.		{} // anything else => ignore
%%
```
## Yacc : 
```c
%{
	#include "abstract_syntax_tree.c"
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	void yyerror(char* s); 											// error handling function
	int yylex(); 													// declare the function performing lexical analysis
	extern int yylineno; 											// track the line number
%}

%union																// union to allow nodes to store return different datatypes
{
	char* text;
	expression_node* exp_node;
}



%token <text> T_ID T_NUM

%type <exp_node> E T F

/* specify start symbol */
%start START


%%
START : ASSGN	{ 
					printf("Valid syntax\n");
	 				YYACCEPT;										// If program fits the grammar, syntax is valid
	 			}

/* Grammar for assignment */
ASSGN : T_ID '=' E	{
						// displaying the expression tree
                  display_exp_tree($3);
					}
	;

/* Expression Grammar */
E : E '+' T 	{
					// create a new node of the AST and set left and right children appropriately
              expression_node* node = init_exp_node("+",$1,$3);
              $$ = node;
				}
	| E '-' T 	{
					// create a new node of the AST and set left and right children appropriately
              expression_node* node = init_exp_node("-",$1,$3);
              $$ = node;
				}
	| T 	{ $$ = $1; }
	;
	
	
T : T '*' F 	{
					// create a new node of the AST and set left and right children appropriately
              expression_node* node = init_exp_node("*",$1,$3);
              $$ = node;
				}
	| T '/' F 	{
					// create a new node of the AST and set left and right children appropriately
              expression_node* node = init_exp_node("/",$1,$3);
              $$ = node;
				}
	| F {
			//pass AST node to the parent
         $$ =  $1;
		}
	;

F : '(' E ')' { $$ = $2; }
	| T_ID 	{
				// creating a terminal node of the AST
              expression_node* node = init_exp_node($1,NULL,NULL);
              $$ = node;
			}
	| T_NUM 	{
					// creating a terminal node of the AST
              expression_node* node = init_exp_node($1,NULL,NULL);
              $$ = node;
				}
	;

%%


/* error handling function */
void yyerror(char* s)
{
	printf("Error :%s at %d \n",s,yylineno);
}


/* main function - calls the yyparse() function which will in turn drive yylex() as well */
int main(int argc, char* argv[])
{
	yyparse();
	return 0;
}
```
## C file :
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "abstract_syntax_tree.h"

expression_node* init_exp_node(char* val, expression_node* left, expression_node* right)
{
	// function to allocate memory for an AST node and set the left and right children of the nodes
   expression_node* head = (expression_node*)malloc(sizeof(expression_node));
   head -> value = val;
   head -> left = left;
   head -> right = right;
   return head;
}

void display_exp_tree(expression_node* exp_node)
{
	// traversing the AST in preorder and displaying the nodes
   if(exp_node == NULL){
      return;
   }
   printf("%s \n", exp_node->value);
   display_exp_tree(exp_node->left);
   display_exp_tree(exp_node->right);
   return;
}
```
## H file : 
```c
typedef struct expression_node {
  struct expression_node *left;
  struct expression_node *right;
  char *value;
  /*	needs 3 members
                  i) pointer to the left child
                  ii) pointer to the right child
                  iii) string to store the value of the node
  */
} expression_node;

expression_node *init_exp_node(char *val, expression_node *left,
                               expression_node *right);
void display_exp_tree(expression_node *exp_node);
```
## Outputs : 
![[Pasted image 20230308123709.png]]