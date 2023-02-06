%{
#include <stdio.h>
%}

%token ID NL

%%
stmt: exp NL{printf("Valid Idenfifier.\n");exit(0);}
exp:ID;
%%

int yyerror(char *msg)
{
printf("Not a Identifer.\n");
}

void main()
{
printf("Enter the token: "); 
yyparse(); 
}
