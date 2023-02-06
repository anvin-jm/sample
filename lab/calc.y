%{
#include <stdio.h>
%}

%token NUMBER NL
%left '+''-'
%left '*''/'

%%
stmt: exp NL{printf("Final Value:%d\n",$1);exit(0);};
exp: exp'+'exp {$$=$1+$3;}
|exp'-'exp {$$=$1-$3;}
|exp'*'exp {$$=$1*$3;}
|exp'/'exp {$$=$1/$3;}
|NUMBER {$$=$1;};
%%

int yyerror(char *msg)
{
printf("Error Und");
}

main()
{
printf("Enter the exp:");
yyparse();
}
