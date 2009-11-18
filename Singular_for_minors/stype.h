#ifndef STYPE_H
#define STYPE_H
/****************************************
*  Computer Algebra System SINGULAR     *
****************************************/
/* $Id$ */
/*
* ABSTRACT: flex/bison interface
*/

#include "structs.h"
#include "subexpr.h"

typedef union
{
  int       i;
  char    * name;
  sleftv    lv;
} MYYSTYPE;
#define YYSTYPE MYYSTYPE
extern YYSTYPE  yylval;

int yylex(MYYSTYPE *l);

#endif
