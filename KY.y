/*
Implement a parser for a sample language using YACC (FOR loop/SWITCH/IF statements)
EXECUTION:
yacc -d KY.y   (# create y.tab.h, y.tab.c)
lex KY.l (# create lex.yy.c)
gcc -o KY y.tab.c
./KY

*/

%{
#include<stdio.h>
#include<stdlib.h>
// To avoid warning, we include below definitions:
int yylex();
void yyerror(const char *s);
%}

%token FOR NUM OPBR CLBR INC DEC ID SEMIC GE NE LT GT LE EQ EQU HAT EXC
// Operator precedence and associativity:
%right '=' 
%left GE NE LT GT LE EQ  
%left '+' '-'  
%left '*' '/'  
%right '^'   

%%
// RULES SECTION: 

S : ST { printf("\nACCEPTED\n"); exit(0); }

ST : KY HAT Expr1 HAT EXC

Expr1 : ID EQU ID
| ID EQU NUM
| ID RELOP ID
| ID RELOP NUM

RELOP : LT  
| GT  
| EQ  
| LE  
| GE  
| NE 
;

%%

#include"lex.yy.c"  
int main() {   
	yyparse();  
	return yylex();  
}  

void yyerror(const char *s){ printf("\nFAILURE :(\n"); }
int yywrap(){ return 1; }
