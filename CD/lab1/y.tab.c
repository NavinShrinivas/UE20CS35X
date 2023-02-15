/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "PES2UG20CS237.y"

    #include<stdio.h>
    #include<stdlib.h>
    #include "y.tab.h"
    int yylex();
    void yyerror(char *error_stmt);
    extern int yylinen;
    int yyerrok();
    extern char *yytext;

#line 82 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_INT = 3,                        /* INT  */
  YYSYMBOL_FLOAT = 4,                      /* FLOAT  */
  YYSYMBOL_CHAR = 5,                       /* CHAR  */
  YYSYMBOL_DOUBLE = 6,                     /* DOUBLE  */
  YYSYMBOL_TRUE = 7,                       /* TRUE  */
  YYSYMBOL_FALSE = 8,                      /* FALSE  */
  YYSYMBOL_WHILE = 9,                      /* WHILE  */
  YYSYMBOL_IF = 10,                        /* IF  */
  YYSYMBOL_ELSE = 11,                      /* ELSE  */
  YYSYMBOL_FOR = 12,                       /* FOR  */
  YYSYMBOL_DO = 13,                        /* DO  */
  YYSYMBOL_INCLUDE = 14,                   /* INCLUDE  */
  YYSYMBOL_MAIN = 15,                      /* MAIN  */
  YYSYMBOL_EQCOMP = 16,                    /* EQCOMP  */
  YYSYMBOL_NEQCOMP = 17,                   /* NEQCOMP  */
  YYSYMBOL_LEQCOMP = 18,                   /* LEQCOMP  */
  YYSYMBOL_GEQCOMP = 19,                   /* GEQCOMP  */
  YYSYMBOL_LCOMP = 20,                     /* LCOMP  */
  YYSYMBOL_GCOMP = 21,                     /* GCOMP  */
  YYSYMBOL_INC = 22,                       /* INC  */
  YYSYMBOL_DEC = 23,                       /* DEC  */
  YYSYMBOL_OR = 24,                        /* OR  */
  YYSYMBOL_AND = 25,                       /* AND  */
  YYSYMBOL_NOT = 26,                       /* NOT  */
  YYSYMBOL_LPAREN = 27,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 28,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 29,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 30,                    /* RBRACE  */
  YYSYMBOL_LBRACKET = 31,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 32,                  /* RBRACKET  */
  YYSYMBOL_SEMICOLON = 33,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 34,                     /* COMMA  */
  YYSYMBOL_ID = 35,                        /* ID  */
  YYSYMBOL_NUM = 36,                       /* NUM  */
  YYSYMBOL_HEADER = 37,                    /* HEADER  */
  YYSYMBOL_BOOL = 38,                      /* BOOL  */
  YYSYMBOL_39_ = 39,                       /* '='  */
  YYSYMBOL_40_ = 40,                       /* '+'  */
  YYSYMBOL_41_ = 41,                       /* '-'  */
  YYSYMBOL_42_ = 42,                       /* '*'  */
  YYSYMBOL_43_ = 43,                       /* '/'  */
  YYSYMBOL_44_ = 44,                       /* '\''  */
  YYSYMBOL_YYACCEPT = 45,                  /* $accept  */
  YYSYMBOL_Start = 46,                     /* Start  */
  YYSYMBOL_Program = 47,                   /* Program  */
  YYSYMBOL_48_1 = 48,                      /* $@1  */
  YYSYMBOL_Declare = 49,                   /* Declare  */
  YYSYMBOL_Listvar1 = 50,                  /* Listvar1  */
  YYSYMBOL_Listloop = 51,                  /* Listloop  */
  YYSYMBOL_Listvar = 52,                   /* Listvar  */
  YYSYMBOL_Type = 53,                      /* Type  */
  YYSYMBOL_Assign = 54,                    /* Assign  */
  YYSYMBOL_Expr = 55,                      /* Expr  */
  YYSYMBOL_Expr_List = 56,                 /* Expr_List  */
  YYSYMBOL_relop = 57,                     /* relop  */
  YYSYMBOL_E = 58,                         /* E  */
  YYSYMBOL_T = 59,                         /* T  */
  YYSYMBOL_F = 60,                         /* F  */
  YYSYMBOL_UNARY = 61,                     /* UNARY  */
  YYSYMBOL_mainF = 62,                     /* mainF  */
  YYSYMBOL_Empty_ListVar = 63,             /* Empty_ListVar  */
  YYSYMBOL_stmt = 64,                      /* stmt  */
  YYSYMBOL_Single_stmt = 65,               /* Single_stmt  */
  YYSYMBOL_inc_dec = 66,                   /* inc_dec  */
  YYSYMBOL_Block = 67,                     /* Block  */
  YYSYMBOL_WhileL = 68,                    /* WhileL  */
  YYSYMBOL_Cond = 69,                      /* Cond  */
  YYSYMBOL_While2 = 70,                    /* While2  */
  YYSYMBOL_For = 71,                       /* For  */
  YYSYMBOL_For_update = 72,                /* For_update  */
  YYSYMBOL_For_update1 = 73,               /* For_update1  */
  YYSYMBOL_Do_while = 74,                  /* Do_while  */
  YYSYMBOL_Array_with_brackets = 75,       /* Array_with_brackets  */
  YYSYMBOL_Logical_expression = 76         /* Logical_expression  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  44
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   559

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  45
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  105
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  211

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   293


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    44,
       2,     2,    42,    40,     2,    41,     2,    43,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    39,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    13,    13,    15,    16,    17,    18,    19,    20,    21,
      21,    22,    25,    28,    29,    30,    31,    32,    35,    36,
      39,    40,    43,    44,    45,    46,    47,    50,    53,    54,
      57,    58,    59,    62,    63,    64,    65,    66,    67,    70,
      71,    72,    75,    76,    77,    80,    81,    82,    83,    84,
      85,    86,    87,    90,    91,    94,    97,    98,   101,   102,
     103,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   118,   119,   120,   121,   124,   125,   128,   131,   132,
     133,   136,   137,   138,   141,   142,   145,   146,   147,   148,
     151,   152,   153,   154,   157,   158,   161,   162,   165,   166,
     167,   168,   169,   170,   171,   172
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "INT", "FLOAT", "CHAR",
  "DOUBLE", "TRUE", "FALSE", "WHILE", "IF", "ELSE", "FOR", "DO", "INCLUDE",
  "MAIN", "EQCOMP", "NEQCOMP", "LEQCOMP", "GEQCOMP", "LCOMP", "GCOMP",
  "INC", "DEC", "OR", "AND", "NOT", "LPAREN", "RPAREN", "LBRACE", "RBRACE",
  "LBRACKET", "RBRACKET", "SEMICOLON", "COMMA", "ID", "NUM", "HEADER",
  "BOOL", "'='", "'+'", "'-'", "'*'", "'/'", "'\\''", "$accept", "Start",
  "Program", "$@1", "Declare", "Listvar1", "Listloop", "Listvar", "Type",
  "Assign", "Expr", "Expr_List", "relop", "E", "T", "F", "UNARY", "mainF",
  "Empty_ListVar", "stmt", "Single_stmt", "inc_dec", "Block", "WhileL",
  "Cond", "While2", "For", "For_update", "For_update1", "Do_while",
  "Array_with_brackets", "Logical_expression", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-178)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-84)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     207,   -24,  -178,  -178,  -178,  -178,  -178,  -178,     9,    -3,
      -1,   401,    62,  -178,  -178,  -178,  -178,    26,    25,  -178,
      37,   -11,    53,   533,    24,    54,  -178,    57,   207,    61,
      69,  -178,    76,  -178,  -178,    59,   498,    92,  -178,  -178,
     443,   443,  -178,    80,  -178,   207,   102,    56,    98,   207,
     100,   103,  -178,  -178,  -178,  -178,   443,   443,   443,   443,
     443,   443,   443,   443,  -178,  -178,   207,   207,   207,   118,
    -178,  -178,   443,   248,   219,  -178,  -178,   107,    33,  -178,
     108,  -178,  -178,  -178,  -178,  -178,  -178,   219,   219,   219,
      24,    54,    54,  -178,  -178,  -178,  -178,  -178,   207,   181,
    -178,  -178,    59,  -178,   113,   117,  -178,  -178,  -178,    98,
    -178,  -178,   115,   123,  -178,  -178,   417,   121,   128,   132,
     133,   459,   417,   129,   108,   130,   131,   249,   135,   249,
    -178,  -178,  -178,   136,  -178,   494,   494,   111,   157,   161,
     144,  -178,  -178,  -178,  -178,  -178,  -178,  -178,    60,  -178,
     533,   152,  -178,   153,    66,   149,   150,  -178,   155,   159,
     168,  -178,   291,   249,   111,   111,   504,   494,   494,  -178,
    -178,  -178,  -178,   333,   375,  -178,  -178,   504,   533,    85,
     183,   189,   190,   249,   249,   498,   -21,   469,   443,   469,
     191,   192,  -178,  -178,  -178,    -8,     1,   197,   198,   219,
     204,  -178,  -178,   469,   469,   249,   249,  -178,  -178,  -178,
    -178
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,    22,    23,    24,    25,    50,    51,     0,     0,
       0,     0,    48,    49,    26,    53,    54,     0,     0,     2,
       0,     0,     0,     0,    29,    41,    44,     0,     0,     0,
       0,     9,     0,    73,    74,    48,     0,     0,    71,    72,
       0,     0,    47,     0,     1,     0,     0,    16,    19,     0,
      33,    34,    35,    36,    37,    38,     0,     0,     0,     0,
       0,     0,     0,     0,    46,     5,     0,     0,     0,     0,
      45,   105,     0,     0,    27,    52,     7,    57,     0,    17,
       0,    12,     8,   101,   102,   103,   104,    99,    98,   100,
      28,    39,    40,    42,    43,     4,     6,    10,     0,     0,
      33,    34,    97,    21,    56,     0,    14,    15,    13,    19,
       3,    96,     0,     0,    18,    20,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      68,    69,    70,     0,    76,     0,     0,     0,     0,     0,
       0,    63,    61,    55,    58,    62,    59,    64,    48,    79,
      78,     0,    80,     0,     0,     0,    87,    88,     0,     0,
       0,    75,     0,     0,     0,     0,     0,     0,     0,    82,
      81,    77,    65,     0,     0,    89,    86,     0,    32,     0,
       0,     0,     0,     0,     0,    32,     0,     0,     0,     0,
       0,     0,    66,    67,    31,    48,    91,    92,     0,    30,
       0,    95,    94,     0,     0,     0,     0,    90,    93,    84,
      85
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -178,  -178,    14,  -178,    11,   164,   124,  -178,     8,    55,
     -10,    64,  -178,   187,    67,    68,  -178,  -178,  -178,    22,
    -119,     0,  -111,  -178,  -130,  -178,  -178,   -29,  -177,  -178,
     -44,     5
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    18,    19,    68,   123,    48,    81,   104,   124,   125,
      23,   179,    59,    24,    25,    26,    27,    28,   105,   144,
     127,   128,   129,   130,   151,   171,   131,   158,   198,   132,
      42,   133
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      29,    36,   138,    79,    46,    30,   153,   194,    21,    31,
     139,    20,   200,   188,    38,    39,    37,   100,   101,    52,
      53,    54,    55,    40,    47,    44,   207,   208,    29,    32,
      73,    74,    33,    30,    34,   203,    21,   181,   182,    20,
     106,   107,    65,   169,   173,    29,    87,    88,    89,    29,
      30,   170,   174,    21,    30,    22,    20,    21,   111,    76,
      20,    43,    99,    82,    60,    61,    29,    29,    29,   108,
      45,    30,    30,    30,    21,    21,    21,    20,    20,    20,
      95,    96,    97,    22,    38,    39,    49,    40,    38,    39,
      40,    40,    64,    40,    66,    78,    62,    63,    29,    41,
      22,    41,    67,    30,    22,    41,    21,    83,    84,    20,
      85,    86,   110,    69,     2,     3,     4,     5,   187,   188,
      71,    22,    22,    22,    75,   150,   150,    91,    92,    77,
      93,    94,    80,     9,    10,   175,   176,   157,   126,    98,
     152,   152,   103,    47,   140,   113,   154,   112,   155,    14,
     115,   146,   116,    22,   134,   135,   178,   150,   150,   136,
     137,   143,   141,   142,   157,   157,   159,   185,   145,   147,
     160,   180,   152,   152,   161,   155,   155,   196,   199,   196,
     162,   163,    37,   164,   165,   172,   167,   197,   166,   197,
     149,   149,   156,   196,   196,   168,   146,   100,   101,    52,
      53,    54,    55,   197,   197,   192,   193,   -11,     1,    70,
       2,     3,     4,     5,     6,     7,   189,   190,   191,   156,
     156,     8,   149,   149,   201,   202,   205,   209,   210,     9,
      10,   204,   206,   114,    11,   100,   101,    52,    53,    54,
      55,   186,    12,    13,   109,    14,    90,    15,    16,     0,
     117,    17,     2,     3,     4,     5,     6,     7,   118,   119,
     -60,   120,   121,     0,   100,   101,    52,    53,    54,    55,
       0,     9,    10,     0,     0,     0,    11,     0,   122,   -60,
     102,     0,     0,     0,    12,    13,     0,    14,     0,    15,
      16,     0,   117,    17,     2,     3,     4,     5,     6,     7,
     118,   119,   -83,   120,   121,     0,     0,     0,     0,     0,
       0,     0,     0,     9,    10,     0,     0,     0,    11,     0,
     122,   -83,     0,     0,     0,     0,    12,    13,     0,    14,
       0,    15,    16,     0,   117,    17,     2,     3,     4,     5,
       6,     7,   118,   119,   183,   120,   121,     0,     0,     0,
       0,     0,     0,     0,     0,     9,    10,     0,     0,     0,
      11,     0,   122,   -60,     0,     0,     0,     0,    12,    13,
       0,    14,     0,    15,    16,     0,   117,    17,     2,     3,
       4,     5,     6,     7,   118,   119,   184,   120,   121,     0,
       0,     0,     0,     0,     0,     0,     0,     9,    10,     0,
       0,     0,    11,     0,   122,   -60,     0,     0,     6,     7,
      12,    13,     0,    14,     0,    15,    16,     0,   117,    17,
       2,     3,     4,     5,     6,     7,   118,   119,    11,   120,
     121,     0,     0,     0,     0,     0,    35,    13,     0,     9,
      10,    15,    16,     0,    11,    17,   122,   -60,     0,     0,
       6,     7,    12,    13,     0,    14,     0,    15,    16,     0,
     117,    17,     2,     3,     4,     5,     6,     7,   118,   119,
      72,   120,   121,     0,     0,     0,     6,     7,    35,    13,
       0,     9,    10,    15,    16,     0,    11,    17,   122,     0,
       0,     9,    10,     0,    12,    13,    72,    14,     0,    15,
      16,     6,     7,    17,   195,    13,     0,     0,     0,    15,
      16,     6,     7,    17,    50,    51,    52,    53,    54,    55,
       0,    11,    56,    57,    58,     0,    70,     0,     0,   148,
      13,   177,     0,     0,    15,    16,     0,     0,    17,    35,
      13,     0,     0,     0,    15,    16,     0,     0,    17,    50,
      51,    52,    53,    54,    55,     0,     0,    56,    57,    58
};

static const yytype_int16 yycheck[] =
{
       0,    11,   121,    47,    15,     0,   136,    28,     0,    33,
     121,     0,   189,    34,    22,    23,    11,    16,    17,    18,
      19,    20,    21,    31,    35,     0,   203,   204,    28,    20,
      40,    41,    35,    28,    35,    34,    28,   167,   168,    28,
       7,     8,    28,   162,   163,    45,    56,    57,    58,    49,
      45,   162,   163,    45,    49,     0,    45,    49,   102,    45,
      49,    35,    72,    49,    40,    41,    66,    67,    68,    36,
      33,    66,    67,    68,    66,    67,    68,    66,    67,    68,
      66,    67,    68,    28,    22,    23,    33,    31,    22,    23,
      31,    31,    35,    31,    33,    39,    42,    43,    98,    39,
      45,    39,    33,    98,    49,    39,    98,     7,     8,    98,
       7,     8,    98,    37,     3,     4,     5,     6,    33,    34,
      28,    66,    67,    68,    44,   135,   136,    60,    61,    27,
      62,    63,    34,    22,    23,   164,   165,   137,   116,    21,
     135,   136,    35,    35,   122,    28,    35,    34,   137,    38,
      35,   129,    29,    98,    33,    27,   166,   167,   168,    27,
      27,    30,    33,    33,   164,   165,     9,   177,    33,    33,
       9,   166,   167,   168,    30,   164,   165,   187,   188,   189,
      28,    28,   177,    34,    34,   163,    27,   187,    33,   189,
     135,   136,   137,   203,   204,    27,   174,    16,    17,    18,
      19,    20,    21,   203,   204,   183,   184,     0,     1,    28,
       3,     4,     5,     6,     7,     8,    33,    28,    28,   164,
     165,    14,   167,   168,    33,    33,    28,   205,   206,    22,
      23,    34,    28,   109,    27,    16,    17,    18,    19,    20,
      21,   177,    35,    36,    80,    38,    59,    40,    41,    -1,
       1,    44,     3,     4,     5,     6,     7,     8,     9,    10,
      11,    12,    13,    -1,    16,    17,    18,    19,    20,    21,
      -1,    22,    23,    -1,    -1,    -1,    27,    -1,    29,    30,
      32,    -1,    -1,    -1,    35,    36,    -1,    38,    -1,    40,
      41,    -1,     1,    44,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    22,    23,    -1,    -1,    -1,    27,    -1,
      29,    30,    -1,    -1,    -1,    -1,    35,    36,    -1,    38,
      -1,    40,    41,    -1,     1,    44,     3,     4,     5,     6,
       7,     8,     9,    10,    11,    12,    13,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    22,    23,    -1,    -1,    -1,
      27,    -1,    29,    30,    -1,    -1,    -1,    -1,    35,    36,
      -1,    38,    -1,    40,    41,    -1,     1,    44,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    22,    23,    -1,
      -1,    -1,    27,    -1,    29,    30,    -1,    -1,     7,     8,
      35,    36,    -1,    38,    -1,    40,    41,    -1,     1,    44,
       3,     4,     5,     6,     7,     8,     9,    10,    27,    12,
      13,    -1,    -1,    -1,    -1,    -1,    35,    36,    -1,    22,
      23,    40,    41,    -1,    27,    44,    29,    30,    -1,    -1,
       7,     8,    35,    36,    -1,    38,    -1,    40,    41,    -1,
       1,    44,     3,     4,     5,     6,     7,     8,     9,    10,
      27,    12,    13,    -1,    -1,    -1,     7,     8,    35,    36,
      -1,    22,    23,    40,    41,    -1,    27,    44,    29,    -1,
      -1,    22,    23,    -1,    35,    36,    27,    38,    -1,    40,
      41,     7,     8,    44,    35,    36,    -1,    -1,    -1,    40,
      41,     7,     8,    44,    16,    17,    18,    19,    20,    21,
      -1,    27,    24,    25,    26,    -1,    28,    -1,    -1,    35,
      36,    27,    -1,    -1,    40,    41,    -1,    -1,    44,    35,
      36,    -1,    -1,    -1,    40,    41,    -1,    -1,    44,    16,
      17,    18,    19,    20,    21,    -1,    -1,    24,    25,    26
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     1,     3,     4,     5,     6,     7,     8,    14,    22,
      23,    27,    35,    36,    38,    40,    41,    44,    46,    47,
      49,    53,    54,    55,    58,    59,    60,    61,    62,    66,
      76,    33,    20,    35,    35,    35,    55,    76,    22,    23,
      31,    39,    75,    35,     0,    33,    15,    35,    50,    33,
      16,    17,    18,    19,    20,    21,    24,    25,    26,    57,
      40,    41,    42,    43,    35,    47,    33,    33,    48,    37,
      28,    28,    27,    55,    55,    44,    47,    27,    39,    75,
      34,    51,    47,     7,     8,     7,     8,    55,    55,    55,
      58,    59,    59,    60,    60,    47,    47,    47,    21,    55,
      16,    17,    32,    35,    52,    63,     7,     8,    36,    50,
      47,    75,    34,    28,    51,    35,    29,     1,     9,    10,
      12,    13,    29,    49,    53,    54,    64,    65,    66,    67,
      68,    71,    74,    76,    33,    27,    27,    27,    65,    67,
      64,    33,    33,    30,    64,    33,    64,    33,    35,    54,
      55,    69,    76,    69,    35,    49,    54,    66,    72,     9,
       9,    30,    28,    28,    34,    34,    33,    27,    27,    65,
      67,    70,    64,    65,    67,    72,    72,    27,    55,    56,
      76,    69,    69,    11,    11,    55,    56,    33,    34,    33,
      28,    28,    64,    64,    28,    35,    55,    66,    73,    55,
      73,    33,    33,    34,    34,    28,    28,    73,    73,    64,
      64
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    45,    46,    47,    47,    47,    47,    47,    47,    48,
      47,    47,    49,    50,    50,    50,    50,    50,    51,    51,
      52,    52,    53,    53,    53,    53,    53,    54,    55,    55,
      56,    56,    56,    57,    57,    57,    57,    57,    57,    58,
      58,    58,    59,    59,    59,    60,    60,    60,    60,    60,
      60,    60,    60,    61,    61,    62,    63,    63,    64,    64,
      64,    65,    65,    65,    65,    65,    65,    65,    65,    65,
      65,    66,    66,    66,    66,    67,    67,    68,    69,    69,
      69,    70,    70,    70,    71,    71,    72,    72,    72,    72,
      73,    73,    73,    73,    74,    74,    75,    75,    76,    76,
      76,    76,    76,    76,    76,    76
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     5,     3,     2,     3,     3,     3,     0,
       4,     0,     3,     3,     3,     3,     1,     2,     3,     0,
       3,     1,     1,     1,     1,     1,     1,     3,     3,     1,
       3,     3,     1,     1,     1,     1,     1,     1,     1,     3,
       3,     1,     3,     3,     1,     3,     2,     2,     1,     1,
       1,     1,     3,     1,     1,     8,     1,     0,     2,     2,
       0,     2,     2,     2,     2,     5,     7,     7,     1,     1,
       1,     2,     2,     2,     2,     3,     2,     5,     1,     1,
       1,     1,     1,     0,     9,     9,     3,     1,     1,     3,
       3,     1,     1,     3,     7,     7,     4,     3,     3,     3,
       3,     3,     3,     3,     3,     3
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Start: Program  */
#line 13 "PES2UG20CS237.y"
                {printf("\nValid syntax\n"); YYACCEPT;}
#line 1469 "y.tab.c"
    break;

  case 9: /* $@1: %empty  */
#line 21 "PES2UG20CS237.y"
                          {yyerrok; yyclearin;}
#line 1475 "y.tab.c"
    break;

  case 76: /* Block: error SEMICOLON  */
#line 125 "PES2UG20CS237.y"
                        {yyerrok; yyclearin;}
#line 1481 "y.tab.c"
    break;


#line 1485 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 174 "PES2UG20CS237.y"


void yyerror(char *error_stmt)
{
    printf("Error: %s, line number: %d, token: %s\n", error_stmt, yylinen, yytext);
}
int main()
{
	yyparse();
}
