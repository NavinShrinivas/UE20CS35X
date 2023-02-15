%{
	#include "sym_tab.c"
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#define YYSTYPE char*
	/*
		declare variables to help you keep track or store properties
		scope can be default value for this lab(implementation in the next lab)
	*/
   //Self added : 
   int type;
   int size;
   int scope = 1;
   //-----------
	int yyerror(char* s); // error handling function
	int yylex(); // declare the function performing lexical analysis
	extern int yylineno; // track the line number

%}

%token T_INT T_CHAR T_DOUBLE T_WHILE  T_INC T_DEC   T_OROR T_ANDAND T_EQCOMP T_NOTEQUAL T_GREATEREQ T_LESSEREQ T_LEFTSHIFT T_RIGHTSHIFT T_PRINTLN T_STRING  T_FLOAT T_BOOLEAN T_IF T_ELSE T_STRLITERAL T_DO T_INCLUDE T_HEADER T_MAIN T_ID T_NUM

%start START

%nonassoc T_IF
%nonassoc T_ELSE

%%
START : PROG { printf("Valid syntax\n"); YYACCEPT; }	
        ;	
	  
PROG :  MAIN PROG				
	|DECLR ';' PROG 				
	| ASSGN ';' PROG 			
   |
	;

DECLR : TYPE LISTVAR 
	;	


LISTVAR : LISTVAR ',' VAR 
	  | VAR
	  ;

VAR: T_ID '=' EXPR 	{
           insert_symbol($1,size,type,yylineno,scope);
           int temptype = type_check($3);
           int longtype = retrieve_type($1);
           if(longtype != temptype && longtype!=4){
           //I am ingoring float double stores 
              yyerror("Type mistmatch!");
           }
           insert_val($1,$3,yylineno); 
			}
     | T_ID 		{
				/*
                   			check if symbol is in table
                    			if it is then print error for redeclared variable
                    			else make an entry and insert into the table
                    			revert variables to default values:type
                    		*/
               if(check_sym_tab($1) == 1){
                yyerror("Re-declared variable!");
               }else{
                  insert_symbol($1,size,type,yylineno,scope);
               }
			}	 

//assign type here to be returned to the declaration grammar
TYPE : T_INT  { type = INT;size = 2;}
       | T_FLOAT {type = FLOAT;size=4;}
       | T_DOUBLE {type=DOUBLE;size=4;}
       | T_CHAR  {type=CHAR;size=1;}
       ;
    
/* Grammar for assignment */   
ASSGN : T_ID '=' EXPR 	{
				/*
					to be done in lab 3
				*/
            int temptype = type_check($3);
            int longtype = retrieve_type($1);
            if(longtype != temptype && longtype!=4){
            //I am ingoring float double stores 
               yyerror("Type mistmatch!");
            }
           /* if (typetemp != type){ */
           /*  yyerror("Type mismatch"); */
           /* } */
           insert_val($1,$3,yylineno); 
			}
	;

EXPR : EXPR REL_OP E
       | E 
       ;
	   
E : E '+' T 	{ 
         if(type_check($1) == 1 || type_check($3) == 1){
            yyerror("Invalid rel on character type!");
         }
		}
    | E '-' T 	{ 
         if(type_check($1) == 1 || type_check($3) == 1){
            yyerror("Invalid rel on character type!");
         }
		}
    | T //copy value from T to grammar rule E
    ;
	
	
T : T '*' F 	{
         if(type_check($1) == 1 || type_check($3) == 1){
            yyerror("Invalid rel on character type!");
         }
		}
    | T '/' F 	{
         if(type_check($1) == 1 || type_check($3) == 1){
            yyerror("Invalid rel on character type!");
         }
		}
    | F //copy value from F to grammar rule T
    ;

F : '(' EXPR ')'
    | T_ID 	{
            if(check_sym_tab($1)==0){
               yyerror("variable not decalred");
            }
            if(retrieve_val($1)==NULL){
               yyerror("variable not initialised");
            }
		/*
		        check if variable is in table
		        check the value in the variable is default
		        if yes return error for variable not initialised
		        else duplicate value from T_STRLITERAL to F
		        check for type match
		        (secondary type variable used here)
            	*/
               $$ = strdup(retrieve_val($1));
		}
    | T_NUM 	{
               $$ = $1;
    		/*
		        duplicate value from T_NUM to F
		        check for type match
		        (secondary type variable used here)
                */
		}
    | T_STRLITERAL {
               $$ = $1;
            	/*
			duplicate value from T_STRLITERAL to F
			check for type match
			(secondary type variable used here)
            	*/
		}
    ;

REL_OP :   T_LESSEREQ
	   | T_GREATEREQ
	   | '<' 
	   | '>' 
	   | T_EQCOMP
	   | T_NOTEQUAL
	   ;	


/* Grammar for main function */
MAIN : TYPE T_MAIN '(' EMPTY_LISTVAR ')' '{' STMT '}';

EMPTY_LISTVAR : LISTVAR
		|	
		;

STMT : STMT_NO_BLOCK STMT
       | BLOCK STMT
       | {scope++;}
       ;


STMT_NO_BLOCK : DECLR ';'
       | ASSGN ';' 
       ;

BLOCK : '{' STMT '}' {scope--;};

COND : EXPR 
       | ASSGN
       ;

STMT_NO_BLOCK : DECLR ';'
       | ASSGN ';'
       | T_IF '(' COND ')' STMT %prec T_IFX	/* if loop*/
       | T_IF '(' COND ')' STMT T_ELSE STMT	/* if else loop */ 
       ;

%%


/* error handling function */
int yyerror(char* s)
{
	printf("Error :%s at %d \n",s,yylineno);
   return 0;
}


int main(int argc, char* argv[])
{
	/* initialise table here */
   init_table();
	yyparse();
   display_sym_tab();
	/* display final symbol table*/
	return 0;

}

void yywrap(void){
   return;
}
