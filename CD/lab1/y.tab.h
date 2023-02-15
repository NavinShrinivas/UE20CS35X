/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INT = 258,                     /* INT  */
    FLOAT = 259,                   /* FLOAT  */
    CHAR = 260,                    /* CHAR  */
    DOUBLE = 261,                  /* DOUBLE  */
    TRUE = 262,                    /* TRUE  */
    FALSE = 263,                   /* FALSE  */
    WHILE = 264,                   /* WHILE  */
    IF = 265,                      /* IF  */
    ELSE = 266,                    /* ELSE  */
    FOR = 267,                     /* FOR  */
    DO = 268,                      /* DO  */
    INCLUDE = 269,                 /* INCLUDE  */
    MAIN = 270,                    /* MAIN  */
    EQCOMP = 271,                  /* EQCOMP  */
    NEQCOMP = 272,                 /* NEQCOMP  */
    LEQCOMP = 273,                 /* LEQCOMP  */
    GEQCOMP = 274,                 /* GEQCOMP  */
    LCOMP = 275,                   /* LCOMP  */
    GCOMP = 276,                   /* GCOMP  */
    INC = 277,                     /* INC  */
    DEC = 278,                     /* DEC  */
    OR = 279,                      /* OR  */
    AND = 280,                     /* AND  */
    NOT = 281,                     /* NOT  */
    LPAREN = 282,                  /* LPAREN  */
    RPAREN = 283,                  /* RPAREN  */
    LBRACE = 284,                  /* LBRACE  */
    RBRACE = 285,                  /* RBRACE  */
    LBRACKET = 286,                /* LBRACKET  */
    RBRACKET = 287,                /* RBRACKET  */
    SEMICOLON = 288,               /* SEMICOLON  */
    COMMA = 289,                   /* COMMA  */
    ID = 290,                      /* ID  */
    NUM = 291,                     /* NUM  */
    HEADER = 292,                  /* HEADER  */
    BOOL = 293                     /* BOOL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define INT 258
#define FLOAT 259
#define CHAR 260
#define DOUBLE 261
#define TRUE 262
#define FALSE 263
#define WHILE 264
#define IF 265
#define ELSE 266
#define FOR 267
#define DO 268
#define INCLUDE 269
#define MAIN 270
#define EQCOMP 271
#define NEQCOMP 272
#define LEQCOMP 273
#define GEQCOMP 274
#define LCOMP 275
#define GCOMP 276
#define INC 277
#define DEC 278
#define OR 279
#define AND 280
#define NOT 281
#define LPAREN 282
#define RPAREN 283
#define LBRACE 284
#define RBRACE 285
#define LBRACKET 286
#define RBRACKET 287
#define SEMICOLON 288
#define COMMA 289
#define ID 290
#define NUM 291
#define HEADER 292
#define BOOL 293

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
