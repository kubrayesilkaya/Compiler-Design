/*
Implement a parser for a sample language using YACC (FOR loop/SWITCH/IF statements)
EXECUTION:
yacc -d KY.y   (# create y.tab.h, y.tab.c)
lex KY.l (# create lex.yy.c)
gcc -o KY y.tab.c
./KY
*/

%{  
	#include"y.tab.h"
	extern int yylval;
%}

%%
 /* RULES SECTION */
"KY" {return KY;}

"=" {return EQU;}
"++" {return INC;}  
"--" {return DEC;}
 /* RELATIONAL OPERATIONS: */
"<=" {return LE;}  
">=" {return GE;}  
">" {return GT;}  
"<" {return LT;}  
"!=" {return NE;}    
"==" {return EQ;}  
 /* --------------------- */
"(" {return OPBR;}
")" {return CLBR;}
";" {return SEMIC;}
"^" {return HAT;}
"!" {return EXC;}
 /* Convert string to integer and store it */
[0-9]+ {yylval=atoi(yytext);return NUM;}
 /* yytext[0] holds the first character of the text matched by the current token */ 
[a-zA-Z]+ {yylval=yytext[0];return ID;} 
%%

/*
OUTPUT:
kpratik@pratik-lenovo:~$ lex KY.l
kpratik@pratik-lenovo:~$ yacc -d KY.y
kpratik@pratik-lenovo:~$ gcc -o KY y.tab.c
kpratik@pratik-lenovo:~$ ./KY
for(a=5;a<10;a++)

GREAT JOB!

*/
